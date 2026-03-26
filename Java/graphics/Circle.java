package graphics;

public class Circle {
    double r;

    public Circle(double r) {
        this.r = r;
    }

    public double area() {   // ✅ MUST be double
        return Math.PI * r * r;
    }
}
