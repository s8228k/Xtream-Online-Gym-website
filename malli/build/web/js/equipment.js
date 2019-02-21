function EquipmentValidate(){

            var equipmentId = document.forms["EquipmentForm"]["equipmentId"].value;
            var equipmentName = document.forms["EquipmentForm"]["equipmentName"].value;
            
            
            if(equipmentID(equipmentId,4))
                if(isAlphebatic(equipmentName))
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
                     
                                
                                
                                
          function EquipmentID(elemValue){
            var exp = /^\d{4}$/;
            if(!isEmpty(elemValue, "equipmentId")) {
                if(elemValue.match(exp)){
                    return true;
                }
                else {
                    alert("Enter a valid Equipment ID Containing 4 digits");
                    return false;
                }
            }
            else
                return false;
        }

                                

                            
                                
       function isAlphebatic(elemValue){
            var exp = /^[a-zA-Z]+$/;
            if(!isEmpty(elemValue, "equipmentName"))
            {
                if(elemValue.match(exp))
                {
                    return true;
                }
                else
                {
                    alert("Enter only text for your Equipment Name");
                    return false;
                }
            }
            else
                return false;
            }   