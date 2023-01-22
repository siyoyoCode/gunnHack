import SwiftUI

struct IPhone11ProXSixOneContainerView: View {
    @StateObject var iPhone11ProXSixOneContainerViewModel = IPhone11ProXSixOneContainerViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    Text("Content")
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(789.0))
                    Text("tabbar")
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: UIScreen.main.bounds.width - 20,
                               height: getRelativeHeight(85.0), alignment: .center)
                        .background(ColorConstants.WhiteA700)
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: IPhone11ProXTwentyThreeView(),
                                   tag: "IPhone11ProXTwentyThreeView",
                                   selection: $iPhone11ProXSixOneContainerViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: IPhone11ProXTwentySixView(),
                                   tag: "IPhone11ProXTwentySixView",
                                   selection: $iPhone11ProXSixOneContainerViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: IPhone11ProXSixteenView(),
                                   tag: "IPhone11ProXSixteenView",
                                   selection: $iPhone11ProXSixOneContainerViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.WhiteA700)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
        .onAppear {}
    }
}

struct IPhone11ProXSixOneContainerView_Previews: PreviewProvider {
    static var previews: some View {
        IPhone11ProXSixOneContainerView()
    }
}
