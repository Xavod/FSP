/**
 * 
 */
package com.s2rltx.projet.foodshuflle.application.controller;


import com.s2rltx.projet.foodshuflle.managerdatabase.DbManager;
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
		DbManager manager = new DbManager();
		
		if(userCreatedError()==false) {
			manager.creationRequest("INSERT INTO Utilisateur (U_pseudo, U_mdp, U_email) VALUES ('" + login.getText() + "','" + password.getText() + "','" + email.getText() + "')");
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
