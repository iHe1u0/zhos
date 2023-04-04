package net.zhos.os.ui.screen

import android.util.Log
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material3.Button
import androidx.compose.material3.Divider
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.lifecycle.viewmodel.compose.viewModel
import coil.compose.AsyncImage
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import net.zhos.os.R
import net.zhos.os.data.HomeItem
import net.zhos.os.ui.component.SearchBar
import net.zhos.os.viewmodel.MainViewModel

private const val TAG = "MainScreen"

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun MainScreen() {

    val viewModel: MainViewModel = viewModel()
    val list = viewModel.uiState.collectAsState()

    Column {
        SearchBar()
        LazyColumn(
            verticalArrangement = Arrangement.spacedBy(4.dp),
        ) {
            items(items = list.value,
                key = { topic ->
                    topic.id
                }) {
                TopicItem(topic = it)
                Divider(color = Color.Black)
            }
        }
    }
}

@Composable
fun TopicItem(topic: HomeItem) {
    Row(
        modifier = Modifier
            .height(50.dp)
            .clickable(enabled = true) {
                Log.d(TAG, "TopicItem: ${topic.title}")
            },
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.Center
    ) {
        AsyncImage(
            model = topic.picUrl,
            modifier = Modifier
                .width(48.dp)
                .height(48.dp),
            alignment = Alignment.Center,
            placeholder = painterResource(id = R.mipmap.ic_default),
            error = painterResource(id = R.mipmap.ic_default),
            contentDescription = null,
        )
        Text(
            text = topic.title,
            modifier = Modifier
                .fillMaxWidth()
                .padding(start = 4.dp, end = 4.dp),
            textAlign = TextAlign.Start,
            maxLines = 1,
            softWrap = false,
            overflow = TextOverflow.Ellipsis
        )

    }
}
