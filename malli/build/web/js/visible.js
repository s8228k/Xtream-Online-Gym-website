
 function myFunction() 
 {
 document.getElementById("table").style.visibility = "visible";
 document.getElementById("vi").style.visibility = "hidden"; 
 
 calculate();
 }
 
 function calculate()
 {
     var paymentdate = document.forms["payment"]["date"].value;
     var today = new Date();
     
     var day = paymentdate - today ;
     
     if(day > 30)
     {
         document.getElementById("table").style.visibility = "hidden";
     }
 }