package com.firdous.kmpdemoandroidios

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch

class MainViewModel : ViewModel() {
    private val _museumDataList = MutableStateFlow<List<MuseumObject>>(listOf())
    val museumDataList: StateFlow<List<MuseumObject>> get() = _museumDataList

    init {
        viewModelScope.launch {
            MuseumRepository().getMuseumData().collect { data ->
                _museumDataList.update { list -> list + data }
            }
        }
    }
}
