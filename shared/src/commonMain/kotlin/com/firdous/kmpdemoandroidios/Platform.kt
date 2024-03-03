package com.firdous.kmpdemoandroidios

interface Platform {
    val name: String
}

expect fun getPlatform(): Platform
