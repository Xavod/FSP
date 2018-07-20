package com.s2rltx.projet.foodshuflle.application.controller;

import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.ResourceBundle;

import com.s2rltx.projet.foodshuflle.application.model.DataShare;
import com.s2rltx.projet.foodshuflle.managerdatabase.DbManager;

import javafx.event.Event;
import javafx.event.EventHandler;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Cursor;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.CheckBox;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.scene.image.ImageView;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.StackPane;
import javafx.scene.layout.VBox;
import javafx.scene.text.Text;
import javafx.stage.Stage;

public class Page1_controller {
	
	
	

	public List<String> getTabGenerate() {
		return tabGenerate;
	}

	public void setTabGenerate(List<String> tabGenerate) {
		this.tabGenerate = tabGenerate;
	}



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
	@FXML
	private Button ajouter;
	@FXML 
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
	@FXML
	private CheckBox mer;
	@FXML
	private CheckBox sesame;
	@FXML
	private CheckBox poisson;
	
	@FXML
	private ImageView generer;
	@FXML
	private VBox vBoxExclusion;
	
	private String resultEx="";
	
	private List<String> tabGenerate;
	
	private boolean flagGenerate=false;
	
	DbManager manager = new DbManager();
	Page2_controller controller;
	
	
	public String addExclus() {
		this.vBoxExclusion.getChildren().add(new Text(exclusion.getText()));
		resultEx+="ingredients LIKE \"%" + exclusion.getText() + "%\" and ";
		return resultEx;
		//System.out.println(resultEx);
	}
	
	/*@FXML
	public void apparenceCursor() {
		
		generer.setOnMouseEntered(new EventHandler() {
		    public void handle(MouseEvent me) {
		        generer.setCursor(Cursor.HAND); //Change cursor to hand
		    }
			@Override
			public void handle(Event event) {
				// TODO Auto-generated method stub
				
			}
		});
	}*/
	
	@FXML
	public void generate() {
		flagGenerate = true;
		
        manager.creationRequest("DROP TABLE IF EXISTS temp_A");
        manager.creationRequest("CREATE TABLE temp_A (id int auto_increment primary key not null,"
        + " R_id int(11), Recettes varchar(250), Regimes varchar(250), I_id int(11), Ingredients varchar(250),"
        + " Qtt decimal(10,2), Unites varchar(25), Groupes varchar(100), Pers int(11), Prepa int(11), Cuisson int(11), kcal int(11))");
        manager.creationRequest("INSERT INTO temp_A (R_id, Recettes, Regimes, I_id, Ingredients, Qtt, Unites, Groupes, Pers, Prepa, Cuisson, kcal)"
                + " SELECT R_id, Recettes, Regimes, I_id, Ingredients, Qtt, Unites, Groupes, Pers, Prepa, Cuisson, kcal FROM v_globale");
        
		String V="";
		String G= "";
		String L= "";
		String S ="";
		String Se = "";
		String M ="";
		String O = "";
		String A ="";
		String F ="";
		String P ="";
		String C ="";
		
		String result = "";
		boolean flag = false;
		
		if (this.vegetarien.isSelected()) {
			//manager.selectReq("SELECT* FROM v_A WHERE regimes LIKE \"%V%\"" );
			V = "regimes LIKE \"%V%\" and ";
			flag = true;
		}
		if (this.gluten.isSelected()) {
			G ="regimes NOT LIKE \"%G%\" and ";
			flag = true;
		}
		if (this.poisson.isSelected()) {
			P = "regimes NOT LIKE \"%P%\" and ";
			flag = true;
		}
		if (this.coque.isSelected()) {
			F = "regimes NOT LIKE \"%F%\" and ";
			flag = true;
		}
		if (this.mer.isSelected()) {
			C = "regimes NOT LIKE \"%C%\" and ";
			flag = true;
		}
		if (this.moutarde.isSelected()){
			M = "regimes NOT LIKE \"%M%\" and ";
			flag = true;
		}
		if (this.arachide.isSelected()) {
			A = "regimes NOT LIKE \"%A%\" and ";
			flag = true;
		}
		if (this.lait.isSelected()) {
			L = "regimes NOT LIKE \"%L%\" and ";
			flag = true;
		}
		if (this.soja.isSelected()) {
			S = "regimes NOT LIKE \"%S%\" and ";
			flag = true;
		}
		if (this.oeuf.isSelected()) {
			O = "regimes NOT LIKE \"%O%\" and ";
			flag = true;
		}
		if(this.sesame.isSelected()) {
			Se = "regimes NOT LIKE \"%Se%\" and ";
			flag = true;
		}
	result = "WHERE " + V + S + O + Se + P + C + L + G + A + M + F + "\"";
	
	if(flag = true) {
		result = result.substring(0,(result.length()-6));
		manager.creationRequest("DROP TABLE IF EXISTS temp_B");
		manager.creationRequest("CREATE TABLE temp_B (id int auto_increment primary key not null,"
		        + " R_id int(11), Recettes varchar(250), Regimes varchar(250), I_id int(11), Ingredients varchar(250),"
		        + " Qtt decimal(10,2), Unites varchar(25), Groupes varchar(100), Pers int(11), Prepa int(11), Cuisson int(11), kcal int(11))");
		manager.creationRequest("INSERT INTO temp_B (R_id, Recettes, Regimes, I_id, Ingredients, Qtt, Unites, Groupes, Pers, Prepa, Cuisson, kcal)"
		        + " SELECT R_id, Recettes, Regimes, I_id, Ingredients, Qtt, Unites, Groupes, Pers, Prepa, Cuisson, kcal FROM temp_A " + result);
		
		
		if(resultEx.length()>0) {
			resultEx = resultEx.substring(0,(resultEx.length()-5));
			result = "SELECT R_id FROM temp_A WHERE " + resultEx;
			manager.creationRequest("DELETE FROM temp_B WHERE R_id in (" + result + ")");
			manager.selectReq("SELECT id, R_id, recettes FROM temp_B group by R_id");
		}else {manager.selectReq("SELECT id, R_id, recettes FROM temp_B group by R_id");}
	}
	else {
		manager.selectReq("SELECT id, R_id, recettes FROM temp_A group by R_id");
	}
	if(flag = false) {
		if(resultEx.length()>0) {
			resultEx = resultEx.substring(0,(resultEx.length()-5));
			manager.creationRequest("DROP TABLE IF EXISTS temp_B");
			manager.creationRequest("CREATE TABLE temp_B (id int auto_increment primary key not null,"
			        + " R_id int(11), Recettes varchar(250), Regimes varchar(250), I_id int(11), Ingredients varchar(250),"
			        + " Qtt decimal(10,2), Unites varchar(25), Groupes varchar(100), Pers int(11), Prepa int(11), Cuisson int(11), kcal int(11))");
			manager.creationRequest("INSERT INTO temp_B (R_id, Recettes, Regimes, I_id, Ingredients, Qtt, Unites, Groupes, Pers, Prepa, Cuisson, kcal)"
			        + " SELECT R_id, Recettes, Regimes, I_id, Ingredients, Qtt, Unites, Groupes, Pers, Prepa, Cuisson, kcal FROM temp_A ");
			result = "SELECT R_id FROM temp_A WHERE " + resultEx;
			manager.creationRequest("DELETE FROM temp_B WHERE R_id in (" + result + ")");
			manager.selectReq("SELECT id, R_id, recettes FROM temp_B group by R_id");
			
		}
	}
	goPage2();
	
//	new Thread(new Runnable() {
//		
//		@Override
//		public void run() {
//			try {
//				Thread.sleep(1000);
//			} catch (InterruptedException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//			
//			Page1_controller.this.controller.showImage();
//		}
//	}).start();
	}
	
	@FXML
	public void goPage2() {
		if(flagGenerate == true) {
			tabGenerate = manager.selectRequestStrings("SELECT R_id FROM temp_B GROUP BY R_id");
			
			DataShare.instance().setSelectedRecetteIds(tabGenerate);
			DataShare.instance().setRepas(nbRepas.getText());
			//System.out.println(DataShare.instance().getRepas());
			//System.out.println(getTabGenerate().size());
			try {
				Stage stage = (Stage) this.register.getScene().getWindow();

				FXMLLoader loader = new FXMLLoader(getClass().getResource("../ProjetFspPage2.fxml"));
				Parent root = loader.load();
//				Parent root = FXMLLoader.load(getClass().getResource("../ProjetFspPage2.fxml"));

				Scene scene = this.register.getScene();
				scene = new Scene(root, 800, 600);
				
				this.controller = loader.getController();

				stage.setScene(scene);
				stage.show();
				this.controller.showImage();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}
	
	
}
