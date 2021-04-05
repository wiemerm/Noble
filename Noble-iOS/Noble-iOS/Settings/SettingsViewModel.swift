import Combine
import Foundation
import shared

class SettingsViewModel: ObservableObject {
    private var disposeBag = Set<AnyCancellable>()
    @Published var devices = [BluetoothPeripheral]()

    private let service: BluetoothInterface

    init(service: BluetoothInterface = BluetoothService()) {
        self.service = service
    }

    func scanForDevices() {
        print("Should start scanning for devices")

    }
}
