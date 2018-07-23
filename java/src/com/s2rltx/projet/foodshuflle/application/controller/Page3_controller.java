package com.s2rltx.projet.foodshuflle.application.controller;



import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintStream;
import java.net.URL;
import java.util.ResourceBundle;

import com.s2rltx.projet.foodshuflle.application.model.DataShare;
import com.s2rltx.projet.foodshuflle.managerdatabase.DbManager;

import javafx.application.Platform;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Alert;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.control.TextArea;
import javafx.scene.image.ImageView;
import javafx.scene.layout.StackPane;
import javafx.scene.layout.VBox;

public class Page3_controller implements Initializable {

	private String textInList;
	
	public String getTextInList() {
		return textInList;
	}

	public void setTextInList(String textInList) {
		this.textInList = textInList;
	}

	@FXML
	private TextArea liste;
	
	@FXML
	private ImageView imprimer;
	
	@FXML
	private VBox VBox1;
	
	@FXML
	private VBox VBox2;
	
	@FXML
	private VBox VBox3;
	
		
	DbManager manager = new DbManager();
	
		
	public VBox getVBox1() {
		return VBox1;
	}

	public void setVBox1(VBox vBox1) {
		VBox1 = vBox1;
	}

	public VBox getVBox2() {
		return VBox2;
	}

	public void setVBox2(VBox vBox2) {
		VBox2 = vBox2;
	}

	public VBox getVBox3() {
		return VBox3;
	}

	public void setVBox3(VBox vBox3) {
		VBox3 = vBox3;
	}

	@FXML
	public void imprimerClicked() {
		Alert alert = new Alert(AlertType.ERROR);
        alert.setTitle("Information Dialog");
        alert.setHeaderText(null);

        alert.setContentText("Fonctionnalité en cours de construction");
        alert.showAndWait();
		
	}

//	public void appendText(String str) {
//	    Platform.runLater(() -> liste.appendText(str));
//	}
//	
//	@Override
//	public void initialize(URL arg0, ResourceBundle arg1) {
//		String result = DataShare.instance().getResult();
//		//liste.setText(manager.selectReq("SELECT Ingredients, sum(Qtt) as total from temp_B where " + result + "group by Ingredients"));
//		
//	}
	
	@Override
	public void initialize(URL location, ResourceBundle resources) {
//	    OutputStream out = new OutputStream() {
//	        @Override
//	        public void write(int b) throws IOException {
//	            appendText(String.valueOf((char) b));
//	        }
//	    };
//	    System.setOut(new PrintStream(out, true));
	    
	    //this.liste.setText(getTextInList());
		
		
	}
	
	
}
