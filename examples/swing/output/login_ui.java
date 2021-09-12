import java.awt.*;
import javax.swing.*;

public class login_ui {
   public static void main(String[] args) {
      JFrame f = new JFrame();
      f.setLayout (new BoxLayout (BoxLayout.Y_AXIS));
      JTextField usernameTextField  = new JTextField("Username");
      f.add(usernameTextField);
      JTextField passwordTextField  = new JTextField("Password");
      f.add(passwordTextField);
      JButton loginButton = new JButton("Label");
      f.add(loginButton);

      f.setSize(400,500);
      f.setVisible(true);
   }
}
