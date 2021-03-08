package com.fallencosplay.noble_mp.android

import android.app.Application


class NobleApplication: Application() {

    override fun onCreate() {
        super.onCreate()
        KoinConfig.start(this)
    }

    override fun onTerminate() {
        super.onTerminate()
        KoinConfig.stop()
    }

}