import Foundation
import HealthKit
import SwiftUI

class SettingsViewModel: ObservableObject {
//    private var userDefaults: UserDefaultsWrapperProtocol
//    private let healthStore: HealthStoreProtocol?

    @Published var showHeartRate: Bool

    @Published var showStepCount: Bool

    init() {
        showHeartRate = false
        showStepCount = false
    }
}
