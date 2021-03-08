package com.fallencosplay.noble_mp.shared

class BluetoothPeripheral(val name: String?) {
    private val displayName: String
        get() = name ?: "Unknown device"

    companion object {}
}