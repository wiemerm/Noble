import SwiftUI

struct DeviceListItem: View {
    let device: Peripheral

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Name: \(device.name)")
                Text("RSSI: \(device.rssi)")
            }
            Spacer()
            Image(systemName: "circle")
        }
        .padding(.horizontal)
    }
}

struct DeviceListItem_Previews: PreviewProvider {
    static var previews: some View {
        let device = Peripheral(identifier: UUID(),
                                name: "raspberrypi",
                                rssi: -52,
                                peripheral: PreviewPeripheral(name: "Preview Device",
                                                              identifier: UUID()),
                                status: .notConnected)
        DeviceListItem(device: device)
    }
}
