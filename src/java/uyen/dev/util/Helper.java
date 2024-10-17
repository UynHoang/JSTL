/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package uyen.dev.util;

import java.util.List;
import uyen.dev.data.model.OrderItem;

/**
 *
 * @author Thu Uyen
 */
public class Helper {
    public static double total(List<OrderItem> orderItemList) {
    double total = 0;
    for (int i = 0; i < orderItemList.size(); i++) {
        OrderItem ord = orderItemList.get(0); 
        total += ord.getPrice() * ord.getQuantity(); 
    }
    return total;
}
    
}
