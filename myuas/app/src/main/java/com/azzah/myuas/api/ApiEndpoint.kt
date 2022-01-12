package com.azzah.myuas.api

import com.azzah.myuas.Model
import retrofit2.Call
import retrofit2.http.GET

interface ApiEndpoint {
    @GET("data.php")
    fun data() : Call<Model>
}