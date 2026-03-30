package awt;

import java.awt.*;
import java.awt.event.*;

public class MaxAWT extends Frame implements ActionListener {
    TextField t1, t2, t3, result;
    Button btn;

    public MaxAWT() {
        setLayout(new GridLayout(5, 2));

        add(new Label("Enter number 1:"));
        t1 = new TextField();
        add(t1);

        add(new Label("Enter number 2:"));
        t2 = new TextField();
        add(t2);

        add(new Label("Enter number 3:"));
        t3 = new TextField();
        add(t3);

        btn = new Button("Find Max");
        add(btn);

        add(new Label("Result:"));
        result = new TextField();
        result.setEditable(false); // make result read-only
        add(result);

        btn.addActionListener(this);

        setSize(300, 200);
        setTitle("Max Finder");
        setVisible(true);

        // Optional: Close window properly
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
            int c = Integer.parseInt(t3.getText());
            int max = Math.max(a, Math.max(b, c));
            result.setText("Max: " + max);
        } catch (NumberFormatException ex) {
            result.setText("Enter valid integers!");
        }
    }

    public static void main(String[] args) {
        new MaxAWT();
    }
}
