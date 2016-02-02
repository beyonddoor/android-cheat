package com.cirosantilli.android_cheat.toast;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.RelativeLayout

public class Main extends Activity {

    private int i;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.i = 0;

        final Button button = new Button(this);
        button.setText("click me");
        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Main.this.i++;
            }
        });

        final TextView tv = new TextView(this);
        tv.setText("hello world");

        setContentView(tv);
        setContentView(button);
    }

}