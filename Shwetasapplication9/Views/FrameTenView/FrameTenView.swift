import SwiftUI

struct FrameTenView: View {
    @StateObject var frameTenViewModel = FrameTenViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        ZStack {}
            .hideNavigationBar()
            .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(335.0))
    }
}

struct FrameTenView_Previews: PreviewProvider {
    static var previews: some View {
        FrameTenView()
    }
}
