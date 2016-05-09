package view;

import javax.swing.JFrame;

import controller.Controller;
import database_connection.MySQLConnection;

/**
 * @author Martin Veres
 * @author Filip Stojkovic
 * 
 * Main class, class from which program starts by displaying login frame
 */
public class MainClass {

	public static void main(String[] args) {
		Controller.showInformationDatabaseDialog();
		Controller.showLoginFrame();
	}
	
}
