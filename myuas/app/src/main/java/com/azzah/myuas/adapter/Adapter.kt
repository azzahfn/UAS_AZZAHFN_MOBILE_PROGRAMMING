package com.azzah.myuas.adapter

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import com.azzah.myuas.Model
import com.azzah.myuas.R

class Adapter (
    val film: ArrayList<Model.Data>
): RecyclerView.Adapter<Adapter.ViewHolder>(){
    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int) = ViewHolder(
        LayoutInflater.from(parent.context)
            .inflate(R.layout.adapter, parent, false)
    )

    override fun onBindViewHolder(holder: Adapter.ViewHolder, position: Int) {
        val data = film[position]
        holder.textJudul.text = data.judul
        holder.textKategori.text = data.kategori
    }

    override fun getItemCount() = film.size

    class ViewHolder(view: View): RecyclerView.ViewHolder(view){
        val textJudul = view.findViewById<TextView>(R.id.textjudul)
        val textKategori = view.findViewById<TextView>(R.id.textkategori)
    }
    public fun setData(data: List<Model.Data>){
        film.clear()
        film.addAll(data)
        notifyDataSetChanged()
    }

}