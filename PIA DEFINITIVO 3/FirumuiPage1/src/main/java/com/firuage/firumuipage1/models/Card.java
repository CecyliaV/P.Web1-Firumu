/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.firuage.firumuipage1.models;

/**
 *Modelo
 * @author Alex Bazaldua
 */
public class Card {
    private String imgUrl;
    private String Title;
    private String Description;
    private String linRef;

    public Card() {
    }

    public Card(String imgUrl, String Title, String Description, String linRef) {
        this.imgUrl = imgUrl;
        this.Title = Title;
        this.Description = Description;
        this.linRef = linRef;
    }

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }

    public String getTitle() {
        return Title;
    }

    public void setTitle(String Title) {
        this.Title = Title;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String Description) {
        this.Description = Description;
    }

    public String getLinRef() {
        return linRef;
    }

    public void setLinRef(String linRef) {
        this.linRef = linRef;
    }
    
  
}
