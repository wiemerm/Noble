package com.fallencosplay.noble_mp.`Noble-Android`

import org.koin.dsl.module

val navigationModule = module {
    single { ContentNavigation() }
}