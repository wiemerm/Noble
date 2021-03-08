package com.fallencosplay.noble_mp.android

import android.content.Context
import com.fallencosplay.noble_mp.android.tacpad.tacPadModule
import org.koin.android.ext.koin.androidContext
import org.koin.core.context.startKoin
import org.koin.core.context.stopKoin


class KoinConfig {
    companion object {
        private val modules = listOf(
            appModule,
            tacPadModule
        )

        fun start(context: Context) {
            startKoin {
                modules(modules)
                androidContext(context)
            }
        }

        fun stop() {
            stopKoin()
        }
    }
}