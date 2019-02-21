function loginValidate(){

            var username = document.forms["loginForm"]["username"].value;
            var password = document.forms["loginForm"]["password"].value;
            
            if(userValidation(username,8,16))
                if(passwordValidation(password, 8, 16))
                    return true;
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