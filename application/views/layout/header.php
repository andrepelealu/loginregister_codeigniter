<nav>



  <?if(isset($_SESSION['logged_in'] )){?>
<li><a href="addevent">Add Event</a></li>
<li><a href="logout">Logout</a></li>

  <?}else{?>
    <li><a href="register">Register</a></li>
    <li><a href="login">Login</a></li>
  <?}?>
<br>
</nav>
