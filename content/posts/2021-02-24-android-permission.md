---
title: Android Permission
author: Guangzong Chen
date: 2021-02-24 12:00:00 -0500
categories: [Misc]
tags: [Java, Android]
math: true
mermaid: true
---
the content is from following link

<https://www.geeksforgeeks.org/android-how-to-request-permissions-in-android-application/>

```java
package org.geeksforgeeks.requestPermission; 
  
import android.Manifest; 
import android.content.pm.PackageManager; 
import android.support.annotation.NonNull; 
import android.support.v4.app.ActivityCompat; 
import android.support.v4.content.ContextCompat; 
import android.support.v7.app.AppCompatActivity; 
import android.os.Bundle; 
import android.view.View; 
import android.widget.Button; 
import android.widget.Toast; 
  
public class MainActivity extends AppCompatActivity { 
  
    // Defining Buttons 
    private Button storage, camera; 
  
    // Defining Permission codes. 
    // We can give any value 
    // but unique for each permission. 
    private static final int CAMERA_PERMISSION_CODE = 100; 
    private static final int STORAGE_PERMISSION_CODE = 101; 
  
    @Override
    protected void onCreate(Bundle savedInstanceState) 
    { 
        super.onCreate(savedInstanceState); 
        setContentView(R.layout.activity_main); 
  
        storage = findViewById(R.id.storage); 
        camera = findViewById(R.id.camera); 
  
        // Set Buttons on Click Listeners 
        storage.setOnClickListener(new View.OnClickListener() { 
            @Override
            public void onClick(View v) 
            { 
                checkPermission( 
                    Manifest.permission.WRITE_EXTERNAL_STORAGE, 
                    STORAGE_PERMISSION_CODE); 
            } 
        }); 
  
        camera.setOnClickListener(new View.OnClickListener() { 
            @Override
            public void onClick(View v) 
            { 
                checkPermission(Manifest.permission.CAMERA, 
                                CAMERA_PERMISSION_CODE); 
            } 
        }); 
    } 
  
    // Function to check and request permission. 
    public void checkPermission(String permission, int requestCode) 
    { 
        if (ContextCompat.checkSelfPermission(MainActivity.this, permission) 
            == PackageManager.PERMISSION_DENIED) { 
  
            // Requesting the permission 
            ActivityCompat.requestPermissions(MainActivity.this, 
                                              new String[] { permission }, 
                                              requestCode); 
        } 
        else { 
            Toast.makeText(MainActivity.this, 
                           "Permission already granted", 
                           Toast.LENGTH_SHORT) 
                .show(); 
        } 
    } 
  
    // This function is called when the user accepts or decline the permission. 
    // Request Code is used to check which permission called this function. 
    // This request code is provided when the user is prompt for permission. 
  
    @Override
    public void onRequestPermissionsResult(int requestCode, 
                                           @NonNull String[] permissions, 
                                           @NonNull int[] grantResults) 
    { 
        super
            .onRequestPermissionsResult(requestCode, 
                                        permissions, 
                                        grantResults); 
  
        if (requestCode == CAMERA_PERMISSION_CODE) { 
            if (grantResults.length > 0
                && grantResults[0] == PackageManager.PERMISSION_GRANTED) { 
                Toast.makeText(MainActivity.this, 
                               "Camera Permission Granted", 
                               Toast.LENGTH_SHORT) 
                    .show(); 
            } 
            else { 
                Toast.makeText(MainActivity.this, 
                               "Camera Permission Denied", 
                               Toast.LENGTH_SHORT) 
                    .show(); 
            } 
        } 
        else if (requestCode == STORAGE_PERMISSION_CODE) { 
            if (grantResults.length > 0
                && grantResults[0] == PackageManager.PERMISSION_GRANTED) { 
                Toast.makeText(MainActivity.this, 
                               "Storage Permission Granted", 
                               Toast.LENGTH_SHORT) 
                    .show(); 
            } 
            else { 
                Toast.makeText(MainActivity.this, 
                               "Storage Permission Denied", 
                               Toast.LENGTH_SHORT) 
                    .show(); 
            } 
        } 
    } 
} 

```
