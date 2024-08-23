<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Register</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
</head>
<body>

	<div class="main">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Register</h2>

						<form method="post" action="insertcustomer" class="register-form"
							id="register-form">
							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="name" id="name" placeholder="Your Name"
									required="required" />
							</div>
							<div style="display: flex; align-items: center;">
								<label for="gender" style="margin-right: 10px;"><i
									class="zmdi zmdi-face"></i></label> <select name="gender" id="gender"
									style="width: 100%; border: none; border-bottom: 1px solid #999; padding: 6px 0; box-sizing: content-box; margin-left: 5px;"
									required="required">
									<option value="" disabled selected>Select your gender</option>
									<option value="male">Male</option>
									<option value="female">Female</option>
									<option value="other">Other</option>
								</select>
								<div
									style="position: relative; margin-left: -20px; pointer-events: none; z-index: 1;">
									<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
										fill="none" stroke="currentColor" stroke-width="2"
										stroke-linecap="round" stroke-linejoin="round"
										style="width: 1em; height: 1em; display: block; overflow: visible; margin-top: -4px; margin-right: -3px; fill: none;">
            <polyline points="6 9 12 15 18 9"></polyline>
        </svg>
								</div>
							</div>

							<br>

							<div class="form-group">
								<label for="dateofbirth"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="date" name="dateofbirth" id="dateofbirth" placeholder="Your DOB" required="required" />
							</div>

							<div class="form-group">
								<label for="email"><i class="zmdi zmdi-email"></i></label> <input
									type="email" name="email" id="email" placeholder="Your Email"
									required="required" />
							</div>
							<div class="form-group" style="margin-bottom: 15px;">
    <label for="pass" style="display: inline-block; margin-right: 10px;"><i class="zmdi zmdi-eye"></i></label>
    <input
      type="password"
      name="pass"
      id="pass"
      placeholder="Password"
      class="password-input"
      required="required"
      oninput="validatePassword()"
      onfocus="displayConditions()"
      onblur="hideConditions()"
      style="padding: 8px;"
    />
    <div id="passwordConditions" style="font-size: 80%; color: red; margin-top: 5px;"></div>
    <p id="passwordError" style="margin: 5px 0 0; font-size: 90%; color: red;"></p>
  </div>

  <script>
    function displayConditions() {
      var conditions = "Password must:<br>";
      conditions += "- Be at least 8 characters long.<br>";
      conditions += "- Contain at least one uppercase letter.<br>";
      conditions += "- Contain at least one lowercase letter.<br>";
      conditions += "- Contain at least one number.<br>";
      conditions += "- Contain at least one special character.";

      document.getElementById('passwordConditions').innerHTML = conditions;
      document.getElementById('passwordConditions').style.color = 'red';
    }

    function hideConditions() {
      document.getElementById('passwordConditions').innerHTML = '';
    }

    function validatePassword() {
      var passwordInput = document.getElementById('pass');
      var passwordError = document.getElementById('passwordError');
      var passwordConditions = document.getElementById('passwordConditions');
      var password = passwordInput.value;

      // Define your password criteria
      var minLength = 8;
      var hasUpperCase = /[A-Z]/.test(password);
      var hasLowerCase = /[a-z]/.test(password);
      var hasNumbers = /\d/.test(password);
      var hasSpecialChars = /[!@#$%^&*(),.?":{}|<>]/.test(password);

      // Display the password conditions in red
      passwordConditions.style.color = 'red';

      // Build the error message
      var errorMessage = '';

      if (password.length < minLength) {
        errorMessage += 'Password must be at least ' + minLength + ' characters long. ';
      }

      if (!hasUpperCase) {
        errorMessage += 'Password must contain at least one uppercase letter. ';
      }

      if (!hasLowerCase) {
        errorMessage += 'Password must contain at least one lowercase letter. ';
      }

      if (!hasNumbers) {
        errorMessage += 'Password must contain at least one number. ';
      }

      if (!hasSpecialChars) {
        errorMessage += 'Password must contain at least one special character. ';
      }

      // Display the error message
      passwordError.innerHTML = errorMessage.trim();

      // Change color to green if all criteria are met
      if (errorMessage.trim() === '') {
        passwordError.style.color = 'green';
        passwordConditions.style.color = 'green';
      } else {
        passwordError.style.color = 'red';
      }
    }
  </script>


							<div class="form-group">
								<label for="address"><i class="zmdi zmdi-pin"></i></label> <input
									type="text" name="address" id="address" placeholder="Your Address" required="required" />
							</div>

							<div class="form-group">
								<label for="contact"><i class="zmdi zmdi-phone"></i></label> <input
									type="text" name="contact" 
									pattern="[6789][0-9]{9}"
									placeholder="Contact No Must be 10 digits" required="required" />
							</div>
							<div class="form-group">
								<input type="checkbox" name="agree-term" id="agree-term"
									class="agree-term" required="required" /> <label
									for="agree-term" class="label-agree-term"><span><span></span></span>I
									agree all statements in <a href="#" class="term-service">Terms
										of service</a></label>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signup" id="signup"
									class="form-submit" value="Register" />
							</div>
						</form>
					</div>
					<div class="signup-image">
						<figure>
							<img src="images/signup-image.jpg" alt="sing up image">
						</figure>
						<a href="login" class="signup-image-link">I am already
							member</a>
					</div>
				</div>
			</div>
		</section>


	</div>



</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>