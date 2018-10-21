<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Register For Our Site!"/>
    </jsp:include>
    <style>
        #passwordConfirmInvalid {
            color: red;
            display: none;
        }

        #passwordConfirmValid {
            color: greenyellow;
            display: none;
        }
    </style>
</head>
<body>
<div class="container-fluid">
    <jsp:include page="partials/navbar.jsp"/>
    <div class="container">
        <h1>Please fill in your information.</h1>
        <form action="/register" method="post">
            <div class="form-group">
                <label for="username">Username</label>
                <input id="username" name="username" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input id="email" name="email" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input id="password" name="password" class="form-control" type="password">
                <small id="passwordHelpBlock" class="form-text text-light">
                    Your password must include at least 2 lowercase characters, 2 uppercase characters, and 2 numbers.
                </small>
            </div>
            <div class="form-group">
                <label for="confirm_password">Confirm Password</label>
                <input id="confirm_password" name="confirm_password" class="form-control" type="password">
                <small id="passwordConfirmInvalid" class="form-text text-danger">
                    Your passwords do not currently match.
                </small>
                <small id="passwordConfirmValid" class="form-text text-primary">
                    It looks like your passwords match!
                </small>
            </div>
            <input type="submit" class="btn btn-success btn-block">
        </form>
    </div>
    <jsp:include page="partials/footer.jsp"/>
</div>
</body>
<script>
    $(document).ready(function () {
        $("#confirm_password").keyup(checkPassword);
        function checkPassword() {
            var password = $("#password").val();
            var confirm = $("#confirm_password").val();
            if (password !== confirm) {
                $("#passwordConfirmInvalid").css("display", "inline-block")
            } else if (password===confirm){
                $("#passwordConfirmInvalid").css("display", "none");
                $("#passwordConfirmValid").css("display", "inline-block")
            }
        }
    });


</script>
</html>
