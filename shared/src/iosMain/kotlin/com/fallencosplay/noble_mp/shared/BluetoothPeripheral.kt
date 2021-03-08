package com.fallencosplay.noble_mp.shared

import platform.CoreBluetooth.CBPeripheral

fun BluetoothPeripheral.Companion.fromCBPeripheral(
    peripheral: CBPeripheral,
    advertisementData: Map<Any?, *>
): BluetoothPeripheral =
    BluetoothPeripheral(advertisementData["kCBAdvDataLocalName"] as? String ?: peripheral.name)