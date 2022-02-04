package com.example.trainticket

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle

class PickSeat : AppCompatActivity() {
    private lateinit var travelClass: String
    private lateinit var travelClassInfo: String

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_pick_seat)
    }
}