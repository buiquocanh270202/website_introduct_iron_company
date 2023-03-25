/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author nguye
 */
public class InformationCategories {

    private int id;
    private String name;
    private int pId;
    private boolean status;

    public InformationCategories(int id, String name, int pId, boolean status) {
        this.id = id;
        this.name = name;
        this.pId = pId;
        this.status = status;
    }

    public InformationCategories() {
    }

    public InformationCategories(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public InformationCategories(int id, String name, int pId) {
        this.id = id;
        this.name = name;
        this.pId = pId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getpId() {
        return pId;
    }

    public void setpId(int pId) {
        this.pId = pId;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "InformationCategories{" + "id=" + id + ", name=" + name + ", pId=" + pId + ", status=" + status + '}';
    }
    

    

}
