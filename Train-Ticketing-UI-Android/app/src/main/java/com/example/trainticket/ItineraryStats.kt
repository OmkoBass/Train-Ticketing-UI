package com.example.trainticket

import android.R.layout
import android.content.Intent
import android.os.Bundle
import android.widget.*
import androidx.appcompat.app.AppCompatActivity


class ItineraryStats : AppCompatActivity() {
    private lateinit var cost: String
    private lateinit var from: String
    private lateinit var fromTime: String
    private lateinit var sisa: String
    private lateinit var title: String
    private lateinit var to: String
    private lateinit var toTime: String
    private lateinit var travelClass: String
    private lateinit var travelClassInfo: String

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_itinerary_stats)

        cost = intent.getStringExtra("cost").toString()
        from = intent.getStringExtra("from").toString()
        fromTime = intent.getStringExtra("fromTime").toString()
        sisa = intent.getStringExtra("sisa").toString()
        title = intent.getStringExtra("title").toString()
        to = intent.getStringExtra("to").toString()
        toTime = intent.getStringExtra("toTime").toString()
        travelClass = intent.getStringExtra("travelClass").toString()
        travelClassInfo = intent.getStringExtra("travelClassInfo").toString()

        val statCost = findViewById<TextView>(R.id.itineraryStatCost)
        val statFrom = findViewById<TextView>(R.id.itineraryStatFrom)
        val statFromTime = findViewById<TextView>(R.id.itineraryStatFromTime)
        val statSisa = findViewById<TextView>(R.id.itineraryStatSisa)
        val statTitle = findViewById<TextView>(R.id.itineraryStatTitle)
        val statTo = findViewById<TextView>(R.id.itineraryStatTo)
        val statToTime = findViewById<TextView>(R.id.itineraryStatToTime)
        val statTravelClass = findViewById<TextView>(R.id.itineraryStatTravelClass)
        val statClassInfo = findViewById<TextView>(R.id.itineraryStatTravelClassInfo)

        statCost.text = cost
        statFrom.text = from
        statFromTime.text = fromTime
        statSisa.text = sisa
        statTitle.text = title
        statTo.text = to
        statToTime.text = toTime
        statTravelClass.text = travelClass
        statClassInfo.text = travelClassInfo

        val imageItineraryStatsBack = findViewById<ImageView>(R.id.imageItineraryStatsBack)

        imageItineraryStatsBack.setOnClickListener {
            onBackPressed();
        }

        val arraySpinner = arrayOf(
            "Paspor", "Drivers", "ID"
        )
        val s = findViewById<Spinner>(R.id.spinnerId)
        val adapter = ArrayAdapter(
            this,
            layout.simple_spinner_item, arraySpinner
        )
        adapter.setDropDownViewResource(layout.simple_spinner_dropdown_item)
        s.adapter = adapter

        val buttonPickSeat = findViewById<Button>(R.id.buttonPickSeat)

        buttonPickSeat.setOnClickListener {
            val intent = Intent(
                this,
                PickSeat::class.java
            )

            intent.putExtra("travelClass", travelClass)
            intent.putExtra("statClassInfo", travelClassInfo)

            startActivity(intent)
        }
    }
}