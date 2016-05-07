package view;

import javax.swing.JFrame;

import database_connection.MySQLConnection;

/**
 * @author Martin Veres
 * @author Filip Stojkovic
 * 
 * Main class, class from which program starts by displaying login frame
 */
public class MainClass {

	public static void main(String[] args) {
		LoginFrame login = new LoginFrame();
		login.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
		login.setVisible(true);
		login.setLocationRelativeTo(null);
	}
	
}
