import SwiftUI

struct IPhone11ProXEight1View: View {
    @StateObject var iPhone11ProXEight1ViewModel = IPhone11ProXEight1ViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
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
                                    Text(StringConstants.kLblMyClubs)
                                        .font(FontScheme
                                            .kMontserratSemiBold(size: getRelativeHeight(17.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(81.0),
                                               height: getRelativeHeight(17.0),
                                               alignment: .topLeading)
                                        .padding(.vertical, getRelativeHeight(8.0))
                                        .padding(.leading, getRelativeWidth(103.0))
                                }
                                .frame(width: UIScreen.main.bounds.width - 20,
                                       height: getRelativeHeight(44.0), alignment: .leading)
                                .background(ColorConstants.RedA700)
                            }
                            .frame(width: UIScreen.main.bounds.width - 20,
                                   height: getRelativeHeight(44.0), alignment: .leading)
                            Text(StringConstants.kMsgClubsAndSocie)
                                .font(FontScheme.kMontserratMedium(size: getRelativeHeight(14.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Lime900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(278.0),
                                       height: getRelativeHeight(35.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(82.0))
                                .padding(.horizontal, getRelativeWidth(28.0))
                            VStack {
                                VStack(alignment: .leading, spacing: 0) {
                                    HStack {
                                        Image("img_rectangle23")
                                            .resizable()
                                            .frame(width: getRelativeWidth(50.0),
                                                   height: getRelativeWidth(50.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.vertical, getRelativeHeight(5.0))
                                            .padding(.leading, getRelativeWidth(10.0))
                                        Text(StringConstants.kMsgBusinessoneCon)
                                            .font(FontScheme
                                                .kMontserratRomanBold(size: getRelativeHeight(14.0)))
                                            .fontWeight(.bold)
                                            .foregroundColor(ColorConstants.Red700)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(179.0),
                                                   height: getRelativeHeight(18.0),
                                                   alignment: .topLeading)
                                            .padding(.vertical, getRelativeHeight(21.0))
                                            .padding(.leading, getRelativeWidth(13.0))
                                    }
                                    .onTapGesture {
                                        iPhone11ProXEight1ViewModel
                                            .nextScreen = "IPhone11ProXTwentyThreeView"
                                    }
                                    .frame(width: getRelativeWidth(290.0),
                                           height: getRelativeHeight(60.0), alignment: .leading)
                                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                               bottomLeft: 12.0, bottomRight: 12.0)
                                            .fill(ColorConstants.WhiteA700))
                                    VStack {
                                        HStack {
                                            Image("img_rectangle23_50x50")
                                                .resizable()
                                                .frame(width: getRelativeWidth(50.0),
                                                       height: getRelativeWidth(50.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                                .padding(.vertical, getRelativeHeight(5.0))
                                                .padding(.leading, getRelativeWidth(10.0))
                                            Text(StringConstants.kLblAiForGirls)
                                                .font(FontScheme
                                                    .kMontserratRomanBold(size: getRelativeHeight(14.0)))
                                                .fontWeight(.bold)
                                                .foregroundColor(ColorConstants.Red700)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(76.0),
                                                       height: getRelativeHeight(14.0),
                                                       alignment: .topLeading)
                                                .padding(.top, getRelativeHeight(21.0))
                                                .padding(.bottom, getRelativeHeight(24.0))
                                                .padding(.leading, getRelativeWidth(12.0))
                                        }
                                        .onTapGesture {
                                            iPhone11ProXEight1ViewModel
                                                .nextScreen = "IPhone11ProXTwentyFiveView"
                                        }
                                        .frame(width: getRelativeWidth(290.0),
                                               height: getRelativeHeight(60.0), alignment: .leading)
                                        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                                   bottomLeft: 12.0,
                                                                   bottomRight: 12.0)
                                                .fill(ColorConstants.WhiteA700))
                                    }
                                    .frame(width: getRelativeWidth(290.0),
                                           height: getRelativeHeight(60.0), alignment: .leading)
                                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                               bottomLeft: 12.0, bottomRight: 12.0))
                                    .padding(.top, getRelativeHeight(15.0))
                                    HStack {
                                        Image("img_rectangle23_1")
                                            .resizable()
                                            .frame(width: getRelativeWidth(50.0),
                                                   height: getRelativeWidth(50.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.vertical, getRelativeHeight(5.0))
                                            .padding(.leading, getRelativeWidth(10.0))
                                        Text(StringConstants.kMsgTabletopGaming)
                                            .font(FontScheme
                                                .kMontserratRomanBold(size: getRelativeHeight(14.0)))
                                            .fontWeight(.bold)
                                            .foregroundColor(ColorConstants.Red700)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(183.0),
                                                   height: getRelativeHeight(18.0),
                                                   alignment: .topLeading)
                                            .padding(.vertical, getRelativeHeight(21.0))
                                            .padding(.leading, getRelativeWidth(13.0))
                                    }
                                    .onTapGesture {
                                        iPhone11ProXEight1ViewModel
                                            .nextScreen = "IPhone11ProXTwentyFiveView"
                                    }
                                    .frame(width: getRelativeWidth(290.0),
                                           height: getRelativeHeight(60.0), alignment: .leading)
                                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                               bottomLeft: 12.0, bottomRight: 12.0)
                                            .fill(ColorConstants.WhiteA700))
                                    .padding(.top, getRelativeHeight(15.0))
                                }
                                .frame(width: getRelativeWidth(290.0),
                                       height: getRelativeHeight(210.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                           bottomLeft: 12.0, bottomRight: 12.0))
                                .padding(.vertical, getRelativeHeight(15.0))
                                .padding(.horizontal, getRelativeWidth(15.0))
                            }
                            .frame(width: UIScreen.main.bounds.width,
                                   height: getRelativeHeight(450.0), alignment: .center)
                            .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                       bottomLeft: 12.0, bottomRight: 12.0)
                                    .fill(ColorConstants.Gray3007f))
                            .padding(.top, getRelativeHeight(22.0))
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(634.0),
                               alignment: .leading)
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(634.0),
                           alignment: .center)
                    VStack {
                        Text("tabbar")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: UIScreen.main.bounds.width - 20,
                                   height: getRelativeHeight(85.0), alignment: .center)
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(85.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(49.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: IPhone11ProXSixteenView(),
                                   tag: "IPhone11ProXSixteenView",
                                   selection: $iPhone11ProXEight1ViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: IPhone11ProXTwentyThreeView(),
                                   tag: "IPhone11ProXTwentyThreeView",
                                   selection: $iPhone11ProXEight1ViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: IPhone11ProXTwentyFiveView(),
                                   tag: "IPhone11ProXTwentyFiveView",
                                   selection: $iPhone11ProXEight1ViewModel.nextScreen,
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

struct IPhone11ProXEight1View_Previews: PreviewProvider {
    static var previews: some View {
        IPhone11ProXEight1View()
    }
}
