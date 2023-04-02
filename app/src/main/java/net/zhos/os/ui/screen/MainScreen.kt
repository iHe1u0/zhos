package net.zhos.os.ui.screen

import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.lifecycle.viewmodel.compose.viewModel
import net.zhos.os.viewmodel.MainViewModel

@Composable
fun MainScreen() {
    val viewModel: MainViewModel = viewModel()

    Text(text = "${viewModel.data}")

}