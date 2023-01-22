import SwiftUI

struct IPhone11ProXTwentyOneView: View {
    @StateObject var iPhone11ProXTwentyOneViewModel = IPhone11ProXTwentyOneViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                Text(StringConstants.kMsgEventsAndClub)
                    .font(FontScheme.kMontserratMedium(size: getRelativeHeight(14.0)))
                    .fontWeight(.medium)
                    .foregroundColor(ColorConstants.RedA700)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .frame(width: getRelativeWidth(262.0), height: getRelativeHeight(29.0),
                           alignment: .center)
                Group {
                    NavigationLink(destination: IPhone11ProXSixteenView(),
                                   tag: "IPhone11ProXSixteenView",
                                   selection: $iPhone11ProXTwentyOneViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct IPhone11ProXTwentyOneView_Previews: PreviewProvider {
    static var previews: some View {
        IPhone11ProXTwentyOneView()
    }
}
