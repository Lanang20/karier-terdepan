from django.shortcuts import render, redirect
from django.contrib.auth import authenticate, login, logout, update_session_auth_hash
from django.contrib.auth.decorators import login_required
from django.http import HttpResponse, HttpResponseRedirect, HttpResponseBadRequest
from .models import User, Jurusan, SoalMinat, JawabanMinat, Minat, Tes, Penjurusan
from django.contrib import messages
from django.urls import reverse
from django.core.mail import send_mail
from datetime import datetime
from django.template.loader import get_template
import json
from xhtml2pdf import pisa


# Create your views here.
def user_authenticated(user):
    return user.is_authenticated

def index(request):
    return render(request, 'index.html')

def login_view(request):
    msg = None
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']
        user = authenticate(request, username=username, password=password)
        if user is not None:
            login(request, user)
            return redirect('dashboard')
        else:
            msg = "Username atau Password salah"
    return render(request, 'index.html', {'msg': msg})

@login_required
def dashboard(request):
    # Mengambil data statistik
    total_pengguna = User.objects.count()
    total_tes = Tes.objects.count()
    total_jurusan = Jurusan.objects.count()
    total_soal = SoalMinat.objects.count()

    # Mengambil 5 pengguna terbaru
    pengguna_terbaru = User.objects.order_by('-date_joined')[:9]

    user = User.objects.get(username=request.user.username)

    # Menghitung jawaban per minat
    realistic_count = JawabanMinat.objects.filter(tes__user=user, jawaban=1).count()
    investigative_count = JawabanMinat.objects.filter(tes__user=user, jawaban=2).count()
    artistic_count = JawabanMinat.objects.filter(tes__user=user, jawaban=3).count()
    social_count = JawabanMinat.objects.filter(tes__user=user, jawaban=4).count()
    enterprising_count = JawabanMinat.objects.filter(tes__user=user, jawaban=5).count()
    conventional_count = JawabanMinat.objects.filter(tes__user=user, jawaban=6).count()

    context = {
        'total_pengguna': total_pengguna,
        'total_tes': total_tes,
        'total_jurusan': total_jurusan,
        'total_soal': total_soal,
        'pengguna_terbaru': pengguna_terbaru,
        'user': user,
        'realistic_count': realistic_count,
        'investigative_count': investigative_count,
        'artistic_count': artistic_count,
        'social_count': social_count,
        'enterprising_count': enterprising_count,
        'conventional_count': conventional_count,
    }

    return render(request, 'dashboard.html', context)

def daftar(request):
    if request.method == 'POST':
        # Ambil data dari formulir pendaftaran
        username = request.POST['username']
        password = request.POST['password']
        nama = request.POST['nama']
        jenis_kelamin = request.POST['jenis_kelamin']
        tanggal_lahir = request.POST['tanggal_lahir']
        asal_sekolah = request.POST['asal_sekolah']
        no_hp = request.POST['no_hp']
        email = request.POST['email']

        # Cek apakah username sudah digunakan
        if User.objects.filter(username=username).exists():
            # Tampilkan SweetAlert jika username sudah digunakan
            response_data = {
                'width': 600,
                'title': 'Username Tidak Tersedia',
                'text': 'Username sudah digunakan. Silahkan pilih username lain.',
                'icon': 'error',
                'confirmButtonColor': "#3843D6",
            }
            return HttpResponse(json.dumps(response_data), content_type='application/json')

        # Buat objek pengguna baru
        user = User.objects.create_user(username=username, password=password, 
                                        first_name=nama, jenis_kelamin=jenis_kelamin, 
                                        tanggal_lahir=tanggal_lahir, asal_sekolah=asal_sekolah, 
                                        no_hp=no_hp, email=email)

        # Tampilkan SweetAlert jika pendaftaran berhasil
        response_data = {
            'width': 600,
            'title': 'Pendaftaran Berhasil',
            'text': 'Silahkan login untuk melanjutkan.',
            'icon': 'success',
            'confirmButtonColor': "#3843D6",
        }
        return HttpResponse(json.dumps(response_data), content_type='application/json')

    return render(request, 'daftar.html')

@login_required
def profile_view(request):
    user = request.user
    return render(request, 'profile.html', {'user': user})

@login_required
def edit_profile(request):
    if request.method == 'POST':
        user = request.user
        user.first_name = request.POST.get('first_name')
        user.jenis_kelamin = request.POST.get('jenis_kelamin')
        user.tanggal_lahir = request.POST.get('tanggal_lahir')
        user.asal_sekolah = request.POST.get('asal_sekolah')
        user.username = request.POST.get('username')
        user.email = request.POST.get('email')
        user.no_hp = request.POST.get('no_hp')
        
        # Mengelola password
        password = request.POST.get('password')
        if password:
            user.set_password(password)
            # Perbarui sesi autentikasi setelah mengubah password
            update_session_auth_hash(request, user)
        user.save()
        
        messages.success(request, 'Profil berhasil diperbarui.')
        return HttpResponseRedirect(reverse('profile_view'))

def send_contact_email(request):
    if request.method == 'POST':
        # Ambil data dari formulir kontak
        name = request.POST.get('name')
        email = request.POST.get('email')
        message = request.POST.get('message')

        # Kirim email
        send_mail(
            'Subject: New Contact Form Submission',
            f'Name: {name}\nEmail: {email}\n\nMessage: {message}',
            email,  # Email pengirim
            ['pangestuwicaksono891@gmail.com'],  # Email penerima
            fail_silently=False,
        )

        return HttpResponseRedirect(reverse('thankyou_view'))

@login_required    
def jurusan_view(request):
    return render(request,'jurusan.html', {
        'jurusan': Jurusan.objects.all().order_by('nama_jurusan'),
    })

@login_required
def tes(request):
    return render(request, 'tes.html')

@login_required
def mulai_tes(request):
    if request.method == 'GET':
        tes = Tes.objects.create(user=request.user, tanggal_tes=datetime.now())
        pertanyaan_list = SoalMinat.objects.all()
        total_soal = pertanyaan_list.count()
        current_question = pertanyaan_list.first()

        request.session['tes_id'] = tes.id
        request.session['current_question_id'] = current_question.id
        
        return render(request, 'mulai_tes.html', {'current_question': current_question, 'total_soal': total_soal})

    elif request.method == 'POST':
        jawaban = request.POST.get('answer')
        id_soal = request.POST.get('id_soal')
        tes_id = request.session.get('tes_id')

        JawabanMinat.objects.create(tes_id=tes_id, id_soal_id=id_soal, jawaban=jawaban)

        current_question_id = request.session.get('current_question_id', 1)
        next_question = SoalMinat.objects.filter(id__gt=current_question_id).first()

        if not next_question:
            return redirect('selesai_tes')

        request.session['current_question_id'] = next_question.id

        return render(request, 'mulai_tes.html', {'current_question': next_question})

@login_required
def hasil_tes(request):
    if request.method == 'GET':
        user = request.user
        tes_terakhir = Tes.objects.filter(user=user).order_by('-tanggal_tes').first()

        if tes_terakhir:
            jawaban_minat = JawabanMinat.objects.filter(tes=tes_terakhir)

            # Mendapatkan aspek minat berdasarkan jawaban pengguna
            minat_terpilih = get_minat_terpilih(jawaban_minat)

            if minat_terpilih:
                # Mencari semua jurusan berdasarkan aspek minat terpilih
                jurusan_list = Jurusan.objects.filter(minat=minat_terpilih)

                # Simpan hasil tes ke dalam tabel Penjurusan
                penjurusan = Penjurusan.objects.create(
                    user=user,
                    tes=tes_terakhir,
                    minat=minat_terpilih,
                    jurusan=", ".join(jurusan.nama_jurusan for jurusan in jurusan_list)
                )

                return render(request, 'hasil_tes.html', {'aspek_terpilih': minat_terpilih, 'jurusan_list': jurusan_list, 'tes_terakhir': tes_terakhir})

            else:
                messages.warning(request, 'Belum ada tes yang dilakukan.')
                return redirect('tes')

    return HttpResponseBadRequest("Metode HTTP tidak valid.")

def get_minat_terpilih(jawaban_minat):
    # Membuat kamus untuk menghitung jumlah jawaban untuk setiap aspek minat
    minat_count = {}

    # Menghitung jumlah jawaban untuk setiap aspek minat
    for jawaban in jawaban_minat:
        minat_id = jawaban.jawaban
        if minat_id in minat_count:
            minat_count[minat_id] += 1
        else:
            minat_count[minat_id] = 1

    # Mendapatkan ID minat terpilih berdasarkan jumlah jawaban terbanyak
    minat_terpilih_id = max(minat_count, key=minat_count.get)

    # Mendapatkan objek Minat sesuai dengan ID minat terpilih
    minat_terpilih = Minat.objects.get(id=minat_terpilih_id)

    return minat_terpilih

def generatePDF(request):
    template_path = 'cetak_pdf.html'
    context = {'jurusan': Penjurusan.objects.filter(user=request.user).order_by('-tes__tanggal_tes').first()}
    
    # Render the template
    template = get_template(template_path)
    html_content = template.render(context, request)

    # Create a PDF response
    response = HttpResponse(content_type='application/pdf')
    response['Content-Disposition'] = 'attachment; filename="HasilTes_KarierTerdepan.pdf"'

    # Generate PDF
    pisa_status = pisa.CreatePDF(html_content, dest=response)

    if pisa_status.err:
        return HttpResponse('We had some errors with code %s <pre>%s</pre>' % (pisa_status.err, html_content))

    return response

@login_required
def selesai_tes(request):
    return render(request, 'selesai_tes.html')

@login_required
def konsultasi(request):
    return render(request, 'konsultasi.html')

@login_required
def logout_view(request):
    return render(request, 'logout.html')

def thankyou_view(request):
    return render(request, 'thankyou.html')

def logout_session(request):
    logout(request)
    return redirect('index')