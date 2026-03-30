package networking;

import java.io.*;
import java.net.*;

public class Server {
    public static void main(String[] args) {
        try {
            ServerSocket ss = new ServerSocket(5000);
            System.out.println("Server Started......");

            while (true) { // Keep server running indefinitely
                Socket s = ss.accept(); // wait for a client
                DataInputStream dis = new DataInputStream(s.getInputStream());
                String msg = dis.readUTF();
                System.out.println("Message from client: " + msg);
                s.close(); // close client connection
            }

            // ss.close();  <-- keep server socket open
        } catch (IOException e) {
            System.out.println("Server error: " + e.getMessage());
        }
    }
}
