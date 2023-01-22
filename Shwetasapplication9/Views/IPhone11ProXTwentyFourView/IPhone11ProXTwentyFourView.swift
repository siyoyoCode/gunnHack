import SwiftUI

struct IPhone11ProXTwentyFourView: View {
    @StateObject var iPhone11ProXTwentyFourViewModel = IPhone11ProXTwentyFourViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    VStack(alignment: .leading, spacing: 0) {
                        ZStack(alignment: .topTrailing) {
                            HStack {
                                Image("img_arrowleft")
                                    .resizable()
                                    .frame(width: getRelativeWidth(24.0),
                                           height: getRelativeWidth(24.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .onTapGesture {
                                        self.presentationMode.wrappedValue.dismiss()
                                    }
                            }
                            .frame(width: UIScreen.main.bounds.width - 20,
                                   height: getRelativeHeight(44.0), alignment: .leading)
                            .background(ColorConstants.RedA700)
                            Image("img_vector_25x27")
                                .resizable()
                                .frame(width: getRelativeWidth(27.0),
                                       height: getRelativeHeight(25.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.bottom, getRelativeHeight(17.8))
                                .padding(.leading, getRelativeWidth(333.0))
                        }
                        .hideNavigationBar()
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(44.0),
                               alignment: .leading)
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(44.0),
                           alignment: .center)
                    VStack(alignment: .trailing, spacing: 0) {
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kMsgCissaPresents)
                                .font(FontScheme.kMontserratBold(size: getRelativeHeight(18.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Lime900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(254.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                                .padding(.trailing)
                            HStack {
                                Image("img_group_20x20")
                                    .resizable()
                                    .frame(width: getRelativeWidth(20.0),
                                           height: getRelativeWidth(20.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                Text(StringConstants.kMsgThursday27May)
                                    .font(FontScheme
                                        .kMontserratSemiBold(size: getRelativeHeight(14.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Lime900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(221.0),
                                           height: getRelativeHeight(15.0), alignment: .topLeading)
                                    .padding(.vertical, getRelativeHeight(5.0))
                                    .padding(.leading, getRelativeWidth(12.0))
                            }
                            .frame(width: getRelativeWidth(253.0), height: getRelativeHeight(20.0),
                                   alignment: .leading)
                            .clipShape(Capsule())
                            .padding(.top, getRelativeHeight(31.0))
                            .padding(.leading, getRelativeWidth(4.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                            HStack {
                                Image("img_group_20x16")
                                    .resizable()
                                    .frame(width: getRelativeWidth(16.0),
                                           height: getRelativeHeight(20.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                Text(StringConstants.kMsgHouseOfCards)
                                    .font(FontScheme
                                        .kMontserratMedium(size: getRelativeHeight(14.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.LightBlue300)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(174.0),
                                           height: getRelativeHeight(15.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(4.0))
                                    .padding(.leading, getRelativeWidth(14.0))
                            }
                            .frame(width: getRelativeWidth(204.0), height: getRelativeHeight(20.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(10.0))
                            .padding(.leading, getRelativeWidth(6.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                            Text(StringConstants.kMsgDiversiteaIsH)
                                .font(FontScheme.kMontserratMedium(size: getRelativeHeight(12.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Lime900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(290.0),
                                       height: getRelativeHeight(130.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(33.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                            ZStack(alignment: .leading) {
                                VStack {
                                    Button(action: {}, label: {
                                        Image("img_eventicon")
                                    })
                                    .frame(width: getRelativeWidth(50.0),
                                           height: getRelativeWidth(50.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                               bottomLeft: 12.0, bottomRight: 12.0)
                                            .fill(ColorConstants.RedA700))
                                    .padding(.leading, getRelativeWidth(10.0))
                                }
                                .frame(width: getRelativeWidth(201.0),
                                       height: getRelativeHeight(50.0), alignment: .center)
                                .background(ColorConstants.WhiteA700)
                                Button(action: {}, label: {
                                    HStack(spacing: 0) {
                                        Text(StringConstants.kLblRegister)
                                            .font(FontScheme
                                                .kMontserratBold(size: getRelativeHeight(15.0)))
                                            .fontWeight(.bold)
                                            .padding(.horizontal, getRelativeWidth(30.0))
                                            .padding(.vertical, getRelativeHeight(16.0))
                                            .foregroundColor(ColorConstants.WhiteA700)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.center)
                                            .frame(width: getRelativeWidth(144.0),
                                                   height: getRelativeHeight(50.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 12.0,
                                                                       topRight: 12.0,
                                                                       bottomLeft: 12.0,
                                                                       bottomRight: 12.0)
                                                    .fill(ColorConstants.RedA700))
                                            .padding(.trailing, getRelativeWidth(57.0))
                                    }
                                })
                                .frame(width: getRelativeWidth(144.0),
                                       height: getRelativeHeight(50.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                           bottomLeft: 12.0, bottomRight: 12.0)
                                        .fill(ColorConstants.RedA700))
                                .padding(.trailing, getRelativeWidth(57.0))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(201.0), height: getRelativeHeight(50.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(40.0))
                            .padding(.horizontal, getRelativeWidth(43.0))
                            VStack {
                                HStack {
                                    Image("img_rectangle23_50x50")
                                        .resizable()
                                        .frame(width: getRelativeWidth(50.0),
                                               height: getRelativeWidth(50.0), alignment: .center)
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
                                    iPhone11ProXTwentyFourViewModel
                                        .nextScreen = "IPhone11ProXTwentyFiveView"
                                }
                                .frame(width: getRelativeWidth(290.0),
                                       height: getRelativeHeight(60.0), alignment: .leading)
                                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                           bottomLeft: 12.0, bottomRight: 12.0)
                                        .fill(ColorConstants.WhiteA700))
                            }
                            .frame(width: getRelativeWidth(290.0), height: getRelativeHeight(60.0),
                                   alignment: .leading)
                            .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                       bottomLeft: 12.0, bottomRight: 12.0))
                            .padding(.top, getRelativeHeight(46.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                            Text(StringConstants.kMsgSimilarEvents)
                                .font(FontScheme.kMontserratMedium(size: getRelativeHeight(14.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Lime900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(214.0),
                                       height: getRelativeHeight(15.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(47.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                            ZStack(alignment: .trailing) {
                                VStack(alignment: .leading, spacing: 0) {
                                    ScrollView(.horizontal, showsIndicators: false) {
                                        HStack {
                                            ZStack {}
                                                .hideNavigationBar()
                                                .onTapGesture {
                                                    iPhone11ProXTwentyFourViewModel
                                                        .nextScreen = "IPhone11ProXTwentySixView"
                                                }
                                                .frame(width: getRelativeWidth(200.0),
                                                       height: getRelativeHeight(120.0),
                                                       alignment: .center)
                                                .background(RoundedCorners(topLeft: 12.0,
                                                                           topRight: 12.0)
                                                        .fill(ColorConstants
                                                            .Gray300))
                                            Image("img_rectangle5_2")
                                                .resizable()
                                                .frame(width: getRelativeWidth(200.0),
                                                       height: getRelativeHeight(120.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                                .padding(.leading, getRelativeWidth(16.0))
                                        }
                                        .frame(width: UIScreen.main.bounds.width,
                                               height: getRelativeHeight(120.0),
                                               alignment: .leading)
                                    }
                                    HStack(spacing: 0) {
                                        ScrollView(.horizontal, showsIndicators: false) {
                                            LazyHStack {
                                                ForEach(0 ... 1, id: \.self) { index in
                                                    Eventname1Cell()
                                                }
                                            }
                                        }
                                    }
                                    .frame(width: UIScreen.main.bounds.width, alignment: .trailing)
                                }
                                .frame(width: getRelativeWidth(200.0),
                                       height: getRelativeHeight(170.0), alignment: .leading)
                                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                           bottomLeft: 12.0, bottomRight: 12.0))
                                .shadow(color: ColorConstants.Black90033, radius: 6, x: 0, y: 2)
                                .padding(.trailing, getRelativeWidth(132.0))
                                VStack {
                                    VStack {
                                        Image("img_vector_25x12")
                                            .resizable()
                                            .frame(width: getRelativeWidth(12.0),
                                                   height: getRelativeHeight(25.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.top, getRelativeHeight(72.0))
                                            .padding(.horizontal, getRelativeWidth(17.0))
                                        Text(StringConstants.kLblEventName)
                                            .font(FontScheme
                                                .kMontserratSemiBold(size: getRelativeHeight(14.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.Black900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(36.0),
                                                   height: getRelativeHeight(14.0),
                                                   alignment: .topLeading)
                                            .padding(.vertical, getRelativeHeight(42.0))
                                            .padding(.leading, getRelativeWidth(10.0))
                                    }
                                    .onTapGesture {
                                        iPhone11ProXTwentyFourViewModel
                                            .nextScreen = "IPhone11ProXTwentySixView"
                                    }
                                    .frame(width: getRelativeWidth(116.0),
                                           height: getRelativeHeight(170.0), alignment: .leading)
                                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                               bottomLeft: 12.0, bottomRight: 12.0))
                                    .shadow(color: ColorConstants.Black90033, radius: 6, x: 0, y: 2)
                                }
                                .frame(width: getRelativeWidth(116.0),
                                       height: getRelativeHeight(170.0), alignment: .trailing)
                                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                           bottomLeft: 12.0, bottomRight: 12.0))
                                .shadow(color: ColorConstants.Black90033, radius: 6, x: 0, y: 2)
                                .padding(.leading, getRelativeWidth(216.0))
                                Image("img_rectangle37_4")
                                    .resizable()
                                    .frame(width: UIScreen.main.bounds.width,
                                           height: getRelativeHeight(170.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                            }
                            .hideNavigationBar()
                            .frame(width: UIScreen.main.bounds.width,
                                   height: getRelativeHeight(170.0), alignment: .center)
                            .padding(.top, getRelativeHeight(17.0))
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(711.0),
                               alignment: .trailing)
                        .background(ColorConstants.WhiteA700)
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(711.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(72.0))
                    VStack {}
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(85.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(69.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: IPhone11ProXSixteenView(),
                                   tag: "IPhone11ProXSixteenView",
                                   selection: $iPhone11ProXTwentyFourViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: IPhone11ProXTwentyFiveView(),
                                   tag: "IPhone11ProXTwentyFiveView",
                                   selection: $iPhone11ProXTwentyFourViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: IPhone11ProXTwentySixView(),
                                   tag: "IPhone11ProXTwentySixView",
                                   selection: $iPhone11ProXTwentyFourViewModel.nextScreen,
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

struct IPhone11ProXTwentyFourView_Previews: PreviewProvider {
    static var previews: some View {
        IPhone11ProXTwentyFourView()
    }
}
