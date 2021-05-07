package com.fallencosplay.noble_mp.shared

import platform.Foundation.NSUserDefaults

actual class Preferences() {
    private lateinit var userDefaults: NSUserDefaults

    init {
        if (userDefaults == null) {
            userDefaults = NSUserDefaults("fallen.cosplay.noble")
        }
    }

}

interface PreferencesStorage {

}