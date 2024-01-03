


class Shape {

    public double calculateArea() {
        System.out.println("This method should be overridden by subclasses.");
        return 0.0;
    }
}

class Circle extends Shape {

    private double radius;

    public Circle(double radius) {
        this.radius = radius;
    }

    @Override
    public double calculateArea() {
        return Math.PI * radius * radius;
    }
}

class Rectangle extends Shape {
    private double length;
    private double width;

    public Rectangle(double length, double width) {
        this.length = length;
        this.width = width;
    }

    @Override
    public double calculateArea() {
        return length * width;
    }
}

public class CArea {
    public static void main(String[] args) {
        Circle cir = new Circle(68.19);
        System.out.println("The area of cicle is"+cir.calculateArea());
        Rectangle rec = new Rectangle(19.56,31.09);
        System.out.println("The area of rectangle is"+rec.calculateArea());

    }
}
