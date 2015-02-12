package jdbc.form;

import java.sql.SQLException;

/**
 *
 * @author LukaszPapierz
 */
public class Form {

    public static void main(String[] args) throws SQLException {
       MyWin window = new MyWin();
       window.setTitle("Northwind.Customers Form");
       window.setVisible(true);
       window.setResizable(false);
       window.centreWindow();
    }
}
