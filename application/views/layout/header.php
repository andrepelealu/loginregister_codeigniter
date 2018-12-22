<nav>

  <li><a href="register">Register</a></li>
  <li><a href="login">Login</a></li>

  <?
  if(isset($_SESSION['logged_in'])){?>

<li><a href="logout">Logout</a></li>

  <?} else {?>

  <?}?>

</nav>
<br>
