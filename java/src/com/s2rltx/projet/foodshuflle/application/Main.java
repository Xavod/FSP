package com.s2rltx.projet.foodshuflle.application;
	
import com.s2rltx.projet.foodshuflle.managerdatabase.DbManager;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.stage.Stage;
import javafx.scene.Parent;
import javafx.scene.Scene;



public class Main extends Application {
	@Override
	public void start(Stage primaryStage) {
		try {
			Parent root = FXMLLoader.load(getClass().getResource("ProjetFspPage2.fxml"));
			Scene scene = new Scene(root,800,600);
			scene.getStylesheets().add(getClass().getResource("application.css").toExternalForm());
			primaryStage.setScene(scene);
			primaryStage.show();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
		launch(args);
		
//		DbManager manager = new DbManager();
//			
//		manager.selectReq("SELECT U_pseudo,U_mdp FROM utilisateur WHERE U_pseudo = 'Xavier' and U_mdp = 'TAUPIN'");
		
	}
}
