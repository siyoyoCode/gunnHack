import Foundation
import SwiftUI

class IPhone11ProXThirteenOneViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var searchbar: String = ""
    @Published var groupeightysevenPicker1: String = "Option 1"
    @Published var groupeightysevenPicker1Values: [String] = ["Option 1", "Option 2", "Option 3"]
}
