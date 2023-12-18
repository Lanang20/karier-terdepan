from django.contrib.auth.models import AbstractUser
from django.db import models

class User(AbstractUser):
    jenis_kelamin = models.CharField(max_length=20, choices=[('Laki-laki', 'Laki-laki'), ('Perempuan', 'Perempuan')])
    tanggal_lahir = models.DateField()
    asal_sekolah = models.CharField(max_length=255)
    no_hp = models.CharField(max_length=15)

    REQUIRED_FIELDS = ['tanggal_lahir']

    def save(self, *args, **kwargs):
        # Enkripsi password hanya jika password berubah
        super().save(*args, **kwargs)

    def __str__(self):
        return self.username


class Tes(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE, related_name='tes_set')
    tanggal_tes = models.DateTimeField()

class JawabanMinat(models.Model):
    tes = models.ForeignKey(Tes, on_delete=models.CASCADE)
    id_soal = models.ForeignKey('SoalMinat', on_delete=models.CASCADE)
    jawaban = models.CharField(max_length=10)

class SoalMinat(models.Model):
    soal = models.TextField()
    pilihan_a = models.TextField()
    pilihan_b = models.TextField()
    pilihan_c = models.TextField()
    pilihan_d = models.TextField()
    pilihan_e = models.TextField()
    pilihan_f = models.TextField()
    minat_a = models.ForeignKey('Minat', related_name='minat_a_soal', on_delete=models.CASCADE)
    minat_b = models.ForeignKey('Minat', related_name='minat_b_soal', on_delete=models.CASCADE)
    minat_c = models.ForeignKey('Minat', related_name='minat_c_soal', on_delete=models.CASCADE)
    minat_d = models.ForeignKey('Minat', related_name='minat_d_soal', on_delete=models.CASCADE)
    minat_e = models.ForeignKey('Minat', related_name='minat_e_soal', on_delete=models.CASCADE)
    minat_f = models.ForeignKey('Minat', related_name='minat_f_soal', on_delete=models.CASCADE)

class Minat(models.Model):
    nama = models.CharField(max_length=255)
    deskripsi = models.TextField()

class Jurusan(models.Model):
    nama_jurusan = models.CharField(max_length=255)
    deskripsi = models.TextField()
    prospek_kerja = models.TextField()
    minat = models.ForeignKey(Minat, on_delete=models.CASCADE)

class Penjurusan(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE, related_name='penjurusan_set')
    tes = models.ForeignKey(Tes, on_delete=models.CASCADE)
    minat = models.ForeignKey(Minat, on_delete=models.CASCADE)
    jurusan = models.TextField()

    def tanggal_tes(self):
        return self.tes.tanggal_tes