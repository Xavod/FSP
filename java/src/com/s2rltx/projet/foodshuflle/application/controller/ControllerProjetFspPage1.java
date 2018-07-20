package com.s2rltx.projet.foodshuflle.application.controller;

import java.awt.ScrollPane;
import java.net.URL;
import java.util.ResourceBundle;

import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.geometry.Pos;
import javafx.scene.control.Button;
import javafx.scene.control.CheckBox;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.scene.image.ImageView;
import javafx.scene.layout.StackPane;

public class ControllerProjetFspPage1 implements Initializable {

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
    /*@FXML 
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
     */

    @FXML
    private ImageView generer;
    @FXML
    private StackPane regimesAllergies;
    @FXML
    private ScrollPane scroll;

    @Override
    public void initialize(URL arg0, ResourceBundle arg1) {
        // TODO Auto-generated method stub
        for (int i = 0; i < 10; i++) {
            this.regimesAllergies.getChildren().add(new CheckBox("coucou"));
        }

        /*faire une stackPane avec un scrolbar qui va chercher dans la bdd tous les allergenes et les transforme en checkbutton
	avec un for each 
	faire une liste qui va � chaque fois exclure les noms de plats concern�s par la checkbox coch�e et g�n�rer 
	� chaque fois une nouvelle liste pour chaque case coch�e*/
    }

}
