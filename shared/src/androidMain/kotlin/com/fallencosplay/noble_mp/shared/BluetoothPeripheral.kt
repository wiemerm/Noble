package com.fallencosplay.noble_mp.shared

import android.bluetooth.BluetoothDevice

fun BluetoothPeripheral.Companion.fromBluetoothDevice(device: BluetoothDevice): BluetoothPeripheral =
    BluetoothPeripheral(device.name)