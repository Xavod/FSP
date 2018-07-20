/**
 * 
 */
package com.s2rltx.projet.foodshuflle.application.controller;

import java.io.IOException;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.scene.image.ImageView;
import javafx.stage.Stage;

/**
 * @author Apprenant
 *
 */
public class Page2_controller {
	
	@FXML
	private TextField login;
	
	@FXML
	private PasswordField password;
	
	@FXML
	private Button loginButton;
	
	@FXML
	private ImageView register;
	
	@FXML
	private ImageView generate;
	
	@FXML
	private ImageView list;
	
	@FXML
	public void registerClicked() {
		try {
			Stage stage = (Stage) this.register.getScene().getWindow();
			
			Parent root = FXMLLoader.load(getClass().getResource("../ProjetFspRegister.fxml"));
			
			Scene scene = this.register.getScene(); 
			scene = new Scene(root,800,600);
			
			stage.setScene(scene);
			stage.show();
			} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
