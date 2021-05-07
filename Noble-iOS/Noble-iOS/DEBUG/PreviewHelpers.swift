import Foundation
import CoreBluetooth

#if DEBUG
extension Peripheral {
    private static let previewDeviceNames = [
        "raspberrypi",
        "arduino",
        "watch",
        "fitbit",
        "some_random_device",
        "seraph",
        "banshee"
        ]
    static func previewPeripherals() -> [Peripheral] {
        previewDeviceNames.map {
            Peripheral(identifier: UUID(),
                       name: $0,
                       rssi: Int.random(in: -99...99),
                       peripheral: PreviewPeripheral.randomPeripheral(),
                       status: .notConnected)
        }
    }
}

struct PreviewPeripheral: BluetoothPeripheral {
    weak var delegate: CBPeripheralDelegate?
    let name: String?
    let identifier: UUID

    static func randomPeripheral() -> PreviewPeripheral {
        PreviewPeripheral(name: "name-\(Int.random(in: 0...1000))", identifier: UUID())
    }
}
#endif
