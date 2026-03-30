package awt;

import java.awt.*;
import java.awt.event.*;

public class Calculator extends Frame implements ActionListener {
    TextField t1, t2, result;
    Button addBtn, subBtn, mulBtn, divBtn;

    public Calculator() {
        // Set layout
        setLayout(new GridLayout(5, 2));

        // Input fields
        add(new Label("Number 1:"));
        t1 = new TextField();
        add(t1);

        add(new Label("Number 2:"));
        t2 = new TextField();
        add(t2);

        // Buttons
        addBtn = new Button("ADD");
        subBtn = new Button("SUB");
        mulBtn = new Button("MUL");
        divBtn = new Button("DIV");

        add(addBtn);
        add(subBtn);
        add(mulBtn);
        add(divBtn);

        // Result field
        add(new Label("Result:"));
        result = new TextField();
        result.setEditable(false);
        add(result);

        // Add action listeners
        addBtn.addActionListener(this);
        subBtn.addActionListener(this);
        mulBtn.addActionListener(this);
        divBtn.addActionListener(this);

        // Frame settings
        setSize(300, 200);
        setTitle("Calculator");
        setVisible(true);

        // Close window properly
        addWindowListener(new WindowAdapter() {
            public void windowClosing(WindowEvent we) {
                dispose();
            }
        });
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        try {
            int a = Integer.parseInt(t1.getText());
            int b = Integer.parseInt(t2.getText());

            if (e.getSource() == addBtn) {
                result.setText("" + (a + b));
            } else if (e.getSource() == subBtn) {
                result.setText("" + (a - b));
            } else if (e.getSource() == mulBtn) {
                result.setText("" + (a * b));
            } else if (e.getSource() == divBtn) {
                if (b != 0) {
                    result.setText("" + (a / b));
                } else {
                    result.setText("Cannot divide by 0");
                }
            }
        } catch (NumberFormatException ex) {
            result.setText("Invalid input");
        }
    }

    public static void main(String[] args) {
        new Calculator();
    }
}
