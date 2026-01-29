import java.util.Scanner;

class Matrix {
    int r, c;
    int[][] a;

    void readMatrix() {
        Scanner ob = new Scanner(System.in);

        System.out.print("Enter number of rows: ");
        r = ob.nextInt();

        System.out.print("Enter number of columns: ");
        c = ob.nextInt();

        a = new int[r][c];

        System.out.println("Enter elements of matrix:");
        for (int i = 0; i < r; i++) {
            for (int j = 0; j < c; j++) {
                a[i][j] = ob.nextInt();
            }
        }

        ob.close();
    }

    void checkSymmetric() {
        if (r != c) {
            System.out.println("Matrix is NOT symmetric (not a square matrix).");
            return;
        }

        for (int i = 0; i < r; i++) {
            for (int j = i + 1; j < c; j++) {
                if (a[i][j] != a[j][i]) {
                    System.out.println("Matrix is NOT symmetric.");
                    return;
                }
            }
        }

        System.out.println("Matrix IS symmetric.");
    }

    public static void main(String[] args) {
        Matrix obj = new Matrix();
        obj.readMatrix();
        obj.checkSymmetric();
    }
}
