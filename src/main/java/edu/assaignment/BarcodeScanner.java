package edu.assaignment;

import java.util.HashMap;

public class BarcodeScanner {
    HashMap<String,Integer> map=new HashMap<>();
    int total=0;
    public void add(String type,int price){
        map.put(type,price);
    }
    public void scan(int amount,String type){
        total+=map.get(type)*amount;
    }
    public int getTotal(){
        return total;
    }
}
