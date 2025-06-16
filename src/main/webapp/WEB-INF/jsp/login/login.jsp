<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login Hotel</title>

    <!-- CSS Files -->
    <link href="assets/css/css-plugin-collection.css" rel="stylesheet">
    <link href="assets/css/typography.css" rel="stylesheet">
    <link href="assets/css/shortcodes.css" rel="stylesheet">
    <link href="assets/style.css" rel="stylesheet">
    <link href="assets/css/color.css" rel="stylesheet">
    <link href="assets/css/responsive.css" rel="stylesheet">
</head>

<body>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-md-offset-4 col-md-4">
                    <!-- Login Form Start -->
                    <form onsubmit="ValidateLogin()" class="chr-login" action="loginUser" method="post">
                        <!-- Heading Start -->
                        <div class="headind-1">
                            <h3 class="title">Log In</h3>
                        </div>
                        <!-- Heading End -->

                        <div class="input-field">
                            <label>Email</label>
                            <input type="text" name="email" id="email" placeholder="Enter Email">
                             <p id="error-msg" style="color:red"></p>
                        </div>
                        <div class="input-field">
                            <label>Password</label>
                            <input type="password" name="password" id="password" placeholder="********" maxlength="8">
                             <p id="error-msg" style="color:red"></p>
                        </div>

                       

                        <div class="input-field">
                            <input type="submit" value="Login">
                        </div>
                        <a class="readmore-btn" href="sign-Up">Sign Up</a>
                    </form>
                    <!-- Login Form End -->
                </div>
            </div>
        </div>
    </section>

    <!-- JavaScript Validation -->
    <script type="text/javascript">
        function ValidateLogin() {
            const email = document.getElementById("email").value;
            const password = document.getElementById("password").value;
            const error = document.getElementById("error-msg");

            let emailRegex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
            let passRegex = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d@$!%*?&]{6,}$/;

            if (!email || !password) {
                error.textContent = "All fields are required";
                return false;
            }

            if (!emailRegex.test(email)) {
                error.textContent = "Please enter a valid email address";
                return false;
            }

            if (!passRegex.test(password)) {
                error.textContent = "Password must be at least 6 characters and contain a letter and number";
                return false;
            }

            return true;
        }
    </script>
</body>
</html>
