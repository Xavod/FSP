/**
 * 
 */
package com.s2rltx.projet.foodshuflle.application.controller;

import javafx.fxml.FXML;
import javafx.scene.control.Alert;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;

/**
 * @author Apprenant
 *
 */
public class Register_controller {

	@FXML
	private TextField login;
	
	@FXML
	private TextField password;
	
	@FXML
	private TextField confirmPassword;
	
	@FXML
	private TextField email;
	
	@FXML
	private Button create;
	
	@FXML
	public void userCreated() {
		if(userCreatedError()==false) {
			
		}
	}
	
	@FXML
	public boolean userCreatedError() {
		boolean result=false;
		Alert alert = new Alert(AlertType.ERROR);
		alert.setTitle("Error Dialog");
		alert.setHeaderText(null);
		

		
		if (!password.getText().equals(confirmPassword.getText())) {
			result = true;
			alert.setContentText("Ooops, la confirmation du password est erronée");
			alert.showAndWait();
		}
		
		if ((login.getText().equals("")) || (password.getText().equals("")) || (email.getText().equals("")) ) {
			result = true;
			alert.setContentText("Ooops, veuillez remplir tous les champs");
			alert.showAndWait();
		}
		return result;
	}
}
