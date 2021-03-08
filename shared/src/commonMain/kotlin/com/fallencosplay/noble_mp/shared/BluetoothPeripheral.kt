package com.fallencosplay.noble_mp.shared

class BluetoothPeripheral(val name: String?) {
    val displayName: String
        get() = name ?: "Unknown device"

    companion object {}
}