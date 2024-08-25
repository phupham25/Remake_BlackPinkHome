function checkRegister() {
    var firstName = document.getElementById("firstName").value.trim();
    var lastName = document.getElementById("lastName").value.trim();
    var phone = document.getElementById("phone").value.trim();
    var email = document.getElementById("email").value.trim();
    var password = document.getElementById("pass").value.trim();
    var cfPassword =  document.getElementById("cfPass").value.trim();
    var check = true;

    
    if (firstName == "") {
        alert("Fill first name!");
        check = false;
        document.getElementById("firstName").focus();
    }
    else if (lastName == "") {
        alert("Fill last name!");
        check = false;
        document.getElementById("lastName").focus();
    }
    else if (phone == "") {
        alert("Fill phone number!");
        check = false;
        document.getElementById("phone").focus();
    }
    else if (/^0[1-9]{9}/.test(phone) == false) {
        alert("Wrong phone! Fill phone again!");
        check = false;
        document.getElementById("phone").focus();
    }
    else if (email == "") {
        alert("Fill email address!");
        check = false;
        document.getElementById("email").focus();
    }
    else if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email) == false) {
        alert("Wrong email! Fill email again!");
        check = false;
        document.getElementById("email").focus();
    }
    else if (check == true && password == "") {
        alert("Fill password!");
        check = false;
        document.getElementById("pass").focus();
    }
    else if (password.length < 6) {
        alert("Length of password must be from 6!")
        check = false;
        document.getElementById("pass").focus();
    }
    else if (cfPassword == "") {
        alert("Confirm password!")
        check = false;
        document.getElementById("cfPass").focus();
    }
    else if (cfPassword !== password) {
        alert("Password doesn't match!")
        check = false;
        document.getElementById("cfPass").focus();
    }
    console.log(/^0[1-9]{9}/.test(phone))

    return check;
}