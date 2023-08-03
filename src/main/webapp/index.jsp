!DOCTYPE html>
<html>
<head>
    <title>Facebook Login Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin: 50px;
        }
        .fb-login-button {
            padding: 10px 20px;
            font-size: 16px;
            background-color: #1877F2;
            color: white;
            border: none;
            cursor: pointer;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <h1>Welcome to Facebook</h1>
    <p>Login to access your account.</p>

    <!-- The Facebook login button provided by Facebook SDK -->
    <div class="fb-login-button" 
         data-size="large"
         data-button-type="login_with"
         data-layout="rounded"
         data-auto-logout-link="false"
         data-use-continue-as="false"
         scope="public_profile,email"
         onlogin="checkLoginState();">
    </div>

    <script>
        // You would need to add the Facebook SDK script here to enable the login button.
        // Facebook SDK script URL: https://connect.facebook.net/en_US/sdk.js

        // Function to handle login state after successful login
        function checkLoginState() {
            // Here, you can use the Facebook API to retrieve user information, handle authentication, etc.
            // For this simplified example, we'll just display a greeting message.
            FB.api('/me', function(response) {
                alert('Welcome, ' + response.name + '!');
            });
        }
    </script>
</body>
</html>

<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin: 50px;
        }
        input {
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-bottom: 10px;
        }
        button {
            padding: 10px 20px;
            font-size: 16px;
            background-color: #007BFF;
            color: white;
            border: none;
            cursor: pointer;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <h1>Login Page</h1>
    <form>
        <label for="username">Username:</label>
        <input type="text" id="username" placeholder="Enter your username">

        <label for="password">Password:</label>
        <input type="password" id="password" placeholder="Enter your password">

        <button type="button" onclick="login()">Login</button>
    </form>

    <script>
        function login() {
            var username = document.getElementById('username').value;
            var password = document.getElementById('password').value;

            // You can implement the login logic here
            // For this example, we'll just display the entered credentials in an alert.
            alert("Username: " + username + "\nPassword: " + password);
        }
    </script>
</body>
</html>
