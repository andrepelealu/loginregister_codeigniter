<h2>Add Event</h2>

<?php echo form_open('user/addevent') ?>
  <label for="">Nama Penyelenggara</label>
  <input type="text" name="nama"><br>

  <label for="">Bintang Tamu/Pembicara</label>
  <input type="text" name="gs"><br>

  <label for="">Tanggal</label>
  <input type="date" name="tanggal"><br>

  <label for="">Waktu Mulai</label>
  <input type="time" name="mulai"><br>

  <label for="">Waktu Selesai</label>
  <input type="time" name="selesai"><br>

  <label for="">Tempat</label>
  <input type="text" name="tempat"><br>

  <input type="submit" name="submit" value="Simpan">

  <? form_close();?>
