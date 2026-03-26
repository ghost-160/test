
import java.util.Scanner;

public class LoginTest {
    static void authenticate(String username,String password) throws LoginException{
        String validUser="admin";
        String validPass="1234";

        if(!username.equals(validUser)|| ! password.equals(validPass)){
            throw new LoginException("Invalid username or password ");
        }
    }
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);

        System.out.println("Enter username: ");
        String username=sc.nextLine();
        System.out.println("Enter password: ");
        String password=sc.nextLine();

        try {
            authenticate(username, password);
            System.out.println("Login successfull..");
        } catch (LoginException e) {
            System.out.println("ERROR : "+ e.getMessage());
        }
        sc.close();
    }
}
