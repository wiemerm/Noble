package com.fallencosplay.noble_mp.`Noble-Android`

import android.content.Context
import org.koin.android.ext.koin.androidContext
import org.koin.core.context.startKoin
import org.koin.core.context.stopKoin

class KoinConfig {
   companion object {
       private val modules = listOf(
           navigationModule
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