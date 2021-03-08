package com.fallencosplay.noble_mp.shared

import kotlinx.coroutines.channels.ConflatedBroadcastChannel
import kotlinx.coroutines.flow.asFlow

class BluetoothService {
    private val devices: MutableList<BluetoothPeripheral> = mutableListOf()
    private val devicesChannel = ConflatedBroadcastChannel<List<BluetoothPeripheral>>()

    fun getBluetoothDevices(): FlowWrapper<List<BluetoothPeripheral>> = FlowWrapper(devicesChannel.asFlow())

    fun fakeOutDevices() {
            val device1 = BluetoothPeripheral("Fake Device 1")
            val device2 = BluetoothPeripheral("Fake Device 2")
            val device3 = BluetoothPeripheral("Fake Device 3")

            devices.addAll(listOf(device1, device2, device3))
            devicesChannel.offer(devices)
    }
}