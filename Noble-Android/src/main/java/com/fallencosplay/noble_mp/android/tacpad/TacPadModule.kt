package com.fallencosplay.noble_mp.android.tacpad

import org.koin.dsl.module

val tacPadModule = module {
    single { TacPadViewModel(AudioService()) }
}