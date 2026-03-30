package networking;

import java.io.*;
import java.net.*;
import java.util.Scanner;

public class Client {
    public static void main(String[] args) {
        try {
            Socket s = new Socket("localhost", 5000); // connect to server
            Scanner sc = new Scanner(System.in);

            System.out.println("Enter message: ");
            String msg = sc.nextLine();

            DataOutputStream dos = new DataOutputStream(s.getOutputStream());
            dos.writeUTF(msg);

            System.out.println("Message sent to server.");

            dos.close();
            s.close();
            sc.close();
        } catch (IOException e) {
            System.out.println("Client error: " + e.getMessage());
        }
    }
}
