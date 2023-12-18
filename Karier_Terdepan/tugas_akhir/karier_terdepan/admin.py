from django.contrib import admin
from .models import User, Tes, JawabanMinat, SoalMinat, Minat, Jurusan

class UserAdmin(admin.ModelAdmin):
    list_display = ('id', 'username', 'email', 'jenis_kelamin', 'tanggal_lahir', 'asal_sekolah', 'no_hp')

class TesAdmin(admin.ModelAdmin):
    list_display = ('id', 'user', 'tanggal_tes')

class JawabanMinatAdmin(admin.ModelAdmin):
    list_display = ('id', 'get_tes_id', 'id_soal', 'jawaban')

    def get_tes_id(self, obj):
        return obj.id_tes.id
    get_tes_id.short_description = 'ID Tes'

class SoalMinatAdmin(admin.ModelAdmin):
    list_display = ('id', 'soal', 'pilihan_a', 'pilihan_b', 'pilihan_c', 'pilihan_d', 'pilihan_e', 'pilihan_f', 'minat_a', 'minat_b', 'minat_c', 'minat_d', 'minat_e', 'minat_f')

class MinatAdmin(admin.ModelAdmin):
    list_display = ('id', 'nama', 'deskripsi')

class JurusanAdmin(admin.ModelAdmin):
    list_display = ('id', 'nama_jurusan', 'deskripsi', 'prospek_kerja', 'minat')

# Daftarkan kelas admin Anda di sini
admin.site.register(User, UserAdmin)
admin.site.register(Tes, TesAdmin)
admin.site.register(JawabanMinat, JawabanMinatAdmin)
admin.site.register(SoalMinat, SoalMinatAdmin)
admin.site.register(Minat, MinatAdmin)
admin.site.register(Jurusan, JurusanAdmin)