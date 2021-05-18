package com.fallencosplay.noble_mp.android

import android.app.Application
import com.fallencosplay.noble_mp.shared.appContext

class NobleApplication : Application() {
    override fun onCreate() {
        super.onCreate()
        appContext = this
        KoinConfig.start(this)
    }

    override fun onTerminate() {
        super.onTerminate()
        KoinConfig.stop()
    }
}