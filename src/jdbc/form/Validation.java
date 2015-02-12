package jdbc.form;

import java.util.LinkedList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 *
 * @author LukaszPapierz
 */
public class Validation {
    
    public LinkedList messages;
    public Pattern pattern;
    public Matcher matcher;
    public String title = "Validation error!";
    public boolean correct;
    
    public Validation(boolean correct) {
        this.correct = correct;
        this.messages = new LinkedList<String>();
    }
    
    public boolean isAlphaNum(String in) {
        pattern = Pattern.compile("[A-Za-z0-9 ]*");
        matcher = pattern.matcher(in);
        if(matcher.matches()) {
            return true;
        } else {
            this.correct = false;
            return false;
        }
    }
    
    public boolean isLetters(String in) {
        pattern = Pattern.compile("[a-zA-Z ]*");
        matcher = pattern.matcher(in);
        if(matcher.matches()) {
            return true;
        } else {
            this.correct = false;
            return false;
        }
    }
    
    public boolean isNum(String in) {
        pattern = Pattern.compile("[0-9 ()]*");
        matcher = pattern.matcher(in);
        if(matcher.matches()) {
            return true;
        } else {
            this.correct = false;
            return false;
        }
    }
    
}
