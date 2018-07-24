/**
 * 
 */
package com.s2rltx.projet.foodshuflle.application.controller;


import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.s2rltx.projet.foodshuflle.managerdatabase.DbManager;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.image.ImageView;
import javafx.scene.layout.HBox;
import javafx.scene.text.Text;
import javafx.stage.Stage;
import javafx.scene.control.Button;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;

/**
 * @author Apprenant
 *
 */
public class Register_controller {

	@FXML
	private TextField login;
	
	@FXML
	private PasswordField password;
	
	@FXML
	private PasswordField confirmPassword;
	
	@FXML
	private TextField email;
	
	@FXML
	private Button create;
	
	Page1_controller controller;
	
	DbManager manager = new DbManager();
	
	@FXML
	public void userCreated() {
		
		
		if(userCreatedError()==false) {
			manager.creationRequest("INSERT INTO Utilisateur (U_pseudo, U_mdp, U_email) VALUES ('" + login.getText() + "','" + password.getText() + "','" + email.getText() + "')");
			goPage1();
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
		
		ResultSet rs = manager.selectRequest("SELECT U_pseudo FROM utilisateur WHERE U_pseudo = '"
				+ login.getText() + "'");
		
			try {
				if (rs.next() == true) {
					alert.setContentText("Ooops, votre login est déjà utilisé");
					alert.showAndWait();
					result = true;
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			ResultSet rst = manager.selectRequest("SELECT U_email FROM utilisateur WHERE U_email = '" + email.getText() + "'");
			
				try {
					if (rst.next() == true) {
						alert.setContentText("Ooops, votre email est déjà utilisé");
						alert.showAndWait();
						result = true;
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		
		return result;
	}
	
	@FXML
	public void goPage1() {
//		try {
//			Stage stage = (Stage) this.create.getScene().getWindow();
//
//			Parent root = FXMLLoader.load(getClass().getResource("../ProjetFspPage1.fxml"));
//
//			Scene scene = this.create.getScene();
//			scene = new Scene(root, 800, 600);
//
//			stage.setScene(scene);
//			stage.show();
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		try {
			Stage stage = (Stage) this.create.getScene().getWindow();

			FXMLLoader loader = new FXMLLoader(getClass().getResource("../ProjetFspPage1.fxml"));
			Parent root = loader.load();
			// Parent root =
			// FXMLLoader.load(getClass().getResource("../ProjetFspPage2.fxml"));

			Scene scene = this.create.getScene();
			scene = new Scene(root, 800, 600);

			this.controller = loader.getController();

			stage.setScene(scene);
			stage.show();
			this.controller.getPaneLogin().setManaged(false);
			this.controller.getPaneUser().setManaged(true);
			this.controller.getPaneLogin().setOpacity(0.0);
			this.controller.getPaneUser().setOpacity(1.0);
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
