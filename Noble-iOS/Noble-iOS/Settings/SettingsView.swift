import SwiftUI
import shared

struct SettingsView: View {
    @ObservedObject var viewModel: SettingsViewModel

    var body: some View {
        VStack {
            Text("This is for the settings screen.")
            Button("Scan for Devices") {
                viewModel.scanForDevices()
            }

            List(viewModel.devices) { device in
                Text(device.displayName)
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(viewModel: SettingsViewModel())
    }
}


extension BluetoothPeripheral: Identifiable { }
