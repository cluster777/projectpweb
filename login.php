<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>

<h2>Form login</h2>

<form action="/action_page.php">
  <div class="container">
    <!--login menggunakan username atau email-->
    <input type="text" placeholder="username atau email" name="uname" required>
	<input type=password placeholder="password" required><br>
        
    <button type="submit">log in</button>
    
  </div>

  <div class="container" style="background-color:#f1f1f1">
    <button type="button" class="cancelbtn">Cancel</button>
    
  </div>
</form>

</body>
</html>