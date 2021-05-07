import CoreBluetooth
import Foundation

protocol BluetoothPeripheral {
    var delegate: CBPeripheralDelegate? { get set }
    var name: String? { get }
    var identifier: UUID { get }

}

extension CBPeripheral: BluetoothPeripheral {}
