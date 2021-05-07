import SwiftUI

struct BluetoothDevicesView: View {
    private let tempValues = Peripheral.previewPeripherals()
        .sorted { abs($0.rssi) < abs($1.rssi) }

    var body: some View {
        VStack {
            Text("Bluetooth Devices")
                .font(.title2)
            List {
                ForEach(tempValues) { device in
                    DeviceListItem(device: device)
                        .padding(.vertical, 4)
                }
            }
        }
    }
}

struct BluetoothDevicesView_Previews: PreviewProvider {
    static var previews: some View {
        BluetoothDevicesView()
    }
}
