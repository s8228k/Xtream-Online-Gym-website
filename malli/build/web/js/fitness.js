function calculate(){

            var height = document.forms["bmiForm"]["height"].value;
            var weight = document.forms["bmiForm"]["weight"].value;

            if(heightCal(height))
                if(weightCal(weight))
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
        
        function heightCal(elemValue){
            if(!isEmpty(elemValue, "height"))
                return true;
                
            else
                    return false;
        }
        
        function weightCal(elemValue){
            if(!isEmpty(elemValue, "weight"))
                    return true;
                
            else 
                return false;            
        }

        
        
        
        
/*
        function heightCal(elemValue){
            var exp = /^\d{3}$/;
            if(!isEmpty(elemValue, "height")) {
                if(elemValue.match(exp)){
                    return true;
                }
                else {
                    alert("Enter a valid height");
                    return false;
                }
            }
            else
                return false;
        }
        
        function weightCal(elemValue){
            var exp = /^\d{3}$/;
            if(!isEmpty(elemValue, "weight")) {
                if(elemValue.match(exp)){
                    return true;
                }
                else {
                    alert("Enter a valid weight");
                    return false;
                }
            }
            else
                return false;
        }

*/