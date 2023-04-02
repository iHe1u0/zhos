package net.zhos.os.network

import retrofit2.http.GET

interface ApiService {

    // get site info
    @GET("/site.json")
    fun getSiteInfo():String
}
