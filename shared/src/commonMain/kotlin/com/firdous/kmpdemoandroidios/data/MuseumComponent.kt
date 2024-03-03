package com.firdous.kmpdemoandroidios.data

import io.ktor.client.HttpClient
import io.ktor.client.call.body
import io.ktor.client.plugins.contentnegotiation.ContentNegotiation
import io.ktor.client.request.get
import io.ktor.http.ContentType
import io.ktor.serialization.kotlinx.json.json
import kotlinx.serialization.json.Json

class MuseumComponent {
    private val API_URL =
        "https://raw.githubusercontent.com/Kotlin/KMP-App-Template/main/list.json"

    private val httpClient = HttpClient {
        install(ContentNegotiation) {
            json(
                Json {
                    prettyPrint = true
                    isLenient = true
                    ignoreUnknownKeys = true
                },
                contentType = ContentType.Any,
            )
        }
    }

    suspend fun getMuseumData(): List<MuseumObject> {
        return try {
            httpClient.get(API_URL).body()
        } catch (e: Exception) {
            println("Exception during getting museum data $e")
            emptyList()
        }
    }
}
