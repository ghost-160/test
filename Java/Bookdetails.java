
import java.util.Scanner;

class Publisher{
    String pub_name;

    void getpublisher(String name){
        pub_name=name;
    }
}

class Book extends Publisher{
    String book_name;
    String author;

    void getbook(String bname,String aname)
    {
        book_name=bname;
        author=aname;
    }
}

class Literature extends Book{
    String type;
    
    void getliterature(String type){
        this.type=type;
    }
    void display(){
        System.out.println("\n Literature book details \n");
        System.out.println("Publisher : "+ pub_name);
        System.out.println("Book name : "+ book_name);
        System.err.println("Author : "+ author);
        System.out.println("Type : "+type);
    }
}

class Fiction extends Book{
    String genre;

    void getfiction(String genre){
        this.genre=genre;
    }
    void display(){
        System.out.println("\n Fiction book details \n");
        System.out.println("Publisher : "+ pub_name);
        System.out.println("Book name : "+ book_name);
        System.err.println("Author : "+ author);
        System.out.println("Genre : "+genre);
    }
}
public class Bookdetails {
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);

        Literature l=new Literature();
        Fiction f=new Fiction();

        System.out.println("Enter Literature book details : ");
        System.out.println("Publisher name : ");
        String pub=sc.nextLine();

        System.out.println("Book name : ");
        String bname=sc.nextLine();

        System.out.println("Author : ");
        String author=sc.nextLine();

        System.out.println("Type : ");
        String type=sc.nextLine();

        l.getpublisher(pub);
        l.getbook(bname, author);
        l.getliterature(type);


        System.out.println("\n Enter fiction book details : ");
        System.out.println("Publisher name : ");
        pub=sc.nextLine();

        System.out.println("Book name : ");
        bname=sc.nextLine();

        System.out.println("Author : ");
        author=sc.nextLine();

        System.out.println("Genre : ");
        String genre=sc.nextLine();

        f.getpublisher(pub);
        f.getbook(bname, author);
        f.getfiction(genre);

        l.display();
        f.display();

        sc.close();
    }
}
