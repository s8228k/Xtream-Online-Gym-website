

function traineeValidate(){

            var traineename = document.forms["TraineeForm"]["traineename"].value;
            var traineeId = document.forms["TraineeForm"]["traineeId"].value;
            var traineetype = document.forms["TraineeForm"]["traineetype"].value;
            
            
            if(isAlphebatic(traineename))
                if(TraineeID(traineeId, 4))
                    if(isAlpha(traineetype))
                        return true;
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
           

          function isAlphebatic(elemValue){
            var exp = /^[a-zA-Z]+$/;
            if(!isEmpty(elemValue, "traineename"))
            {
                if(elemValue.match(exp))
                {
                    return true;
                }
                else
                {
                    alert("Enter only text for your Trainee Name");
                    return false;
                }
            }
            else
                return false;
        }
        
        
        
        
        function isAlpha(elemValue){
            var exp = /^[a-zA-Z]+$/;
            if(!isEmpty(elemValue, "traineetype"))
            {
                if(elemValue.match(exp))
                {
                    return true;
                }
                else
                {
                    alert("Enter only text for your Trainee Type");
                    return false;
                }
            }
            else
                return false;
        }

            
            
            
         function TraineeID(elemValue){
            var exp = /^\d{4}$/;
            if(!isEmpty(elemValue, "traineeId")) {
                if(elemValue.match(exp)){
                    return true;
                }
                else {
                    alert("Enter a valid Trainee ID Containing 4 digits");
                    return false;
                }
            }
            else
                return false;
        }
