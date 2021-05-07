// swiftlint:disable line_length
import SwiftUI

struct SettingsView: View {
    @Binding var navBarHidden: Bool
    @StateObject private var viewModel = SettingsViewModel()

    private let healthDataInstructions = "In order to display health information, ensure that read permissions have been granted under Health Settings."

    var body: some View {
        Form {
            Text(healthDataInstructions)
            Section(header: Text("DISPLAY HEALTH DATA")) {
//                Toggle(isOn: $viewModel.showHeartRate,
//                       label: { Text("Heart Rate") })
//                Toggle(isOn: $viewModel.showStepCount,
//                       label: { Text("Step Count") })
            }

            Section(header: Text("DEVICES")) {
                NavigationLink("Bluetooth", destination: BluetoothDevicesView())
            }

            Section(header: Text("ABOUT")) {
                HStack {
                    Text("Version")
                    Spacer()
                    Text("0.0.1")
                }
            }
        }
        .navigationBarTitle("Settings")
        .onAppear {
            DispatchQueue.main.async {
                navBarHidden = false
                AppDelegate.orientationLock = UIInterfaceOrientationMask.portrait
                UIDevice.current.setValue(UIInterfaceOrientation.portrait.rawValue, forKey: "orientation")
                UINavigationController.attemptRotationToDeviceOrientation()
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(navBarHidden: .constant(false))
    }
}
