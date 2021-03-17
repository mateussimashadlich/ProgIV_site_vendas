/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

/**
 *
 * @author mateu
 */
public class Venda {
    private int id;
    private String data;
    private boolean pagtoPrazo;
    private char status;

    public Venda() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    public boolean isPagtoPrazo() {
        return pagtoPrazo;
    }

    public void setPagtoPrazo(boolean pagtoPrazo) {
        this.pagtoPrazo = pagtoPrazo;
    }

    public char getStatus() {
        return status;
    }

    public void setStatus(char status) {
        this.status = status;
    }
    
    
}
