package com.example.trainticket

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.GridView
import android.widget.ImageView
import itineraryAdapter
import models.itinerary

class Itineraries : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_itineraries)

        val imageItinerariesBack = findViewById<ImageView>(R.id.imageItinerariesBack)

        imageItinerariesBack.setOnClickListener {
            onBackPressed();
        }

        val gridView = findViewById<GridView>(R.id.itinerariesGrid)

        val itineraries: ArrayList<itinerary> = arrayListOf()

        itineraries.add(itinerary(
            "Rp149.000", "PWT", "14:00", "Sisa 2", "Joglosemarkerto",
            "SLO", "18:35", "Ekonomi - A", "6 jam 35 menit"
        ))

        itineraries.add(itinerary(
            "Rp74.000", "PWT", "06:30", "Sisa 24", "Joglosemarkerto",
            "SLO", "11:35", "Ekonomi - C", "5 jam 5 menit"
        ))

        itineraries.add(itinerary(
            "335.000", "PWT", "03:00", "", "Bima",
            "SLO", "06:35", "Efsekutif - A", "3 jam 35 menit"
        ))

        itineraries.add(itinerary(
            "Rp149.000", "PWT", "14:00", "Sisa 2", "Bengawan",
            "SLO", "18:35", "Ekonomi - A", "6 jam 35 menit"
        ))

        itineraries.add(itinerary(
            "Rp149.000", "PWT", "14:00", "Sisa 2", "Joglosemarkerto",
            "SLO", "18:35", "Ekonomi - A", "6 jam 35 menit"
        ))

        itineraries.add(itinerary(
            "Rp149.000", "PWT", "14:00", "Sisa 2", "Joglosemarkerto",
            "SLO", "18:35", "Ekonomi - A", "6 jam 35 menit"
        ))

        itineraries.add(itinerary(
            "Rp149.000", "PWT", "14:00", "Sisa 2", "Joglosemarkerto",
            "SLO", "18:35", "Ekonomi - A", "6 jam 35 menit"
        ))

        itineraries.add(itinerary(
            "Rp149.000", "PWT", "14:00", "Sisa 2", "Joglosemarkerto",
            "SLO", "18:35", "Ekonomi - A", "6 jam 35 menit"
        ))

        itineraries.add(itinerary(
            "Rp149.000", "PWT", "14:00", "Sisa 2", "Joglosemarkerto",
            "SLO", "18:35", "Ekonomi - A", "6 jam 35 menit"
        ))

        itineraries.add(itinerary(
            "Rp149.000", "PWT", "14:00", "Sisa 2", "Joglosemarkerto",
            "SLO", "18:35", "Ekonomi - A", "6 jam 35 menit"
        ))

        gridView.adapter = itineraryAdapter(this, itineraries)
        gridView.setOnItemClickListener { _, _, position, _ ->
            val intent = Intent(
                this,
                ItineraryStats::class.java
            )
            intent.putExtra("cost", itineraries[position].cost)
            intent.putExtra("from", itineraries[position].from)
            intent.putExtra("fromTime", itineraries[position].fromTime)
            intent.putExtra("sisa", itineraries[position].sisa)
            intent.putExtra("title", itineraries[position].title)
            intent.putExtra("to", itineraries[position].to)
            intent.putExtra("toTime", itineraries[position].toTime)
            intent.putExtra("travelClass", itineraries[position].travelClass)
            intent.putExtra("travelClassInfo", itineraries[position].travelClassInfo)

            startActivity(intent)
        }
    }
}