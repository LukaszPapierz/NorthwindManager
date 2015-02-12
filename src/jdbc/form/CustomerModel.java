package jdbc.form;

import java.util.ArrayList;
import javax.swing.table.AbstractTableModel;

/**
 *
 * @author LukaszPapierz
 */
public class CustomerModel extends AbstractTableModel
{
    public ArrayList customers = new ArrayList<Customer>();
    public String[] columns = {"CustomerID","CompanyName","ContactName","ContactTitle",
                                                 "Address","City","Region","PostalCode","Country","Phone","Fax"};
    
    public void addCustomer(Customer e) {
        this.customers.add(e);
    }
    
    @Override
    public int getRowCount() {
        return this.customers.size();
    }

    @Override
    public int getColumnCount() {
        return this.columns.length;
    }

    public String getColumnName(int col) {
        return columns[col];
    }
    
    @Override
    public Object getValueAt(int rowIndex, int columnIndex) {
       Customer c = (Customer) customers.get(rowIndex);
       switch (columnIndex)
       {
           case 0 : return c.CustomerID;
           case 1 : return c.CompanyName;
           case 2 : return c.ContactName;
           case 3 : return c.ContactTitle;
           case 4 : return c.Address;
           case 5 : return c.City;
           case 6 : return c.Region;
           case 7 : return c.PostalCode;
           case 8 : return c.Country;
           case 9 : return c.Phone;
           case 10 : return c.Fax;                   
       }
       return null;
    }

    void reset() {
        this.customers.clear();
    }
    
}
