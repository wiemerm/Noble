package com.fallencosplay.noble_mp.shared

import platform.AVFoundation.AVAudioPlayer
import platform.Foundation.NSBundle
import platform.Foundation.NSURL

actual class AudioService {
    private var audioPlayer: AVAudioPlayer? = null

    actual fun playSoundClip(name: String) {
        audioPlayer?.stop()

       NSBundle.mainBundle.pathForResource(name, "mp3")?.let {
           val clipURL = NSURL(fileURLWithPath = it)
            audioPlayer = AVAudioPlayer(contentsOfURL = clipURL, null)
            audioPlayer?.play()
        }
    }
}
