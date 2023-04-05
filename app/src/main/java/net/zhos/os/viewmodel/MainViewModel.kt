package net.zhos.os.viewmodel

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import net.zhos.os.bean.topic.LatestTopic
import net.zhos.os.data.HomeItem
import net.zhos.os.network.ApiService
import net.zhos.os.utils.RetrofitFactory
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response

private const val TAG = "MainViewModel"

class MainViewModel : ViewModel() {

    private val service = RetrofitFactory.getInstance().create(ApiService::class.java)

    private val _uiState = MutableStateFlow(mutableListOf(HomeItem()))
    val uiState: StateFlow<List<HomeItem>> = _uiState.asStateFlow()

    fun refreshTopicList() {
        service.getLatestTopic().enqueue(object : Callback<LatestTopic> {
            override fun onResponse(call: Call<LatestTopic>, response: Response<LatestTopic>) {
                val list = mutableListOf<HomeItem>()
                response.body()?.topic_list?.topics?.forEach { topic ->
                    list.add(
                        HomeItem(
                            id = topic.id,
                            title = topic.title,
                            picUrl = topic.image_url.orEmpty()
                        )
                    )
                }
                viewModelScope.launch {
                    _uiState.emit(list)
                }
            }

            override fun onFailure(call: Call<LatestTopic>, t: Throwable) {
                t.printStackTrace()
            }
        })
    }

}