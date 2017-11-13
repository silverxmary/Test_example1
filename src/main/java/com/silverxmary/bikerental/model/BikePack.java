package com.silverxmary.bikerental.model;

import javax.persistence.*;

@Entity
public class BikePack {

	
	//private Long id;
	private String nombre;
	private int precio;
	private int rentTime;

	public  BikePack() {
		// TODO Auto-generated constructor stub
	}
	
	public  BikePack(String nombre, int rentTime) {
		this.nombre=nombre;
		this.rentTime=rentTime;
		setPrecio(rentTime, nombre); 
	}
	
	
	/*@Id
	@GeneratedValue
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}*/
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public int getPrecio() {
		return precio;
	}
	public void setPrecio(int time, String nombre) {
	
			if(nombre.equalsIgnoreCase("1")){
				this.precio = 5*time;
			}
			if(nombre.equalsIgnoreCase("2")){
				this.precio = 20*time;
			}
			if(nombre.equalsIgnoreCase("3")){
				this.precio = 60*time;
			}
			
		
	}
	public int getRentTime() {
		return rentTime;
	}
	public void setRentTime(int rentTime) {
		this.rentTime = rentTime;
	}
	

}
