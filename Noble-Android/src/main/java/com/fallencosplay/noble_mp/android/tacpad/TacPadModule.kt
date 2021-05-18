package com.fallencosplay.noble_mp.android.tacpad

import com.fallencosplay.noble_mp.shared.AudioService
import org.koin.dsl.module

val tacPadModule = module {
    single { TacPadViewModel(get()) }

    factory { AudioService() }
}