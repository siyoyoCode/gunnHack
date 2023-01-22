import SwiftUI

struct IPhone11ProXTwentyOne1View: View {
    @StateObject var iPhone11ProXTwentyOne1ViewModel = IPhone11ProXTwentyOne1ViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                Text(StringConstants.kMsgYourPastEvent)
                    .font(FontScheme.kMontserratMedium(size: getRelativeHeight(14.0)))
                    .fontWeight(.medium)
                    .foregroundColor(ColorConstants.RedA700)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(251.0), height: getRelativeHeight(14.0),
                           alignment: .topLeading)
                Group {
                    NavigationLink(destination: IPhone11ProXSixteenView(),
                                   tag: "IPhone11ProXSixteenView",
                                   selection: $iPhone11ProXTwentyOne1ViewModel.nextScreen,
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

struct IPhone11ProXTwentyOne1View_Previews: PreviewProvider {
    static var previews: some View {
        IPhone11ProXTwentyOne1View()
    }
}
