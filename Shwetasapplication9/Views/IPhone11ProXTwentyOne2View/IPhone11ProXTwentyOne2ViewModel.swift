import Foundation
import SwiftUI

class IPhone11ProXTwentyOne2ViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var tabTogglemenuList: [String] = ["Toggle", "Toggle One"]
    @Published var selectedTogglemenuIndex: Int = 0
    @Published var akariconsStartDate: Date? = nil
    @Published var akariconsEndDate: Date? = nil
    @Published var akaricons1StartDate: Date? = nil
    @Published var akaricons1EndDate: Date? = nil
}
