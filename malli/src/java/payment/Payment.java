/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package payment;

/**
 *
 * @author Erandi
 */
public class Payment {
    private static float totalPayment; 
    
    public  static float CalculateAddingPayment(float price ){
        
        
       totalPayment = totalPayment + price;
       
        return totalPayment;
    
    
    }
    
    public static float CalculateDeductingPayment(float price){
        totalPayment = totalPayment - price;
        return totalPayment;
    }
}

