<?php
session_start();
 // Connect to database
include '../conn.php';
// Check connection
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}

if (isset($_SESSION['user_id'])) {
  header("Location: ../login/dashboard.php");
  exit();
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
  $user_id = $_POST['user_id'];
  $password = $_POST['password'];


  // Sanitize user input
  $user_id = mysqli_real_escape_string($conn, $user_id);
  $password = mysqli_real_escape_string($conn, $password);

  // Query database for user
  $query = "SELECT * FROM user WHERE user_id = '$user_id' AND password = '$password'";
  $result = mysqli_query($conn, $query);

  // Check if user exists
  if (mysqli_num_rows($result) == 1) {
    // User exists, set session variable and redirect to dashboard
    $_SESSION['user_id'] = $user_id;
    header("Location: dashboard.php");
    exit();
  } else {
    // User does not exist, display error message
    $error = "Invalid login credentials.";
  }

  mysqli_close($conn);
}
?>

<!DOCTYPE html>
<html>
<head>
  <title>Login</title>
</head>
<body>
  <h1>Login</h1>
  <?php if (isset($error)) { echo "<p>$error</p>"; } ?>
  <form method="POST" action="">
    <label for="user_id">User ID:</label>
    <input type="text" name="user_id" required>
    <br>
    <label for="password">Password:</label>
    <input type="password" name="password" required>
    <br>
    <input type="submit" value="Log in">
  </form>
</body>
</html>
