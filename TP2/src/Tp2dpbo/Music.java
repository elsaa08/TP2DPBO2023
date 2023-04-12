/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Tp2dpbo;

/**
 *
 * @author elsan
 */
public class Music {
    private int id_music;
    private String title;
    private String album;
    private String producer;
    private String img;
    
    public Music(){}
    public Music(int id_music, String title, String album, String producer, String img){
        this.id_music = id_music;
        this.title = title;
        this.album = album;
        this.producer = producer;
        this.img = img;
        
    }
    public void setid(int id){
        this.id_music = id_music;
    }
    public void settitle(String title){
        this.title = title;
    }
    public void setalbum(String album){
        this.album = album;
    }
    public void setproducer(String producer){
        this.producer = producer;
    }
     public void setimg(String img){
        this.img = img;
    }
    
    public int getid(){
        return id_music;
    }
    public String gettitle(){
        return title;
        
    }
    public String getalbum(){
        return album;
    }
    public String getprod(){
        return producer;
    }
    public String getimg(){
        return this.img;
    }
    
  
}
