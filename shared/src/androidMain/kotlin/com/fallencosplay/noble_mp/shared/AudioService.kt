package com.fallencosplay.noble_mp.shared

import android.content.Context
import android.media.MediaPlayer

lateinit var appContext: Context

actual class AudioService {
    private var mediaPlayer: MediaPlayer? = null

    actual fun playSoundClip(name: String) {
        val clip = appContext.resources.getIdentifier(name, "raw", appContext.packageName)

        if (mediaPlayer?.isPlaying == true) {
            mediaPlayer?.stop()
        }

        mediaPlayer = MediaPlayer.create(appContext, clip)
        mediaPlayer?.start()
    }
//
//    fun playSoundClip(context: Context, clip: Int) {
//        if (mediaPlayer?.isPlaying == true) {
//            mediaPlayer?.stop()
//        }
//
//        mediaPlayer = MediaPlayer.create(context, clip)
//        mediaPlayer?.start()
//    }
}