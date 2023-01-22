import SwiftUI

struct IPhone11ProXTwentyOne2View: View {
    @StateObject var iPhone11ProXTwentyOne2ViewModel = IPhone11ProXTwentyOne2ViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    VStack {
                        HStack {
                            HStack {
                                Image("img_arrowleft")
                                    .resizable()
                                    .frame(width: getRelativeWidth(24.0),
                                           height: getRelativeWidth(24.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.vertical, getRelativeHeight(2.0))
                                    .padding(.leading, getRelativeWidth(20.0))
                                    .onTapGesture {
                                        self.presentationMode.wrappedValue.dismiss()
                                    }
                                Spacer()
                                Text(StringConstants.kLblMyEvents)
                                    .font(FontScheme
                                        .kMontserratSemiBold(size: getRelativeHeight(17.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(90.0),
                                           height: getRelativeHeight(17.0), alignment: .topLeading)
                                    .padding(.vertical, getRelativeHeight(8.0))
                                Spacer()
                                Image("img_vector_1")
                                    .resizable()
                                    .frame(width: getRelativeWidth(26.0),
                                           height: getRelativeWidth(26.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.vertical, getRelativeHeight(2.0))
                                    .padding(.trailing, getRelativeWidth(19.0))
                            }
                            .frame(width: UIScreen.main.bounds.width - 20,
                                   height: getRelativeHeight(44.0), alignment: .leading)
                            .background(ColorConstants.RedA700)
                        }
                        .frame(width: UIScreen.main.bounds.width - 20,
                               height: getRelativeHeight(44.0), alignment: .leading)
                        TabsView(tabs: $iPhone11ProXTwentyOne2ViewModel.tabTogglemenuList,
                                 selectedTabIndex: $iPhone11ProXTwentyOne2ViewModel
                                     .selectedTogglemenuIndex,
                                 selectedTab: iPhone11ProXTwentyOne2ViewModel.tabTogglemenuList[0],
                                 fontSize: 14.0,
                                 fontName: FontScheme
                                     .kMontserratRomanBold(size: getRelativeHeight(14.0)),
                                 selectedFontColor: ColorConstants.WhiteA700,
                                 unSelectedFontColor: ColorConstants.WhiteA700,
                                 selectedBackColor: ColorConstants.Red700,
                                 unSelectedBackColor: ColorConstants.RedA700,
                                 cornerRadius: 12.0, type: .customBackground)
                            .frame(height: getRelativeHeight(42.0))
                            .overlay(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                                    bottomRight: 12.0)
                                    .stroke(ColorConstants.Red700,
                                            lineWidth: 5))
                            .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                       bottomLeft: 12.0, bottomRight: 12.0)
                                    .fill(ColorConstants.Red700))
                        PagerView(content: {
                            IPhone11ProXTwentyOne1View()
                            SwiftUI.EmptyView()
                        }, tabIndex: $iPhone11ProXTwentyOne2ViewModel.selectedTogglemenuIndex,
                        pagers: $iPhone11ProXTwentyOne2ViewModel.tabTogglemenuList)
                            .frame(height: getRelativeHeight(14.0), alignment: .center)
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(181.0),
                           alignment: .leading)
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(181.0),
                       alignment: .center)
                VStack {
                    Text("tabbar")
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: UIScreen.main.bounds.width - 20,
                               height: getRelativeHeight(85.0), alignment: .center)
                        .background(ColorConstants.RedA700)
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(85.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(501.0))
            }
            .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
            .background(ColorConstants.WhiteA700)
            .padding(.top, getRelativeHeight(30.0))
            .padding(.bottom, getRelativeHeight(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.WhiteA700)
        .ignoresSafeArea()
        .hideNavigationBar()
    }
}

struct IPhone11ProXTwentyOne2View_Previews: PreviewProvider {
    static var previews: some View {
        IPhone11ProXTwentyOne2View()
    }
}
