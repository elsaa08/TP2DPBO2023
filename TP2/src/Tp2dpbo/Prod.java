 /*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Tp2dpbo;

/**
 *
 * @author elsan
 */
public class Prod {
    private int id;
    private String name;
    private int age;
    private String agencies;
    private String img;
    
    public Prod(){}
    public Prod(int id, String name, int age, String agencies, String img){
        this.id = id;
        this.name = name;
        this.age = age;
        this.agencies = agencies;
        this.img = img;
        
    }
    
    public void setidprod(int id){
        this.id = id;
    }
    public void setname(String name){
        this.name = name;
    }
    public void setage(int age){
        this.age = age;
    }
    public void setagensi(String agencies){
        this.agencies = agencies;
    }
    public void setimg(String img){
        this.img = img;
    }
    
    //getter
    public int getidprod(){
        return id;
    }
    public String getname(){
        return name;
    }
    public int getage(){
        return age;
        
    }
    public String getagensi(){
        return agencies;
    }
    public String getimg(){
        return this.img;
    }
}
