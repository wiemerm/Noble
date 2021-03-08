import Combine
import Foundation
import shared

class SettingsViewModel: ObservableObject {
    private var disposeBag = Set<AnyCancellable>()
    @Published var devices = [BluetoothPeripheral]()

    private let service: BluetoothService

    init(service: BluetoothService = BluetoothService()) {
        self.service = service
    }

    func scanForDevices() {
        service.fakeOutDevices()

        createPublisher(wrapper: service.getBluetoothDevices())
            .compactMap { $0 as? [BluetoothPeripheral] }
            .subscribe(on: DispatchQueue.main)
            .sink(receiveCompletion: { _ in }, receiveValue: { [weak self] devices in
                self?.devices = devices
            })
            .store(in: &disposeBag)
    }
}
