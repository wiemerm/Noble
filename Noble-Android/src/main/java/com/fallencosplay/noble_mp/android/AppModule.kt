package com.fallencosplay.noble_mp.android

import org.koin.dsl.module

val appModule = module {
    single { ContentNavigation() }
}