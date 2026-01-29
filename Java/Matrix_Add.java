import java.util.Scanner;

class Matrix {
    int r, c;
    int[][] a, b, sum;

    void readMatrix() {
        Scanner ob = new Scanner(System.in);

        System.out.print("Enter number of rows: ");
        r = ob.nextInt();

        System.out.print("Enter number of columns: ");
        c = ob.nextInt();

        a = new int[r][c];
        b = new int[r][c];
        sum = new int[r][c];

        System.out.println("Enter elements of matrix A:");
        for (int i = 0; i < r; i++) {
            for (int j = 0; j < c; j++) {
                a[i][j] = ob.nextInt();
            }
        }

        System.out.println("Enter elements of matrix B:");
        for (int i = 0; i < r; i++) {
            for (int j = 0; j < c; j++) {
                b[i][j] = ob.nextInt();
            }
        }

        ob.close();
    }

    void addMatrix() {
        for (int i = 0; i < r; i++) {
            for (int j = 0; j < c; j++) {
                sum[i][j] = a[i][j] + b[i][j];
            }
        }
    }

    void display() {
        System.out.println("The sum of matrices:");
        for (int i = 0; i < r; i++) {
            for (int j = 0; j < c; j++) {
                System.out.print(sum[i][j] + " ");
            }
            System.out.println();
        }
    }



    public static void main(String[] args) {
        Matrix obj = new Matrix();
        obj.readMatrix();
        obj.addMatrix();
        obj.display();
    }
}
