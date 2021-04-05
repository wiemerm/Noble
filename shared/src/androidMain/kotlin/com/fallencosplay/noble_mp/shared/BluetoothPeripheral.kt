package com.fallencosplay.noble_mp.shared

import android.bluetooth.BluetoothDevice

actual class BluetoothPeripheral(actual val name: String?) {
    actual val displayName: String
        get() = name ?: "Unknown Device"
    actual companion object {}
}

fun BluetoothPeripheral.Companion.fromBluetoothDevice(device: BluetoothDevice): BluetoothPeripheral =
    BluetoothPeripheral(device.name)