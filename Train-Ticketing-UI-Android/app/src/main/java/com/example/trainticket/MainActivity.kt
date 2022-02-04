package com.example.trainticket

import android.content.Intent
import android.os.Bundle
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        setContentView(R.layout.activity_main)

        val itinerary = findViewById<TextView>(R.id.itinerary)

        itinerary.setOnClickListener {
            val intent = Intent(this, Itineraries::class.java)
            startActivity(intent)
        }
    }
}