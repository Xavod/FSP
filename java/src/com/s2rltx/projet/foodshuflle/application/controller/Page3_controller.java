/**
 * 
 */
package com.s2rltx.projet.foodshuflle.application.controller;

import java.io.IOException;

import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.TextArea;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.image.ImageView;
import javafx.stage.Stage;

/**
 * @author Stéphanie
 *
 */
public class Page3_controller {

	@FXML
	private TextArea liste;
	@FXML
	private ImageView imprimer;

	@FXML
	public void imprimerClicked() {
		Alert alert = new Alert(AlertType.ERROR);
        alert.setTitle("Information Dialog");
        alert.setHeaderText(null);

        alert.setContentText("Fonctionnalité en cours de construction");
        alert.showAndWait();
		
	}
}