package net.zhos.os.network

import net.zhos.os.bean.category.Categories
import net.zhos.os.bean.category.SiteInfo
import net.zhos.os.bean.topic.LatestTopic
import retrofit2.Call
import retrofit2.http.GET
import retrofit2.http.Path

interface ApiService {

    // get site info
    @GET("site.json")
    fun getSiteInfo(): Call<SiteInfo>

    // get latest topic for home page
    @GET("/latest.json")
    fun getLatestTopic(): Call<LatestTopic>

    // get all
    @GET("categories.json")
    fun getCategories(): Call<Categories>

    @GET("c/{id}.json")
    fun getTopicById(@Path("id") id:Int)

}
