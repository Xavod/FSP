package com.s2rltx.projet.foodshuflle.application.controller;

import java.net.URL;
import java.util.ResourceBundle;

import com.s2rltx.projet.foodshuflle.managerdatabase.DbManager;

import javafx.event.Event;
import javafx.event.EventHandler;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.Cursor;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.CheckBox;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.scene.image.ImageView;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.StackPane;

public class Page1_controller implements Initializable{
	
	@FXML
	private TextField login;
	@FXML
	private PasswordField password;
	@FXML
	private Button go;
	@FXML
	private ImageView register;
	@FXML
	private TextField nbPers;
	@FXML
	private TextField nbRepas;
	@FXML 
	private CheckBox less30min;
	@FXML 
	private CheckBox entre3060min;
	@FXML 
	private CheckBox plus1h;
	@FXML
	private TextField exclusion;
	@FXML
	private Button ajouter;
	@FXML 
	private CheckBox vegetarien;
	@FXML 
	private CheckBox gluten;
	@FXML 
	private CheckBox lait;
	@FXML 
	private CheckBox arachide;
	@FXML 
	private CheckBox soja;
	@FXML 
	private CheckBox coque;
	@FXML 
	private CheckBox moutarde;
	@FXML
	private CheckBox oeuf;
	@FXML
	private CheckBox mer;
	@FXML
	private CheckBox sesame;
	@FXML
	private CheckBox poisson;
	
	@FXML
	private ImageView generer;
	@FXML
	private StackPane regimesAllergies;
	@Override
	public void initialize(URL arg0, ResourceBundle arg1) {
		// TODO Auto-generated method stub
		
	}
	
	/*@FXML
	public void apparenceCursor() {
		
		generer.setOnMouseEntered(new EventHandler() {
		    public void handle(MouseEvent me) {
		        generer.setCursor(Cursor.HAND); //Change cursor to hand
		    }

			@Override
			public void handle(Event event) {
				// TODO Auto-generated method stub
				
			}
		});
	}*/
	
	@FXML
	public void generate() {
		DbManager manager = new DbManager();
		manager.creationRequest("DROP VIEW IF EXISTS v_A");
		manager.creationRequest("CREATE VIEW v_A AS SELECT* FROM v_globale");
		String V="";
		String G= "";
		String L= "";
		String S ="";
		String Se = "";
		String M ="";
		String O = "";
		String A ="";
		String F ="";
		String P ="";
		String C ="";
		
		String result = "";
		
		if (this.vegetarien.isSelected()) {
			//manager.selectReq("SELECT* FROM v_A WHERE regimes LIKE \"%V%\"" );
			V = "regimes LIKE \"%V%\" and ";
		}
		if (this.gluten.isSelected()) {
			G ="regimes NOT LIKE \"%G%\" and ";	
		}
		if (this.poisson.isSelected()) {
			P = "regimes NOT LIKE \"%P%\" and ";
		}
		if (this.coque.isSelected()) {
			F = "regimes NOT LIKE \"%F%\" and ";
		}
		if (this.mer.isSelected()) {
			C = "regimes NOT LIKE \"%C%\" and ";
		}
		if (this.moutarde.isSelected()){
			M = "regimes NOT LIKE \"%M%\" and ";
		}
		if (this.arachide.isSelected()) {
			A = "regimes NOT LIKE \"%A%\" and ";
		}
		if (this.lait.isSelected()) {
			L = "regimes NOT LIKE \"%L%\" and ";
		}
		if (this.soja.isSelected()) {
			S = "regimes NOT LIKE \"%S%\" and ";
		}
		if (this.oeuf.isSelected()) {
			O = "regimes NOT LIKE \"%O%\" and ";
		}
		if(this.sesame.isSelected()) {
			Se = "regimes NOT LIKE \"%Se%\" and ";
		}
	result = "SELECT* FROM v_A WHERE " + V + S + O + Se + P + C + L + G + A + M + F + "\""; 
	result = result.substring(0,(result.length()-6));
	System.out.println(result);
	manager.selectReq(result);
	
	}
	
	
	
	
	
		
	
}
