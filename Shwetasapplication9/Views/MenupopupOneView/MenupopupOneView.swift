import SwiftUI

struct MenupopupOneView: View {
    @StateObject var menupopupOneViewModel = MenupopupOneViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack(alignment: .trailing, spacing: 0) {
                        Image("img_vector")
                            .resizable()
                            .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.horizontal, getRelativeWidth(22.0))
                    }
                    .frame(width: getRelativeWidth(280.0), height: getRelativeHeight(24.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(45.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Button(action: {
                            menupopupOneViewModel.nextScreen = "IPhone11ProXEighteenOneView"
                        }, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblMyProfile)
                                    .font(FontScheme
                                        .kMontserratSemiBold(size: getRelativeHeight(17.0)))
                                    .fontWeight(.semibold)
                                    .padding(.horizontal, getRelativeWidth(30.0))
                                    .padding(.vertical, getRelativeHeight(29.0))
                                    .foregroundColor(ColorConstants.RedA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(280.0),
                                           height: getRelativeHeight(80.0), alignment: .center)
                                    .background(ColorConstants.WhiteA700)
                            }
                        })
                        .frame(width: getRelativeWidth(280.0), height: getRelativeHeight(80.0),
                               alignment: .center)
                        .background(ColorConstants.WhiteA700)
                        Button(action: {
                            menupopupOneViewModel.nextScreen = "IPhone11ProXEight1View"
                        }, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblMyClubs)
                                    .font(FontScheme
                                        .kMontserratSemiBold(size: getRelativeHeight(17.0)))
                                    .fontWeight(.semibold)
                                    .padding(.horizontal, getRelativeWidth(30.0))
                                    .padding(.vertical, getRelativeHeight(29.0))
                                    .foregroundColor(ColorConstants.RedA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(280.0),
                                           height: getRelativeHeight(80.0), alignment: .center)
                                    .background(ColorConstants.WhiteA700)
                            }
                        })
                        .frame(width: getRelativeWidth(280.0), height: getRelativeHeight(80.0),
                               alignment: .center)
                        .background(ColorConstants.WhiteA700)
                        Button(action: {}, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kMsgGunnWattWebA)
                                    .font(FontScheme
                                        .kMontserratSemiBold(size: getRelativeHeight(17.0)))
                                    .fontWeight(.semibold)
                                    .padding(.horizontal, getRelativeWidth(30.0))
                                    .padding(.vertical, getRelativeHeight(29.0))
                                    .foregroundColor(ColorConstants.RedA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(280.0),
                                           height: getRelativeHeight(80.0), alignment: .center)
                                    .background(ColorConstants.WhiteA700)
                            }
                        })
                        .frame(width: getRelativeWidth(280.0), height: getRelativeHeight(80.0),
                               alignment: .center)
                        .background(ColorConstants.WhiteA700)
                        Button(action: {}, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblSettings)
                                    .font(FontScheme
                                        .kMontserratSemiBold(size: getRelativeHeight(17.0)))
                                    .fontWeight(.semibold)
                                    .padding(.horizontal, getRelativeWidth(30.0))
                                    .padding(.vertical, getRelativeHeight(29.0))
                                    .foregroundColor(ColorConstants.RedA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(280.0),
                                           height: getRelativeHeight(80.0), alignment: .center)
                                    .background(ColorConstants.WhiteA700)
                            }
                        })
                        .frame(width: getRelativeWidth(280.0), height: getRelativeHeight(80.0),
                               alignment: .center)
                        .background(ColorConstants.WhiteA700)
                    }
                    .frame(width: getRelativeWidth(280.0), height: getRelativeHeight(320.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(94.0))
                    VStack(alignment: .trailing, spacing: 0) {
                        Image("img_group")
                            .resizable()
                            .frame(width: getRelativeWidth(25.0), height: getRelativeWidth(25.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.horizontal, getRelativeWidth(22.0))
                    }
                    .frame(width: getRelativeWidth(280.0), height: getRelativeHeight(25.0),
                           alignment: .leading)
                    .padding(.vertical, getRelativeHeight(279.0))
                }
                .frame(width: getRelativeWidth(280.0), alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: IPhone11ProXEighteenOneView(),
                                   tag: "IPhone11ProXEighteenOneView",
                                   selection: $menupopupOneViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: IPhone11ProXEight1View(),
                                   tag: "IPhone11ProXEight1View",
                                   selection: $menupopupOneViewModel.nextScreen,
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
    }
}

struct MenupopupOneView_Previews: PreviewProvider {
    static var previews: some View {
        MenupopupOneView()
    }
}
