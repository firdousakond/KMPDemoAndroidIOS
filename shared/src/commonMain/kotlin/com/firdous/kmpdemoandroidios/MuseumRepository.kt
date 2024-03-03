package com.firdous.kmpdemoandroidios

import com.firdous.kmpdemoandroidios.data.MuseumComponent
import com.firdous.kmpdemoandroidios.data.MuseumObject
import com.rickclephas.kmp.nativecoroutines.NativeCoroutines
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.flow

class MuseumRepository {
    private val museumComponent = MuseumComponent()

    @NativeCoroutines
    fun getMuseumData(): Flow<List<MuseumObject>> = flow {
        emit(museumComponent.getMuseumData())
    }
}
