from datetime import date,datetime,timedelta
import mysql.connector

F_Error = mysql.connector.Error


##fungsi login
def Login(user,pwd):
    try:
        cnx = mysql.connector.connect(user=user,password=pwd,database='perbankan') #Membuat koneksi ke database dan koneksi disimpan dalam variabel cnx
        cursor = cnx.cursor()       #Membuat kursor, cnx dan cursor akan digunakan sebagai argumen masukan karena variabel kursor tidak di definisikan secara global
        HalamanAwal(cnx, cursor)    #Memanggil Fungsi selanjutnya
    except F_Error as error:
        print "Password atau Username Salah"    #Baris yang akan dieksekusi-
        print "Errornya di: ",error             #-jika ada kesalahan


##fungsi HalamanAwal yang berisi menu-menu operasi tabel transaksi
def HalamanAwal(cnx,cursor):                            #fungsi HalamanAwal menggunakan 2 parameter masukan
    x = True                        #Variabel ini digunakan untuk pengulangan dan eksekusi menu
    print "Selamat Datang".center(80,"+")       #String menu awal
    print "| Pilihan Operasi untuk Tabel Transaksi:\
    \n| 1. Tampilkan Data Tabel\
    \n| 2. Tambahkan Data ke Tabel\
    \n| 3. Perbarui Data\
    \n| 4. Hapus Data\
    \n| 0. Keluar"                  #String menu awal
    while (x!=0):                   #Deklarasi pengulangan dengan x!=0 sebagai acuan kondisi false
        x = input("| Masukan Pilihan\t: ")
        if (x == 1):
            QuerySelect(cursor)     #Jika x diisi 1 maka selanjutnya akan mengeksekusi fungsi QuerySelect
        elif(x == 2):
            QueryInsert(cnx,cursor) #Jika x diisi 2 maka selanjutnya akan mengeksekusi fungsi QueryInsert
        elif(x == 3):
            QueryUpdate(cnx,cursor) #Jika x diisi 3 maka selanjutnya akan mengeksekusi fungsi QueryUpdate
        elif(x == 4):
            QueryDelete(cnx,cursor) #Jika x diisi 4 maka selanjutnya akan mengeksekusi fungsi QueryDelete
        else:
            cursor.close()          #Jika x diisi 0 atau yang lain selain 1-4 maka program ini akan keluar
            cnx.close()
            exit()

##fungsi QuerySelect untuk melakukan query select
def QuerySelect(cursor):            #QuerySelect menggunakan 1 parameter, cursor
    query_select = ("""SELECT id_nasabahFK,jenis_transaksi,tanggal,jumlah
                FROM transaksi""")
    cursor.execute(query_select)    #Proses eksekusi query database pada python-
    print "+","-"*61,"+"            #-Hasil query dimasukan kedalam cursor
    print "| ID Nasabah\t| Transaksi\t| Tanggal\t| Jumlah\t|"
    print "+","-"*61,"+"
    for (id_nasabahFK,jenis_transaksi,tanggal,jumlah) in cursor: #Mengambil data hasil query dari dalam kursor
        print "|",id_nasabahFK,"\t\t|",jenis_transaksi,"\t|","{:%d-%b-%Y}".format(tanggal),"\t|",jumlah,"\t|"
    print "+","-"*61,"+"
##fungsi QueryInsert untuk melakukan query insert
def QueryInsert(cnx,cursor):
    query_insert = ("INSERT INTO transaksi"
                    "(id_nasabahFK,no_rekeningFK,jenis_transaksi,tanggal,jumlah)"
                    "VALUES (%s,%s,%s,%s,%s)") 
    data_insert = TambahData()      #memanggil fungsi tambah data untuk membuat query data transaksi
    try:
        cursor.execute(query_insert,data_insert)
        cnx.commit()
    except F_Error as error:                    #Baris yang dieksekusi jika ada kesalahan
        print("Error: {}".format(error))        #Menampilkan pesan error seperti pada error yang ada di MySQL
    
##fungsi QueryUpdate untuk melakukan query update
def QueryUpdate(cnx,cursor):                                                #QueryUpdate menggunakan 2 parameter, cursor dan cnx(koneksi)
    print "| Masukan Kolom yang akan diubah:"                               
    setter = raw_input("| Masukan Kolom\t: ")                               #input kolom yang akan diupdate
    setter_kriteria = raw_input("| Masukan Nilai "+setter+":")              #input nilai masukan kolom yang akan diupdate
    print "| Masukan Kolom yang akan dijadikan patokan:"
    getter = raw_input("| Masukan Kolom\t: ")                               #input kolom yang akan dijadikan patokan
    getter_kriteria = raw_input("| Masukan Nilai "+getter+":")              #input nilai masukan kolom yang akan dijadikan patokan
    query = StringQueryUpdate(setter,getter,setter_kriteria,getter_kriteria)#memanggil fungsi StringQueryUpdate dengan nilai argumen dari nilai-nilai yang-
    query_update = (query)                                                  #-diinput diatas
    try:
        cursor.execute(query_update)
        cnx.commit()                                                        #cnx.commit(koneksi) dgunakan untuk melakukan perubahan pada database
        print "Data Sukses ditambahkan dengan detail query:"
        print query
    except F_Error as error:
        print("Error: {}".format(error))
        
##fungsi QueryDelete untuk melakukan query delete
def QueryDelete(cnx,cursor):
    print "| Masukan Kolom yang akan dijadikan patokan:"
    getter = raw_input("| Masukan Kolom\t: ")
    getter_kriteria = raw_input("| Masukan Nilai "+getter+":")
    query = StringQueryDelete(getter,getter_kriteria)
    query_delete = (query)
    try:
        cursor.execute(query_delete)
        cnx.commit()
        print "Data Sukses dihapus dengan detail query:"
        print query
    except F_Error as error:
        print("Error: {}".format(error))
##fungsi pembuatan query data transaksi baru untuk digunakan pada fungsi QueryInsert
def TambahData():
    idnasabah = input("| Masukan ID Nasabah\t\t\t:")        #Input-input yang digunakan untuk-
    norek = input("| Masukan Nomor Rekening\t\t:")          #-Mengisikan nilai-nilai data baru
    transaksi = raw_input("| Masukan Jenis Transaksi\t\t:")
    tanggal = datetime.now()
    jumlah = input("| Masukan Jumlah Transaksi\t\t:")
    data = (idnasabah, norek, transaksi, tanggal, jumlah)   #Tuple yang berisi nilai-nilai data baru
    return data                                             #Nilai kembalian adalah data dengan tipe data tuple
##fungsi pembuat query update dengan parameter:
##s  : kolom yang akan diubah
##g  : kolom yang akan dijadikan patokan untuk mengubah s
##sk : nilai kolom s
##gk : nilai kolom g
def StringQueryUpdate(s,g,sk,gk):
    query = "UPDATE transaksi SET "
    query += s
    query += "='"
    query += sk
    query += "' WHERE "
    query += g
    query += "='"
    query += gk
    query += "'"
    return query
##fungsi pembuat query delete dengan parameter:
##g  : kolom yang akan dijadikan patokan untuk menghapus data
##gk : nilai kolom g
def StringQueryDelete(g,gk):
    query = "DELETE FROM transaksi WHERE "
    query += g
    query += "='"
    query += gk
    query += "'"
    return query


y = 3                                               #Baris awal eksekusi program, membuat variabel y untuk perulangan login salah
while (y!=0):
    username = raw_input("Masukan Username\t:")     #Inputan username database
    passwd = raw_input("Masukan Password\t:")       #Inputan password database
    if not Login(username,passwd):
        y-=1
