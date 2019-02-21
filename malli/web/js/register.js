function regValidate(){

            var firstname = document.forms["registerForm"]["fname"].value;
            var lastname = document.forms["registerForm"]["lname"].value;
            var email = document.forms["registerForm"]["email"].value;
            var username = document.forms["registerForm"]["username"].value;
            var password = document.forms["registerForm"]["password"].value;
            var cPassword = document.forms["registerForm"]["confirmPassword"].value;
            var address = document.forms["registerForm"]["address"].value;
            var number = document.forms["registerForm"]["cNumber"].value;

            if(isAlphebaticf(firstname))
                if(isAlphebaticf(lastname))
                    if(emailValidation(email))
                        if(userValidation(username,8,16))
                            if(passwordValidation(password, 8, 16))
                                if(confirmPasswordVal(cPassword, 8, 16))
                                    if(equalPassword(password, cPassword))
                                        if(addressValidation(address))
                                            if(contactNumber(number, 10))
                                                return true;
                                            else
                                                return false;
                                        else
                                            return false;
                                    else
                                        return false;
                                else
                                    return false;
                            else
                                return false;
                        else
                            return false;
                    else
                        return false;
                else
                    return false;
            else
                return false;

        }


        function isEmpty(elemValue, field){
            if(elemValue ==""  || elemValue == null){
                alert("You cannot have " + field + " field empty");
                return true;
            }
            else
                return false;
        }


        function isAlphebaticf(elemValue){
            var exp = /^[a-zA-Z]+$/;
            if(!isEmpty(elemValue, "First Name"))
            {
                if(elemValue.match(exp))
                {
                    return true;
                }
                else
                {
                    alert("Enter only text for your First Name");
                    return false;
                }
            }
            else
                return false;
        }


        function isAlphebaticl(elemValue){
            var exp = /^[a-zA-Z]+$/;
            if(!isEmpty(elemValue, "Last Name"))
            {
                if(elemValue.match(exp))
                {
                    return true;
                }
                else
                {
                    alert("Enter only text for your Last Name");
                    return false;
                }
            }
            else
                return false;
        }


        function emailValidation(elemValue){
            if(!isEmpty(elemValue,"Email")){
                var atpos = elemValue.indexOf("@");
                var dotpos = elemValue.indexOf(".");
                if(atpos < 1 || dotpos + 2 >= elemValue.length || atpos + 2 > dotpos){
                    alert("Enter a valid email address");
                    return false;
                }
                else
                    return true;
            }
            else
                return false;
        }


        function userValidation(elemValue,min,max){
            var exp = /^[0-9a-zA-Z]+$/;

            if (!isEmpty(elemValue, "username")) {
                if (elemValue.match(exp)) {
                    if (elemValue.length >= min && elemValue.length <= max) {
                        return true;
                    }
                    else {
                        alert("Enter a username in between " + min + " and " + max + " characters");
                        return false;
                    }
                }
                else
                    {
                        alert("You can use numbers and letters only");
                        return false;
                    }
                }

                else
                    return false;
            }



        function passwordValidation(elemValue,min,max){
            if(!isEmpty(elemValue, "Password")){
                if(elemValue.length >= min && elemValue.length <= max){
                    return true;
                }
                else {
                    alert("Enter a password between " + min + " and " + max + " characters");
                    return false;
                }
            }
            else
                return false;
        }


        function confirmPasswordVal(elemValue,min,max){
            if(!isEmpty(elemValue, "Confirm Password")){
                if(elemValue.length >= min && elemValue.length <= max){
                    return true;
                }
                else {
                    alert("Enter a password between " + min + " and " + max + " characters");
                    return false;
                }
            }
            else
                return false;
        }


        function equalPassword(pass, cPass){
            if( pass === cPass )
                return true;
            else{
                alert("Confirm Password is not match with Password,Please enter password again.");
                return false;
            }
        }


        function addressValidation(elemValue){
            var exp = /^[0-9a-zA-Z]+$/;
            if(!isEmpty(elemValue, "Address"))
            {
                if(elemValue.match(exp))
                {
                    return true;
                }
                else
                {
                    alert("Enter only text for your  Address")
                }
            }
        }


        function contactNumber(elemValue){
            var exp = /^\d{10}$/;
            if(!isEmpty(elemValue, "Contact Number")) {
                if(elemValue.match(exp)){
                    return true;
                }
                else {
                    alert("Enter a valid Contact Number");
                    return false;
                }
            }
            else
                return false;
        }

