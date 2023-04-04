package net.zhos.os.ui.component

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.text.BasicTextField
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Close
import androidx.compose.material.icons.filled.Search
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.Text
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.unit.dp

@Composable
fun SearchBar() {
    var key by remember { mutableStateOf("") }
    Box(
        modifier = Modifier.background(Color(0xFFD3D3D3))
    ) {
        BasicTextField(
            value = key,
            onValueChange = { key = it },
            maxLines = 1,
            decorationBox = {
                Row(
                    verticalAlignment = Alignment.CenterVertically,
                    modifier = Modifier.padding(horizontal = 8.dp)
                ) {
                    Icon(imageVector = Icons.Filled.Search, contentDescription = "")
                    Box(
                        modifier = Modifier
                            .padding(horizontal = 10.dp)
                            .weight(1f),
                        contentAlignment = Alignment.CenterStart
                    ) {
                        if (key.isEmpty()) {
                            Text(
                                text = "输入点东西康康吧~",
                                style = TextStyle(Color(0, 0, 0, 128)),
                                maxLines = 1
                            )
                        }
                        it()
                    }
                    if (key.isNotEmpty()) {
                        IconButton(
                            onClick = {
                                key = ""
                            },
                            modifier = Modifier.size(16.dp)
                        ) {
                            Icon(imageVector = Icons.Filled.Close, contentDescription = "")
                        }
                    }
                }
            }, modifier = Modifier
                .padding(10.dp)
                .background(Color.White, CircleShape)
                .height(30.dp)
                .fillMaxWidth()
        )
    }
}