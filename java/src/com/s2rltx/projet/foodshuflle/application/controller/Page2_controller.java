/**
 * 
 */
package com.s2rltx.projet.foodshuflle.application.controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;
import java.net.URL;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.Random;
import java.util.ResourceBundle;

import com.s2rltx.projet.foodshuflle.application.model.DataShare;
import com.s2rltx.projet.foodshuflle.managerdatabase.DbManager;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.control.Button;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.layout.Pane;
import javafx.stage.Stage;

/**
 * @author Apprenant
 *
 */
public class Page2_controller implements Initializable {

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
	private Pane paneLogin;

	@FXML
	private Pane paneUser;
	
	@FXML
	private ImageView image1;
	
	@FXML
	private ImageView image2;
	
	@FXML
	private ImageView image3;
	
	@FXML
	private ImageView image4;
	
	@FXML
	private ImageView image5;
	
	@FXML
	private ImageView image6;
	
	@FXML
	private ImageView image7;
	
	@FXML
	private ImageView image8;
	
	DbManager manager = new DbManager();
	
	

	public Page2_controller() {
		super();
//		this.showImage();
	}

	@Override
	public void initialize(URL arg0, ResourceBundle arg1) {
		this.paneLogin.setManaged(true);
		this.paneUser.setManaged(false);
		this.paneUser.setOpacity(0.0);

	}

	@FXML
	public void registerClicked() {
		try {
			Stage stage = (Stage) this.register.getScene().getWindow();

			Parent root = FXMLLoader.load(getClass().getResource("../ProjetFspRegister.fxml"));

			Scene scene = this.register.getScene();
			scene = new Scene(root, 800, 600);

			stage.setScene(scene);
			stage.show();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public void testLogin() {
		Alert alert = new Alert(AlertType.ERROR);
		alert.setTitle("Error Dialog");
		alert.setHeaderText(null);
		ResultSet rs = manager.selectRequest("SELECT U_pseudo,U_mdp FROM utilisateur WHERE U_pseudo = '" + login.getText() + "' and U_mdp = '" + password.getText() +"'");
		if (testLoginError()==false) {
			try {
				if (rs.next()==false) {
					alert.setContentText("Ooops, erreur de login ou de password");
					alert.showAndWait();
				}
				else {
					this.paneLogin.setManaged(false);
					this.paneUser.setManaged(true);
					this.paneLogin.setOpacity(0.0);
					this.paneUser.setOpacity(1.0);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}	
	}
	
	public boolean testLoginError() {
		boolean result=false;
		Alert alert = new Alert(AlertType.ERROR);
		alert.setTitle("Error Dialog");
		alert.setHeaderText(null);
		
		if ((login.getText().equals("")) || (password.getText().equals(""))) {
			result=true;
			alert.setContentText("Ooops, veuillez remplir tous les champs");
			alert.showAndWait();
		}
		
		return result;
	}
	
	public void showImage() {
		
		List<Integer> ids = DataShare.instance().getSelectedRecetteIds();
		int nbBoucle = DataShare.instance().getRepas();
		if (ids == null) {
			System.err.println("The id list should not be null");
			System.exit(-1);
		}
		
		//System.out.println(ids.size());

		Random rand = new Random();
		//for (int i=0;i<nbBoucle;i++) {
			//int nombre = rand.nextInt(ids.size());
			int nombre = 1;
			Integer imgNb = ids.get(nombre);
			//String filename = String.format("image/%d.jpg", imgNb);
			String filename = "image/1.jpg";
			File img = new File(filename);
			String uri = img.toURI().toString();
//			Image image = new Image("file:" + filename);
			Image image = null;
			
			try {
				image = new Image(new FileInputStream(img), 200d, 200d, true, true);
			} catch (FileNotFoundException e) {
				e.printStackTrace();
			}
			
//			Image image = null;
			
//			try (Reader br = new FileReader(new File(filename))) {
//				image = new Image(br);
//			} catch (FileNotFoundException e) {
//				e.printStackTrace();
//			} catch (IOException e) {
//				e.printStackTrace();
//			}
			
			if (this.image1 == null) {
				System.out.println("Pas de chance");
			} else {				
				if (image != null) this.image1.setImage(image);
			}
			
		//}
	}
		
	
}
