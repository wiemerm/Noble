package com.fallencosplay.noble_mp.shared

import platform.CoreBluetooth.CBPeripheral

actual class BluetoothPeripheral(actual val name: String?) {
    actual val displayName: String
        get() = name ?: "Unknown Device"
    actual companion object {}
}

fun BluetoothPeripheral.Companion.fromCBPeripheral(
    peripheral: CBPeripheral,
    advertisementData: Map<Any?, *>
): BluetoothPeripheral =
    BluetoothPeripheral(advertisementData["kCBAdvDataLocalName"] as? String ?: peripheral.name)