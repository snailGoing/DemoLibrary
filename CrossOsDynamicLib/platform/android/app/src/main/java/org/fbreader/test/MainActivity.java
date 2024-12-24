package org.fbreader.test;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import androidx.appcompat.app.AppCompatActivity;

import org.fbreader.test.databinding.ActivityMainBinding;

public class MainActivity extends AppCompatActivity {

    // Used to load the 'test' library on application startup.
    static {
        System.loadLibrary("test");
    }

    private ActivityMainBinding binding;
    int a = 100, b = 1;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        binding = ActivityMainBinding.inflate(getLayoutInflater());
        setContentView(binding.getRoot());

        // Example of a call to a native method
        TextView tv = binding.sampleText;
        Button bt = binding.btTest;
        bt.setText("计算: " + a + "平方-" + b + "平方");
        bt.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                tv.setText(stringFromJNI(a, b));
                a--;
                bt.setText("计算: " + a + "平方-" + b + "平方");
            }
        });
    }

    /**
     * A native method that is implemented by the 'test' native library,
     * which is packaged with this application.
     */
    public native String stringFromJNI(int a, int b);
}