package com.s2rltx.projet.foodshuflle.application;
	
import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;



public class Main extends Application {

	@Override
	public void start(Stage primaryStage) {
		try {
			Parent root = FXMLLoader.load(getClass().getResource("ProjetFspPage1.fxml"));
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
//		//manager.creationRequest("DROP TABLE IF EXISTS temp_A");
//        //manager.creationRequest("CREATE TEMPORARY TABLE temp_A (id int auto_increment primary key not null, R_id int(11), Recettes varchar(250), Regimes varchar(250), I_id int(11), Ingredients varchar(250), Qtt decimal(10,2), Unites varchar(25), Groupes varchar(100), Pers int(11), Prepa int(11), Cuisson int(11), kcal int(11)");
//        manager.selectRequestStrings("select* from temp_B limit 2");

	}
}
