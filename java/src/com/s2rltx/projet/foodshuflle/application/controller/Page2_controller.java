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
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.ResourceBundle;

import com.s2rltx.projet.foodshuflle.application.model.DataShare;
import com.s2rltx.projet.foodshuflle.managerdatabase.DbManager;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.geometry.Insets;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.layout.HBox;
import javafx.scene.layout.Pane;
import javafx.scene.layout.TilePane;
import javafx.scene.layout.VBox;
import javafx.scene.text.Text;
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
	private Button logOut;

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
	private Label label1;

	@FXML
	private ImageView image2;
	
	@FXML
	private Label label2;

	@FXML
	private ImageView image3;
	
	@FXML
	private Label label3;

	@FXML
	private ImageView image4;
	
	@FXML
	private Label label4;

	@FXML
	private ImageView image5;
	
	@FXML
	private Label label5;

	@FXML
	private ImageView image6;
	
	@FXML
	private Label label6;

	@FXML
	private ImageView image7;
	
	@FXML
	private Label label7;

	@FXML
	private ImageView image8;
	
	@FXML
	private Label label8;
	
	@FXML
	private VBox vboxFavori;
	
	@FXML
	private Button goMain;

	DbManager manager = new DbManager();
	
	List<Integer> listeFinale = new ArrayList<Integer>();
	
	List<String> datas = new ArrayList<String>();
	
	Page3_controller controller;
	Page1_controller controller1;
	
	
	

	public List<String> getDatas() {
		return datas;
	}

	public void setDatas(List<String> datas) {
		this.datas = datas;
	}

	public Pane getPaneLogin() {
		return paneLogin;
	}

	public void setPaneLogin(Pane paneLogin) {
		this.paneLogin = paneLogin;
	}

	public Pane getPaneUser() {
		return paneUser;
	}

	public void setPaneUser(Pane paneUser) {
		this.paneUser = paneUser;
	}

	public Page2_controller() {
		super();
		// this.showImage();
	}

	@Override
	public void initialize(URL arg0, ResourceBundle arg1) {
		this.paneLogin.setManaged(true);
		this.paneUser.setManaged(false);
		this.paneUser.setLayoutY(300.0);
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
	
	@FXML
	public void logOut() {
		this.paneLogin.setManaged(true);
		this.paneUser.setManaged(false);
		this.paneLogin.setOpacity(1.0);
		this.paneUser.setOpacity(0.0);
		this.login.clear();
		this.password.clear();
	}

	public void testLogin() {
		Alert alert = new Alert(AlertType.ERROR);
		alert.setTitle("Error Dialog");
		alert.setHeaderText(null);
		ResultSet rs = manager.selectRequest("SELECT U_pseudo,U_mdp FROM utilisateur WHERE U_pseudo = '"
				+ login.getText() + "' and U_mdp = '" + password.getText() + "'");
		if (testLoginError() == false) {
			try {
				if (rs.next() == false) {
					alert.setContentText("Ooops, erreur de login ou de password");
					alert.showAndWait();
				} else {
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
		boolean result = false;
		Alert alert = new Alert(AlertType.ERROR);
		alert.setTitle("Error Dialog");
		alert.setHeaderText(null);

		if ((login.getText().equals("")) || (password.getText().equals(""))) {
			result = true;
			alert.setContentText("Ooops, veuillez remplir tous les champs");
			alert.showAndWait();
		}

		return result;
	}

	public void showImage() {
		//int index0 = 0,index1 = 0,index2 = 0,index3 = 0,index4 = 0,index5 = 0,index6 = 0,index7 = 0;
		
		List<Integer>ids = DataShare.instance().getSelectedRecetteIds();
		int nbBoucle = DataShare.instance().getRepas();
		//System.out.println(ids);
		//System.out.println(nbBoucle);
		if (ids == null) {
			System.err.println("The id list should not be null");
			System.exit(-1);
		}
		Random rand = new Random();
		
		if(nbBoucle>ids.size()) {nbBoucle = ids.size();}
		
		if(nbBoucle>8) {nbBoucle = 8;}
		
//		List<String> result = new ArrayList<String>();
//		for(int i=0;i<listeFinale.size();i++) {
//			System.out.println("select recettes from temp_B where R_id = " + (listeFinale.get(i)));
//			result = (manager.selectRequestStrings("select recettes from temp_B where R_id = " + (listeFinale.get(i))));
//			System.out.println(result);
//		}
					
			for (int i = 0; i < nbBoucle; i++) {
				
				int nombre = rand.nextInt(ids.size());
				//System.out.println(ids.size());
				//System.out.println(ids);
				
				Integer imgNb = ids.get(nombre);
				
				String filename = String.format("image/" + imgNb + ".jpg");
				File img = new File(filename);

				Image image = null;

				try {
					image = new Image(new FileInputStream(img), 100d, 100d, true, true);
				} catch (FileNotFoundException e) {
					e.printStackTrace();
				}
				
//				List<String> result = new ArrayList<String>();
				
//					System.out.println("select recettes from temp_B where R_id = " + (listeFinale.get())));
//					
//					System.out.println(result);
									
				switch (i) {

				case 0:
					this.image1.setImage(image);
					ids.remove(nombre);
					//index0 = imgNb;
					listeFinale.add(imgNb);
//					result = manager.selectRequestStrings("select recettes from temp_B where R_id = " + (listeFinale.get(0)));
//					label1.setText(result.get(0));
//					label1.setOpacity(1);
					break;

				case 1:
					this.image2.setImage(image);
					ids.remove(nombre);
					//index1 = imgNb;
					listeFinale.add(imgNb);
//					result = manager.selectRequestStrings("select recettes from temp_B where R_id = " + (listeFinale.get(1)));
//					label2.setText(result.get(1));
//					label2.setOpacity(1);
					break;
					
				case 2:
					this.image3.setImage(image);
					ids.remove(nombre);
					//index2 = imgNb;
					listeFinale.add(imgNb);
//					result = manager.selectRequestStrings("select recettes from temp_B where R_id = " + (listeFinale.get(2)));
//					label3.setText(result.get(2));
//					label3.setOpacity(1);
					break;
					
				case 3:
					this.image4.setImage(image);
					ids.remove(nombre);
					//index3 = imgNb;
					listeFinale.add(imgNb);
//					result = manager.selectRequestStrings("select recettes from temp_B where R_id = " + (listeFinale.get(3)));
//					label4.setText(result.get(3));
//					label4.setOpacity(1);
					break;
					
				case 4:
					this.image5.setImage(image);
					ids.remove(nombre);
					//index4 = imgNb;
					listeFinale.add(imgNb);
//					result = manager.selectRequestStrings("select recettes from temp_B where R_id = " + (listeFinale.get(4)));
//					label5.setText(result.get(4));
//					label5.setOpacity(1);
					break;
					
				case 5:
					this.image6.setImage(image);
					ids.remove(nombre);
					//index5 = imgNb;
					listeFinale.add(imgNb);
//					result = manager.selectRequestStrings("select recettes from temp_B where R_id = " + (listeFinale.get(5)));
//					label6.setText(result.get(5));
//					label6.setOpacity(1);
					break;
					
				case 6:
					this.image7.setImage(image);
					ids.remove(nombre);
					//index6 = imgNb;
					listeFinale.add(imgNb);
//					result = manager.selectRequestStrings("select recettes from temp_B where R_id = " + (listeFinale.get(6)));
//					label7.setText(result.get(6));
//					label7.setOpacity(1);
					break;
					
				case 7:
					this.image8.setImage(image);
					ids.remove(nombre);
					//index7 = imgNb;
					listeFinale.add(imgNb);
//					result = manager.selectRequestStrings("select recettes from temp_B where R_id = " + (listeFinale.get(7)));
//					label8.setText(result.get(i));
//					label8.setOpacity(1);
					break;
				
					
				}
//				for(int j = 0;j<result.size();j++) {
//					System.out.print(result.get(j));
//				}
				
			}
//			System.out.println("index0: " + index0 +  "\n" + "index1: " + index1 + "\n" + "index2: " + index2
//					+ "\n" + "index3: " + index3 + "\n" + "index4: " + index4 + "\n" + "index5: " + index5
//					+ "\n" + "index6: " + index6 + "\n" + "index7: " + index7);
			
			
			System.out.println(listeFinale);
			titleRecipe();
		}
		
	public void titleRecipe() {
		
		List<String> result = new ArrayList<String>();
		
		if(image1.getImage()!=null) {
			result = manager.selectRequestStrings("select recettes from temp_B where P_id = " + listeFinale.get(0) + " group by P_id");
			label1.setText(result.get(0));
			label1.setOpacity(1);
			System.out.println(result.get(0));
			result.remove(0);
		}
		
		if(image2.getImage()!=null) {
			result = manager.selectRequestStrings("select recettes from temp_B where P_id = " + listeFinale.get(1) + " group by P_id");
			label2.setText(result.get(0));
			label2.setOpacity(1);
			System.out.println(result.get(0));
			result.remove(0);
		}
		
		if(image3.getImage()!=null) {
			result = manager.selectRequestStrings("select recettes from temp_B where P_id = " + listeFinale.get(2) + " group by P_id");
			label3.setText(result.get(0));
			label3.setOpacity(1);
			System.out.println(result.get(0));
			result.remove(0);
		}
		
		if(image4.getImage()!=null) {
			result = manager.selectRequestStrings("select recettes from temp_B where P_id = " + listeFinale.get(3) + " group by P_id");
			label4.setText(result.get(0));
			label4.setOpacity(1);
			System.out.println(result.get(0));
			result.remove(0);
		}
		
		if(image5.getImage()!=null) {
			result = manager.selectRequestStrings("select recettes from temp_B where P_id = " + listeFinale.get(4) + " group by P_id");
			label5.setText(result.get(0));
			label5.setOpacity(1);
			System.out.println(result.get(0));
			result.remove(0);
		}
		
		if(image6.getImage()!=null) {
			result = manager.selectRequestStrings("select recettes from temp_B where P_id = " + listeFinale.get(5) + " group by P_id");
			label6.setText(result.get(0));
			label6.setOpacity(1);
			System.out.println(result.get(0));
			result.remove(0);
		}
		
		if(image7.getImage()!=null) {
			result = manager.selectRequestStrings("select recettes from temp_B where P_id = " + listeFinale.get(6) + " group by P_id");
			label7.setText(result.get(0));
			label7.setOpacity(1);
			System.out.println(result.get(0));
			result.remove(0);
		}
		
		if(image8.getImage()!=null) {
			result = manager.selectRequestStrings("select recettes from temp_B where P_id = " + listeFinale.get(7) + " group by P_id");
			label8.setText(result.get(0));
			label8.setOpacity(1);
			System.out.println(result.get(0));
			result.remove(0);
		}
		
////		
////		}
////		
////		Alert alert = new Alert(AlertType.ERROR);
////		alert.setTitle("Information");
////		alert.setHeaderText(null);
////
////		
	}
	
	public void listeCourse() {
		
		//TilePane tilepane = new TilePane();
		String result = "";
		for (int i=0;i<listeFinale.size();i++) {
			result += "P_id = " + listeFinale.get(i) + " or ";
		}
		//System.out.println(result);
		result = result.substring(0,(result.length()-3));
				
		datas = manager.selectRequestStrings("SELECT Ingredients, ceil((sum(Qtt)/4)*" + DataShare.instance().getPersonne() + ") as total, Unites from temp_B where " + result + "group by Ingredients");
		
		for(int i=0;i<datas.size();i++) {
			System.out.print(datas.get(i) + " ");
			if(((i+1)%3)==0) {
				System.out.println("");
			}
		}
		DataShare.instance().setResult(result);
		
		try {
			Stage stage = (Stage) this.register.getScene().getWindow();

			FXMLLoader loader = new FXMLLoader(getClass().getResource("../ProjetFspPage3.fxml"));
			Parent root = loader.load();
			

			Scene scene = this.register.getScene();
			scene = new Scene(root, 800, 600);

			this.controller = loader.getController();
			
			stage.setScene(scene);
			stage.show();
			
			for(int i=0;i<(datas.size()/3);i++) {
				controller.getPane1().getChildren().add(new Text(datas.get(i*3)));
				controller.getPane2().getChildren().add(new Text(datas.get(((i*3)+1))));
				controller.getPane3().getChildren().add(new Text(datas.get(((i*3)+2))));
				
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
}
			
//			for(int i=0;i<(datas.size()/3);i++) {
//				//controller.getPane1().getChildren().add(new Text(datas.get(i*3)));
//				VBox vbox = new VBox();
//				
//				Text text = new Text(datas.get(i*3));
//				
//				vbox.getChildren().add(text);
//				
//				controller.getPane1().getChildren().add(vbox);
//				controller.getPane1().setPadding(new Insets(5,0,0,0));
////				controller.getPane2().getChildren().add(new Text(datas.get(((i*3)+1))));
////				controller.getPane3().getChildren().add(new Text(datas.get(((i*3)+2))));

		}
	public void addFavoriNotLog() {
		Alert alert = new Alert(AlertType.ERROR);
		alert.setTitle("Information");
		alert.setHeaderText(null);
		alert.setContentText("Veuillez vous connecter à votre profil");
		alert.showAndWait();
	}
	
	public void addFavoriImg1() {
		HBox hBox = new HBox();
		String filename = String.format("image/cross.png");
		File img = new File(filename);

		Image image = null;

		try {
			image = new Image(new FileInputStream(img), 10d, 10d, true, true);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		if(paneUser.getOpacity()==1.0) {
			this.vboxFavori.getChildren().add(new HBox(hBox));
			hBox.getChildren().addAll(new Text(label1.getText()),new ImageView(image));
		}else {addFavoriNotLog();}
	}
	
	public void addFavoriImg2() {
		HBox hBox = new HBox();
		String filename = String.format("image/cross.png");
		File img = new File(filename);

		Image image = null;

		try {
			image = new Image(new FileInputStream(img), 10d, 10d, true, true);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		if(paneUser.getOpacity()==1.0) {
			this.vboxFavori.getChildren().add(new HBox(hBox));
			hBox.getChildren().addAll(new Text(label2.getText()),new ImageView(image));
		}else {addFavoriNotLog();}
	}
	
	public void addFavoriImg3() {
		HBox hBox = new HBox();
		String filename = String.format("image/cross.png");
		File img = new File(filename);

		Image image = null;

		try {
			image = new Image(new FileInputStream(img), 10d, 10d, true, true);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		if(paneUser.getOpacity()==1.0) {
			this.vboxFavori.getChildren().add(new HBox(hBox));
			hBox.getChildren().addAll(new Text(label3.getText()),new ImageView(image));
		}else {addFavoriNotLog();}
	}
	
	public void addFavoriImg4() {
		HBox hBox = new HBox();
		String filename = String.format("image/cross.png");
		File img = new File(filename);

		Image image = null;

		try {
			image = new Image(new FileInputStream(img), 10d, 10d, true, true);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		if(paneUser.getOpacity()==1.0) {
			this.vboxFavori.getChildren().add(new HBox(hBox));
			hBox.getChildren().addAll(new Text(label4.getText()),new ImageView(image));
		}else {addFavoriNotLog();}
	}
	
	public void addFavoriImg5() {
		HBox hBox = new HBox();
		String filename = String.format("image/cross.png");
		File img = new File(filename);

		Image image = null;

		try {
			image = new Image(new FileInputStream(img), 10d, 10d, true, true);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		if(paneUser.getOpacity()==1.0) {
			this.vboxFavori.getChildren().add(new HBox(hBox));
			hBox.getChildren().addAll(new Text(label5.getText()),new ImageView(image));
		}
	}
	
	public void addFavoriImg6() {
		HBox hBox = new HBox();
		String filename = String.format("image/cross.png");
		File img = new File(filename);

		Image image = null;

		try {
			image = new Image(new FileInputStream(img), 10d, 10d, true, true);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		if(paneUser.getOpacity()==1.0) {
			this.vboxFavori.getChildren().add(new HBox(hBox));
			hBox.getChildren().addAll(new Text(label6.getText()),new ImageView(image));
		}else {addFavoriNotLog();}
	}
	
	public void addFavoriImg7() {
		HBox hBox = new HBox();
		String filename = String.format("image/cross.png");
		File img = new File(filename);

		Image image = null;

		try {
			image = new Image(new FileInputStream(img), 10d, 10d, true, true);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		if(paneUser.getOpacity()==1.0) {
			this.vboxFavori.getChildren().add(new HBox(hBox));
			hBox.getChildren().addAll(new Text(label7.getText()),new ImageView(image));
		}else {addFavoriNotLog();}
	}
	
	public void addFavoriImg8() {
		HBox hBox = new HBox();
		String filename = String.format("image/cross.png");
		File img = new File(filename);

		Image image = null;

		try {
			image = new Image(new FileInputStream(img), 10d, 10d, true, true);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		if(paneUser.getOpacity()==1.0) {
			this.vboxFavori.getChildren().add(new HBox(hBox));
			hBox.getChildren().addAll(new Text(label8.getText()),new ImageView(image));
		}else {addFavoriNotLog();}
	}
	
	public void goMain() {
		try {
			Stage stage = (Stage) this.register.getScene().getWindow();

			FXMLLoader loader = new FXMLLoader(getClass().getResource("../ProjetFspPage1.fxml"));
			Parent root = loader.load();
			// Parent root =
			// FXMLLoader.load(getClass().getResource("../ProjetFspPage2.fxml"));

			Scene scene = this.register.getScene();
			scene = new Scene(root, 800, 600);

			//this.controller = loader.getController();

			stage.setScene(scene);
			stage.show();
						
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}












