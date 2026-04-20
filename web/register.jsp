<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Form Input Data Mahasiswa</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <div class="container">
        <h2>Form Input Data Mahasiswa</h2>
        <form action="prosesMahasiswa.jsp" method="POST">
            <div class="form-group">
                <label>NIM :</label>
                <input type="text" name="nim" required>
            </div>
            <div class="form-group">
                <label>Nama :</label>
                <input type="text" name="nama" required>
            </div>
            <div class="form-group">
                <label>Email :</label>
                <input type="email" name="email" required>
            </div>
            <div class="form-group">
                <label>No Telepon :</label>
                <input type="text" name="notelp" required>
            </div>
            <div class="form-group">
                <label>Program Studi :</label>
                <select name="prodi">
                    <option value="Informatika">Informatika</option>
                    <option value="Sistem Informasi">Sistem Informasi</option>
                </select>
            </div>
            <div class="form-group">
                <label>Jenis Kelamin :</label>
                <div class="radio-group">
                    <input type="radio" name="jk" value="Laki-laki" checked> Laki-laki
                    <input type="radio" name="jk" value="Perempuan"> Perempuan
                </div>
            </div>
            <div class="form-group">
                <label>Hobi :</label>
                <div class="checkbox-group">
                    <input type="checkbox" name="hobi" value="Membaca"> Membaca
                    <input type="checkbox" name="hobi" value="Gaming"> Gaming
                    <input type="checkbox" name="hobi" value="Olahraga"> Olahraga
                </div>
            </div>
            <div class="form-group">
                <label>Alamat :</label>
                <textarea name="alamat" rows="3" required></textarea>
            </div>
            <div class="btn-container">
                <button type="submit" class="btn-simpan">Simpan</button>
                <button type="reset" class="btn-reset">Reset</button>
            </div>
        </form>
    </div>
</body>
</html>