package net.zhos.os.network

import net.zhos.os.bean.Latest
import net.zhos.os.bean.Site
import retrofit2.Call
import retrofit2.http.GET

interface ApiService {

    // get site info
    @GET("/site.json")
    fun getSiteInfo(): Call<Site>

    // get latest topic for home page
    @GET("/latest.json")
    fun getLatestTopic(): Call<Latest>

    // get all
    @GET("categories.json")
    fun getCategories()

}
