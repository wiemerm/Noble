package com.fallencosplay.noble_mp.android.tacpad

import androidx.lifecycle.ViewModel
import com.fallencosplay.noble_mp.shared.AudioService

class TacPadViewModel(private val audioService: AudioService): ViewModel() {
    fun playClip(name: String) {
        audioService.playSoundClip(name)
    }
}