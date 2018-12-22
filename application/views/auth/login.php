<h2>Login</h2>

<?php echo form_open('auth/login') ?>
  <label for="">email</label>
  <input type="email" name="email" value="<?=set_value('email')?>"><br>

  <label for="">password</label>
  <?= form_error('password'); ?>

  <input type="password" name="password" ><br>
  <input type="submit" name="submit" value="register">

  <? form_close();?>
