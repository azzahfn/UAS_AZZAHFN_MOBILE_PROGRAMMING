package com.azzah.myuas

class Model (
    val bioskop: List<Data>
) {
    data class Data (val id:String?, val judul:String?, val kategori:String?)
}
