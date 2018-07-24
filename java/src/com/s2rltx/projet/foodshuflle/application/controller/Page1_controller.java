package com.s2rltx.projet.foodshuflle.application.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.URL;
import java.sql.ResultSet;
import java.sql.SQLException;
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
import javafx.scene.control.Alert;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.control.Button;
import javafx.scene.control.CheckBox;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.HBox;
import javafx.scene.layout.Pane;
import javafx.scene.layout.StackPane;
import javafx.scene.layout.VBox;
import javafx.scene.text.Text;
import javafx.stage.Stage;

public class Page1_controller implements Initializable {

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
	private Button go;
	
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

	private String resultEx = "";

	private List<String> tabGenerate;

	private boolean flagGenerate = false;

	DbManager manager = new DbManager();
	Page2_controller controller;
	
	
	
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

	public String addExclus() {
		HBox hBox = new HBox();
		String filename = String.format("image/cross.png");
		File img = new File(filename);

		Image image = null;

		try {
			image = new Image(new FileInputStream(img), 10d, 10d, true, true);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		Alert alert = new Alert(AlertType.ERROR);
		alert.setTitle("Error Dialog");
		alert.setHeaderText(null);
		ResultSet rs = manager.selectRequest("SELECT I_nom FROM ingredient WHERE I_nom = '"
				+ exclusion.getText() + "'");
		if (!exclusion.getText().equals("")) {
			try {
				if (rs.next() == false) {
					alert.setContentText("Ooops, votre ingrédient n'est pas reconnu");
					alert.showAndWait();
				} else {
					this.vBoxExclusion.getChildren().add(new HBox(hBox));
					hBox.getChildren().addAll(new Text(exclusion.getText()),new ImageView(image));
					this.exclusion.clear();
					resultEx += "ingredients LIKE \"%" + exclusion.getText() + "%\" and ";
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
//		if(!hBox.getOnMouseClicked()) {
//			hBox.setManaged(false);
//		}
			
		
		return resultEx;
		
	}

	@FXML
	public void generate() {
		
		boolean flagPers = false;
		boolean flagRepas = false;

		if (nbPers.getText().matches("\\d{1,3}") && !nbPers.getText().equals("0")) {
			flagPers = true;
		} else {
			Alert alert = new Alert(AlertType.ERROR);
			alert.setTitle("Information Dialog");
			alert.setHeaderText(null);

			alert.setContentText("Veuillez indiquer un nombre de personnes");
			alert.showAndWait();
		}

		if (nbRepas.getText().matches("\\d") && !nbRepas.getText().equals("0")) {
			flagRepas = true;
		} else {
			Alert alert = new Alert(AlertType.ERROR);
			alert.setTitle("Information Dialog");
			alert.setHeaderText(null);

			alert.setContentText("Veuillez indiquer un nombre de repas entre 1 et 8");
			alert.showAndWait();
		}
		
		if (flagPers == true && flagRepas == true) {
		
		flagGenerate = true;

		manager.creationRequest("DROP TABLE IF EXISTS temp_A");
		manager.creationRequest("CREATE TABLE temp_A (id int auto_increment primary key not null,"
				+ " R_id int(11), Recettes varchar(250), Regimes varchar(250), I_id int(11), Ingredients varchar(250),"
				+ " Qtt decimal(10,2), Unites varchar(25), Groupes varchar(100), Pers int(11), Prepa int(11), Cuisson int(11), kcal int(11))");
		manager.creationRequest(
				"INSERT INTO temp_A (R_id, Recettes, Regimes, I_id, Ingredients, Qtt, Unites, Groupes, Pers, Prepa, Cuisson, kcal)"
						+ " SELECT R_id, Recettes, Regimes, I_id, Ingredients, Qtt, Unites, Groupes, Pers, Prepa, Cuisson, kcal FROM v_globale");

		String V = "";
		String G = "";
		String L = "";
		String S = "";
		String Se = "";
		String M = "";
		String O = "";
		String A = "";
		String F = "";
		String P = "";
		String C = "";
		String LESS = "";
		String BETWEEN = "";
		String SUP = "";
		
		String result = "";
		String resultTime ="";
		
		boolean flag = false;
		boolean flagTime = false;

		if (this.vegetarien.isSelected()) {
			// manager.selectReq("SELECT* FROM v_A WHERE regimes LIKE \"%V%\"" );
			V = "regimes LIKE \"%V%\" and ";
			flag = true;
		}
		if (this.gluten.isSelected()) {
			G = "regimes NOT LIKE \"%G%\" and ";
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
		if (this.moutarde.isSelected()) {
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
		if (this.sesame.isSelected()) {
			Se = "regimes NOT LIKE \"%Se%\" and ";
			flag = true;
		}
		
		if (this.less30min.isSelected()) {
			LESS = "(prepa+cuisson) < 30 or ";
			flagTime = true;
		}
		
		if (this.entre3060min.isSelected()) {
			BETWEEN = "(prepa+cuisson) between 30 and 60 or ";
			flagTime = true;
		}
		
		if (this.plus1h.isSelected()) {
			SUP = "(prepa+cuisson) > 60 or ";
			flagTime = true;
		}
		
			
		if(flagTime == true) {
			resultTime = LESS + BETWEEN + SUP;
			resultTime = resultTime.substring(0, (resultTime.length()-4));
			result = "WHERE " + resultTime + " and "+ V + S + O + Se + P + C + L + G + A + M + F + "\"";
		}else {result = "WHERE " + V + S + O + Se + P + C + L + G + A + M + F + "\"";}
		
		

		

		if (flag = true) {
			result = result.substring(0, (result.length() - 6));
			manager.creationRequest("DROP TABLE IF EXISTS temp_B");
			manager.creationRequest("CREATE TABLE temp_B (id int auto_increment primary key not null,"
					+ " R_id int(11), Recettes varchar(250), Regimes varchar(250), I_id int(11), Ingredients varchar(250),"
					+ " Qtt decimal(10,2), Unites varchar(25), Groupes varchar(100), Pers int(11), Prepa int(11), Cuisson int(11), kcal int(11))");
			manager.creationRequest(
					"INSERT INTO temp_B (R_id, Recettes, Regimes, I_id, Ingredients, Qtt, Unites, Groupes, Pers, Prepa, Cuisson, kcal)"
							+ " SELECT R_id, Recettes, Regimes, I_id, Ingredients, Qtt, Unites, Groupes, Pers, Prepa, Cuisson, kcal FROM temp_A "
							+ result);

			if (resultEx.length() > 0) {
				resultEx = resultEx.substring(0, (resultEx.length() - 5));
				result = "SELECT R_id FROM temp_A WHERE " + resultEx;
				manager.creationRequest("DELETE FROM temp_B WHERE R_id in (" + result + ")");
				manager.selectReq("SELECT id, R_id, recettes FROM temp_B group by R_id");
			} else {
				manager.selectReq("SELECT id, R_id, recettes FROM temp_B group by R_id");
			}
		} else {
			manager.selectReq("SELECT id, R_id, recettes FROM temp_A group by R_id");
		}
		if (flag = false) {
			if (resultEx.length() > 0) {
				resultEx = resultEx.substring(0, (resultEx.length() - 5));
				manager.creationRequest("DROP TABLE IF EXISTS temp_B");
				manager.creationRequest("CREATE TABLE temp_B (id int auto_increment primary key not null,"
						+ " R_id int(11), Recettes varchar(250), Regimes varchar(250), I_id int(11), Ingredients varchar(250),"
						+ " Qtt decimal(10,2), Unites varchar(25), Groupes varchar(100), Pers int(11), Prepa int(11), Cuisson int(11), kcal int(11))");
				manager.creationRequest(
						"INSERT INTO temp_B (R_id, Recettes, Regimes, I_id, Ingredients, Qtt, Unites, Groupes, Pers, Prepa, Cuisson, kcal)"
								+ " SELECT R_id, Recettes, Regimes, I_id, Ingredients, Qtt, Unites, Groupes, Pers, Prepa, Cuisson, kcal FROM temp_A ");
				result = "SELECT R_id FROM temp_A WHERE " + resultEx;
				manager.creationRequest("DELETE FROM temp_B WHERE R_id in (" + result + ")");
				manager.selectReq("SELECT id, R_id, recettes FROM temp_B group by R_id");

			}
		}

		// boolean flag = false;
		// boolean flag2 = false;
		// String result;
		// String result2;
		// List<String> list_regime = new ArrayList<>();
		// List<String> list_tps = new ArrayList<>();
		//
		// if (this.vegetarien.isSelected()) {
		// flag = true;
		// list_regime.add("regimes LIKE '%v%'");
		// }
		// if (this.gluten.isSelected()) {
		// flag = true;
		// list_regime.add("regimes NOT LIKE '%g%'");
		// }
		// if (this.poisson.isSelected()) {
		// flag = true;
		// list_regime.add("regimes NOT LIKE '%p%'");
		// }
		// if (this.coque.isSelected()) {
		// flag = true;
		// list_regime.add("regimes NOT LIKE '%f%'");
		// }
		// if (this.mer.isSelected()) {
		// flag = true;
		// list_regime.add("regimes NOT LIKE '%c%'");
		// }
		// if (this.moutarde.isSelected()) {
		// flag = true;
		// list_regime.add("regimes NOT LIKE '%m%'");
		// }
		// if (this.arachide.isSelected()) {
		// flag = true;
		// list_regime.add("regimes NOT LIKE '%a%'");
		// }
		// if (this.lait.isSelected()) {
		// flag = true;
		// list_regime.add("regimes NOT LIKE '%l%'");
		// }
		// if (this.soja.isSelected()) {
		// flag = true;
		// list_regime.add("regimes NOT LIKE '%s%'");
		// }
		// if (this.oeuf.isSelected()) {
		// flag = true;
		// list_regime.add("regimes NOT LIKE '%o%'");
		// }
		// if (this.sesame.isSelected()) {
		// flag = true;
		// list_regime.add("regimes NOT LIKE '%se%'");
		// }
		// if (this.less30min.isSelected()) {
		// flag2 = true;
		// list_tps.add("(Prepa + Cuisson) < 30");
		// }
		//
		// if (this.entre3060min.isSelected()) {
		// flag2 = true;
		// list_tps.add("(Prepa + Cuisson) between 30 and 60");
		// }
		//
		// if (this.plus1h.isSelected()) {
		// flag2 = true;
		// list_tps.add("(Prepa + Cuisson) > 60");
		// }
		//
		// // r affiche tout
		// String r = "select P_id, Recettes from v_globale";
		// if (!flag) {
		// result = "";
		// } else {
		// result = String.join(" AND ", list_regime);
		// r = String.format("%s where %s", r, result);
		// }
		// if (!flag2) {
		// result2 = "";
		// } else {
		// result2 = String.join(" OR ", list_tps);
		// r = String.format("%s and %s", r, result2);
		// }
		// r = String.format("%s group by P_id", r);
		// System.out.println(r);
		// manager.selectReq(r);

		
			goPage2();
		}
	}

	@FXML
	public void goPage2() {

		if (flagGenerate == true) {
			tabGenerate = manager.selectRequestStrings("SELECT R_id FROM temp_B GROUP BY R_id");

			if (tabGenerate.size() < Integer.parseInt(nbRepas.getText())) {
				Alert alert = new Alert(AlertType.ERROR);
				alert.setTitle("Information Dialog");
				alert.setHeaderText(null);

				alert.setContentText(
						"Au vu des restrictions, le nombre de recettes possibles est inférieur au nombre demandé");
				alert.showAndWait();
			}

			DataShare.instance().setSelectedRecetteIds(tabGenerate);
			DataShare.instance().setRepas(nbRepas.getText());
			DataShare.instance().setPersonne(nbPers.getText());
			// System.out.println(DataShare.instance().getRepas());
			// System.out.println(getTabGenerate().size());
			try {
				Stage stage = (Stage) this.register.getScene().getWindow();

				FXMLLoader loader = new FXMLLoader(getClass().getResource("../ProjetFspPage2.fxml"));
				Parent root = loader.load();
				// Parent root =
				// FXMLLoader.load(getClass().getResource("../ProjetFspPage2.fxml"));

				Scene scene = this.register.getScene();
				scene = new Scene(root, 800, 600);

				this.controller = loader.getController();

				stage.setScene(scene);
				stage.show();
				this.controller.showImage();
				if(this.paneLogin.isManaged()==false) {
					this.controller.getPaneLogin().setManaged(false);
					this.controller.getPaneUser().setManaged(true);
					this.controller.getPaneLogin().setOpacity(0.0);
					this.controller.getPaneUser().setOpacity(1.0);
				}
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}

}
