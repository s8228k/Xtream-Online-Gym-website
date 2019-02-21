function forgotValidate(){

            var username = document.forms["forgotForm"]["username"].value;
            var password = document.forms["forgotForm"]["password"].value;
            var cPassword = document.forms["forgotForm"]["confirmPassword"].value;
            
            
            if(userValidation(username,3,16))
                    if(passwordValidation(password, 4, 16))
                        if(confirmPasswordVal(cPassword, 4, 16))
                            if(equalPassword(password, cPassword))
                                return true;                                
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



