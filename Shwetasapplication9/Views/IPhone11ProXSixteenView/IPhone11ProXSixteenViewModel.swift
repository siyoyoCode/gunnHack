import Foundation
import SwiftUI

class IPhone11ProXSixteenViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var searchbar: String = ""
    @Published var groupfiftythreePicker1: String = "Option 1"
    @Published var groupfiftythreePicker1Values: [String] = ["Option 1", "Option 2", "Option 3"]
    @Published var akariconsStartDate: Date? = nil
    @Published var akariconsEndDate: Date? = nil
    @Published var akaricons1StartDate: Date? = nil
    @Published var akaricons1EndDate: Date? = nil
}
