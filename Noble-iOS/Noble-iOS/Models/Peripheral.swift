import CoreBluetooth
import Foundation

struct Peripheral {
    let identifier: UUID
    let name: String
    let rssi: Int
    let peripheral: BluetoothPeripheral
    let status: ConnectionStatus
}

extension Peripheral: Identifiable {
    var id: UUID { identifier }
}

enum ConnectionStatus {
    case notConnected
    case connecting
    case connected
    case failure
    case unknown
}
