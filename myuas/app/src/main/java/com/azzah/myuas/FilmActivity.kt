package com.azzah.myuas

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import androidx.recyclerview.widget.RecyclerView
import com.azzah.myuas.adapter.Adapter
import com.azzah.myuas.api.ApiRetrofit
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response

class FilmActivity : AppCompatActivity() {

    private val api by lazy { ApiRetrofit().endpoint }
    private lateinit var filmAdapter: Adapter
    private lateinit var lisNote : RecyclerView

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_film)
        setupList()

    }

    private fun setupList(){
        lisNote = findViewById(R.id.list_film)
        filmAdapter = Adapter(arrayListOf())
        lisNote.adapter = filmAdapter
    }

    override fun onStart() {
        super.onStart()
        getNote()
    }

    private fun getNote(){
        api.data().enqueue(object : Callback<Model> {
            override fun onResponse(call: Call<Model>, response: Response<Model>) {
                if (response.isSuccessful){
                    val listData = response.body()!!.bioskop
                    filmAdapter.setData( listData )
                }
            }

            override fun onFailure(call: Call<Model>, t: Throwable) {
                Log.e("daftar_hadir",t.toString())
            }

        })
    }
}