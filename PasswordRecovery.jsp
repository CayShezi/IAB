<%-- 
    Document   : PasswordRecovery
    Created on : 10 Oct 2017, 9:50:02 AM
    Author     : KBCS Solutions
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
    <head>
        <meta charset="UTF-8">
        <title>IAB</title>

        <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Open+Sans:600'>
        <link rel="stylesheet" href="css/style.css">
    </head>

    <body>
        <div class="login-wrap">

            <div class="login-html">




                <input id="tab-2" type="radio" name="tab" class="sign-up" checked><label for="tab-2" class="tab">Password Recovery</label>
                <div class="login-form">
                    <form action="RecoveryServlet.do" method="POST">
                        <div class="sign-up-htm">
                            <div class="group">
                                <label  class="label">Username</label>
                                <input id="userrnam" type="text" class="input" name="username1">
                            </div>
                            <div class="group">
                                <label class="label">New Password</label>
                                <input id="passw" type="text" class="input" name="newPassword1">
                            </div>

                            <div class="group">
                                <label class="label">Confirm Password</label>
                                <input id="confirmPas" type="text" class="input" name="confirmPassword1">
                            </div>

                            <div class="group">
                                <input type="submit" class="button" value="Submit">
                            </div>
                            <div class="hr"></div>

                        </div>
                    </form>
                        
                </div>

            </div>


        </div>


    </body>
</html>