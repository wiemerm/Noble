package com.fallencosplay.noble_mp.android.tacpad

import androidx.lifecycle.ViewModel

class TacPadViewModel(private val audioService: AudioService): ViewModel() {
    fun playClip() {
       audioService.playClip()
//        Log.v("TacPadViewModel","Play sound clip")
    }
}