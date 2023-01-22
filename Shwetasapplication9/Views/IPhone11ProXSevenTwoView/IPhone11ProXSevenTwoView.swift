import SwiftUI

struct IPhone11ProXSevenTwoView: View {
    @StateObject var iPhone11ProXSevenTwoViewModel = IPhone11ProXSevenTwoViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            Image("img_arrowleft")
                                .resizable()
                                .frame(width: getRelativeWidth(24.0),
                                       height: getRelativeWidth(24.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.leading, getRelativeWidth(20.0))
                                .padding(.trailing, getRelativeWidth(331.0))
                                .onTapGesture {
                                    self.presentationMode.wrappedValue.dismiss()
                                }
                        }
                        .frame(width: UIScreen.main.bounds.width - 20,
                               height: getRelativeHeight(44.0), alignment: .leading)
                        .background(ColorConstants.RedA700)
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(44.0),
                           alignment: .center)
                    VStack(alignment: .trailing, spacing: 0) {
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kMsgClubsCategor)
                                .font(FontScheme.kMontserratMedium(size: getRelativeHeight(12.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.LightBlue300)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(184.0),
                                       height: getRelativeHeight(12.0), alignment: .topLeading)
                                .padding(.trailing)
                                .onTapGesture {
                                    iPhone11ProXSevenTwoViewModel
                                        .nextScreen = "IPhone11ProXFourteenView"
                                }
                            HStack {
                                ZStack {}
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(50.0),
                                           height: getRelativeWidth(50.0), alignment: .center)
                                    .background(ColorConstants.Gray300)
                                Text(StringConstants.kLblClubName)
                                    .font(FontScheme
                                        .kMontserratSemiBold(size: getRelativeHeight(15.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Lime900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(84.0),
                                           height: getRelativeHeight(15.0), alignment: .topLeading)
                                    .padding(.vertical, getRelativeHeight(17.0))
                                    .padding(.leading, getRelativeWidth(12.0))
                            }
                            .frame(width: getRelativeWidth(290.0), height: getRelativeHeight(50.0),
                                   alignment: .leading)
                            .background(ColorConstants.WhiteA700)
                            .padding(.top, getRelativeHeight(41.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                            Text(StringConstants.kMsgLoremIpsumDol)
                                .font(FontScheme.kMontserratMedium(size: getRelativeHeight(12.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Lime900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(290.0),
                                       height: getRelativeHeight(130.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(26.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                            HStack {
                                Image("img_vector_20x20")
                                    .resizable()
                                    .frame(width: getRelativeWidth(20.0),
                                           height: getRelativeWidth(20.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                Text(StringConstants.kMsgMembershipFee)
                                    .font(FontScheme
                                        .kMontserratSemiBold(size: getRelativeHeight(14.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Lime900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(165.0),
                                           height: getRelativeHeight(16.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(12.0))
                            }
                            .frame(width: getRelativeWidth(197.0), height: getRelativeHeight(20.0),
                                   alignment: .leading)
                            .clipShape(Capsule())
                            .padding(.top, getRelativeHeight(21.0))
                            .padding(.leading, getRelativeWidth(4.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                            Text(StringConstants.kLblEventGallery)
                                .font(FontScheme.kMontserratSemiBold(size: getRelativeHeight(15.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Lime900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(102.0),
                                       height: getRelativeHeight(16.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(41.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                            ScrollView(.horizontal, showsIndicators: false) {
                                ZStack(alignment: .trailing) {
                                    VStack {
                                        ZStack(alignment: .bottomLeading) {
                                            ZStack {}
                                                .hideNavigationBar()
                                                .onTapGesture {
                                                    iPhone11ProXSevenTwoViewModel
                                                        .nextScreen = "IPhone11ProXTwentySixView"
                                                }
                                                .frame(width: getRelativeWidth(141.0),
                                                       height: getRelativeHeight(120.0),
                                                       alignment: .leading)
                                                .background(RoundedCorners(topLeft: 12.0,
                                                                           topRight: 12.0,
                                                                           bottomLeft: 12.0,
                                                                           bottomRight: 12.0)
                                                        .fill(ColorConstants.Gray300))
                                                .padding(.trailing, getRelativeWidth(11.0))
                                            HStack {
                                                VStack(alignment: .leading, spacing: 0) {
                                                    Text(StringConstants.kLblMonth)
                                                        .font(FontScheme
                                                            .kMontserratSemiBold(size: getRelativeHeight(9.0)))
                                                        .fontWeight(.semibold)
                                                        .foregroundColor(ColorConstants.Lime900)
                                                        .minimumScaleFactor(0.5)
                                                        .multilineTextAlignment(.leading)
                                                        .frame(width: getRelativeWidth(34.0),
                                                               height: getRelativeHeight(9.0),
                                                               alignment: .topLeading)
                                                    Text(StringConstants.kLblDd)
                                                        .font(FontScheme
                                                            .kMontserratSemiBold(size: getRelativeHeight(16.0)))
                                                        .fontWeight(.semibold)
                                                        .foregroundColor(ColorConstants.Lime900)
                                                        .minimumScaleFactor(0.5)
                                                        .multilineTextAlignment(.leading)
                                                        .frame(width: getRelativeWidth(27.0),
                                                               height: getRelativeHeight(16.0),
                                                               alignment: .topLeading)
                                                        .padding(.horizontal, getRelativeWidth(4.0))
                                                }
                                                .frame(width: getRelativeWidth(34.0),
                                                       height: getRelativeHeight(27.0),
                                                       alignment: .bottom)
                                                .padding(.leading, getRelativeWidth(10.0))
                                                Text(StringConstants.kLblEventName)
                                                    .font(FontScheme
                                                        .kMontserratSemiBold(size: getRelativeHeight(11.0)))
                                                    .fontWeight(.semibold)
                                                    .foregroundColor(ColorConstants.Black900)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(68.0),
                                                           height: getRelativeHeight(11.0),
                                                           alignment: .topLeading)
                                                    .padding(.leading, getRelativeWidth(9.0))
                                                    .padding(.trailing, getRelativeWidth(17.0))
                                            }
                                            .frame(width: getRelativeWidth(141.0),
                                                   height: getRelativeHeight(41.0),
                                                   alignment: .bottomLeading)
                                            .background(RoundedCorners(bottomLeft: 12.0,
                                                                       bottomRight: 12.0)
                                                    .fill(ColorConstants
                                                        .WhiteA700))
                                            .padding(.top, getRelativeHeight(79.0))
                                            .padding(.trailing, getRelativeWidth(11.0))
                                            ZStack {}
                                                .hideNavigationBar()
                                                .frame(width: getRelativeWidth(140.0),
                                                       height: getRelativeHeight(79.0),
                                                       alignment: .topLeading)
                                                .background(RoundedCorners(topLeft: 12.0,
                                                                           topRight: 12.0)
                                                        .fill(ColorConstants
                                                            .Gray300))
                                                .padding(.bottom, getRelativeHeight(41.0))
                                                .padding(.trailing, getRelativeWidth(12.0))
                                        }
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(152.0),
                                               height: getRelativeHeight(120.0),
                                               alignment: .leading)
                                        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                                   bottomLeft: 12.0,
                                                                   bottomRight: 12.0))
                                        .shadow(color: ColorConstants.Black90033, radius: 6, x: 0,
                                                y: 2)
                                    }
                                    .frame(width: getRelativeWidth(152.0),
                                           height: getRelativeHeight(120.0), alignment: .leading)
                                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                               bottomLeft: 12.0, bottomRight: 12.0))
                                    .padding(.trailing, getRelativeWidth(179.0))
                                    ZStack(alignment: .trailing) {
                                        ZStack(alignment: .bottomLeading) {
                                            ZStack {}
                                                .hideNavigationBar()
                                                .onTapGesture {
                                                    iPhone11ProXSevenTwoViewModel
                                                        .nextScreen = "IPhone11ProXTwentySixView"
                                                }
                                                .frame(width: getRelativeWidth(141.0),
                                                       height: getRelativeHeight(120.0),
                                                       alignment: .leading)
                                                .background(RoundedCorners(topLeft: 12.0,
                                                                           topRight: 12.0,
                                                                           bottomLeft: 12.0,
                                                                           bottomRight: 12.0)
                                                        .fill(ColorConstants.Gray300))
                                                .padding(.trailing, getRelativeWidth(14.0))
                                            HStack {
                                                VStack(alignment: .leading, spacing: 0) {
                                                    Text(StringConstants.kLblMonth)
                                                        .font(FontScheme
                                                            .kMontserratSemiBold(size: getRelativeHeight(9.0)))
                                                        .fontWeight(.semibold)
                                                        .foregroundColor(ColorConstants.Lime900)
                                                        .minimumScaleFactor(0.5)
                                                        .multilineTextAlignment(.leading)
                                                        .frame(width: getRelativeWidth(34.0),
                                                               height: getRelativeHeight(9.0),
                                                               alignment: .topLeading)
                                                    Text(StringConstants.kLblDd)
                                                        .font(FontScheme
                                                            .kMontserratSemiBold(size: getRelativeHeight(16.0)))
                                                        .fontWeight(.semibold)
                                                        .foregroundColor(ColorConstants.Lime900)
                                                        .minimumScaleFactor(0.5)
                                                        .multilineTextAlignment(.leading)
                                                        .frame(width: getRelativeWidth(27.0),
                                                               height: getRelativeHeight(16.0),
                                                               alignment: .topLeading)
                                                        .padding(.horizontal, getRelativeWidth(4.0))
                                                }
                                                .frame(width: getRelativeWidth(34.0),
                                                       height: getRelativeHeight(27.0),
                                                       alignment: .bottom)
                                                .padding(.leading, getRelativeWidth(10.0))
                                                Text(StringConstants.kLblEventName)
                                                    .font(FontScheme
                                                        .kMontserratSemiBold(size: getRelativeHeight(11.0)))
                                                    .fontWeight(.semibold)
                                                    .foregroundColor(ColorConstants.Black900)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(68.0),
                                                           height: getRelativeHeight(11.0),
                                                           alignment: .topLeading)
                                                    .padding(.horizontal, getRelativeWidth(12.0))
                                            }
                                            .frame(width: getRelativeWidth(141.0),
                                                   height: getRelativeHeight(41.0),
                                                   alignment: .bottomLeading)
                                            .background(RoundedCorners(bottomLeft: 12.0,
                                                                       bottomRight: 12.0)
                                                    .fill(ColorConstants
                                                        .WhiteA700))
                                            .padding(.top, getRelativeHeight(79.0))
                                            .padding(.trailing, getRelativeWidth(14.0))
                                            ZStack {}
                                                .hideNavigationBar()
                                                .frame(width: getRelativeWidth(140.0),
                                                       height: getRelativeHeight(79.0),
                                                       alignment: .topLeading)
                                                .background(RoundedCorners(topLeft: 12.0,
                                                                           topRight: 12.0)
                                                        .fill(ColorConstants
                                                            .Gray300))
                                                .padding(.bottom, getRelativeHeight(41.0))
                                                .padding(.trailing, getRelativeWidth(15.0))
                                        }
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(155.0),
                                               height: getRelativeHeight(120.0),
                                               alignment: .leading)
                                        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                                   bottomLeft: 12.0,
                                                                   bottomRight: 12.0))
                                        .shadow(color: ColorConstants.Black90033, radius: 6, x: 0,
                                                y: 2)
                                        VStack {
                                            VStack(alignment: .leading, spacing: 0) {
                                                ZStack {
                                                    Image("img_arrowright")
                                                        .resizable()
                                                        .frame(width: getRelativeWidth(10.0),
                                                               height: getRelativeHeight(20.0),
                                                               alignment: .center)
                                                        .scaledToFit()
                                                        .clipped()
                                                        .padding(.top, getRelativeHeight(50.0))
                                                        .padding(.trailing, getRelativeWidth(118.0))
                                                }
                                                .hideNavigationBar()
                                                .onTapGesture {
                                                    iPhone11ProXSevenTwoViewModel
                                                        .nextScreen = "IPhone11ProXTwentySixView"
                                                }
                                                .frame(width: getRelativeWidth(140.0),
                                                       height: getRelativeHeight(79.0),
                                                       alignment: .center)
                                                .background(RoundedCorners(topLeft: 12.0,
                                                                           topRight: 12.0)
                                                        .fill(ColorConstants
                                                            .Gray300))
                                                ZStack(alignment: .trailing) {
                                                    VStack {
                                                        Text(StringConstants.kLblMonth)
                                                            .font(FontScheme
                                                                .kMontserratSemiBold(size: getRelativeHeight(9.0)))
                                                            .fontWeight(.semibold)
                                                            .foregroundColor(ColorConstants.Lime900)
                                                            .minimumScaleFactor(0.5)
                                                            .multilineTextAlignment(.center)
                                                            .frame(width: getRelativeWidth(42.0),
                                                                   height: getRelativeHeight(9.0),
                                                                   alignment: .center)
                                                            .padding(.top, getRelativeHeight(8.0))
                                                            .padding(.horizontal,
                                                                     getRelativeWidth(8.0))
                                                        Text(StringConstants.kLblDd)
                                                            .font(FontScheme
                                                                .kMontserratSemiBold(size: getRelativeHeight(16.0)))
                                                            .fontWeight(.semibold)
                                                            .foregroundColor(ColorConstants.Lime900)
                                                            .minimumScaleFactor(0.5)
                                                            .multilineTextAlignment(.center)
                                                            .frame(width: getRelativeWidth(27.0),
                                                                   height: getRelativeHeight(16.0),
                                                                   alignment: .center)
                                                            .padding(.bottom,
                                                                     getRelativeHeight(5.0))
                                                            .padding(.horizontal,
                                                                     getRelativeWidth(16.0))
                                                    }
                                                    .frame(width: getRelativeWidth(141.0),
                                                           height: getRelativeHeight(41.0),
                                                           alignment: .leading)
                                                    .background(RoundedCorners(bottomLeft: 12.0,
                                                                               bottomRight: 12.0)
                                                            .fill(ColorConstants.WhiteA700))
                                                    .padding(.trailing, getRelativeWidth(11.0))
                                                    Text(StringConstants.kLblEventName)
                                                        .font(FontScheme
                                                            .kMontserratSemiBold(size: getRelativeHeight(11.0)))
                                                        .fontWeight(.semibold)
                                                        .foregroundColor(ColorConstants.Black900)
                                                        .minimumScaleFactor(0.5)
                                                        .multilineTextAlignment(.leading)
                                                        .frame(width: getRelativeWidth(97.0),
                                                               height: getRelativeHeight(17.0),
                                                               alignment: .leading)
                                                        .padding(.leading, getRelativeWidth(55.0))
                                                }
                                                .hideNavigationBar()
                                                .frame(width: getRelativeWidth(152.0),
                                                       height: getRelativeHeight(41.0),
                                                       alignment: .trailing)
                                            }
                                            .frame(width: getRelativeWidth(141.0),
                                                   height: getRelativeHeight(120.0),
                                                   alignment: .leading)
                                            .background(RoundedCorners(topLeft: 12.0,
                                                                       topRight: 12.0,
                                                                       bottomLeft: 12.0,
                                                                       bottomRight: 12.0)
                                                    .fill(ColorConstants.Gray300))
                                            .padding(.trailing, getRelativeWidth(11.0))
                                        }
                                        .frame(width: getRelativeWidth(152.0),
                                               height: getRelativeHeight(120.0),
                                               alignment: .trailing)
                                        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                                   bottomLeft: 12.0,
                                                                   bottomRight: 12.0))
                                        .shadow(color: ColorConstants.Black90033, radius: 6, x: 0,
                                                y: 2)
                                        .padding(.leading, getRelativeWidth(149.0))
                                    }
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(155.0),
                                           height: getRelativeHeight(120.0), alignment: .trailing)
                                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                               bottomLeft: 12.0, bottomRight: 12.0))
                                    .padding(.leading, getRelativeWidth(150.0))
                                    .padding(.trailing, getRelativeWidth(27.0))
                                    ZStack {}
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(152.0),
                                               height: getRelativeHeight(120.0),
                                               alignment: .trailing)
                                        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                                   bottomLeft: 12.0,
                                                                   bottomRight: 12.0))
                                        .padding(.leading, getRelativeWidth(299.0))
                                    Image("img_rectangle37_120x332")
                                        .resizable()
                                        .frame(width: UIScreen.main.bounds.width,
                                               height: getRelativeHeight(120.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                }
                                .hideNavigationBar()
                                .frame(width: UIScreen.main.bounds.width,
                                       height: getRelativeHeight(120.0), alignment: .leading)
                            }
                            .padding(.top, getRelativeHeight(12.0))
                            Button(action: {}, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLblSignUp)
                                        .font(FontScheme
                                            .kMontserratBold(size: getRelativeHeight(15.0)))
                                        .fontWeight(.bold)
                                        .padding(.horizontal, getRelativeWidth(30.0))
                                        .padding(.vertical, getRelativeHeight(16.0))
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(143.0),
                                               height: getRelativeHeight(50.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                                   bottomLeft: 12.0,
                                                                   bottomRight: 12.0)
                                                .fill(ColorConstants.Red700))
                                        .padding(.top, getRelativeHeight(43.0))
                                        .padding(.horizontal, getRelativeWidth(73.0))
                                }
                            })
                            .frame(width: getRelativeWidth(143.0), height: getRelativeHeight(50.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                       bottomLeft: 12.0, bottomRight: 12.0)
                                    .fill(ColorConstants.Red700))
                            .padding(.top, getRelativeHeight(43.0))
                            .padding(.horizontal, getRelativeWidth(73.0))
                            HStack {
                                Image("img_vector_33x33")
                                    .resizable()
                                    .frame(width: getRelativeWidth(33.0),
                                           height: getRelativeWidth(33.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                Spacer()
                                Image("img_vector_25x33")
                                    .resizable()
                                    .frame(width: getRelativeWidth(33.0),
                                           height: getRelativeHeight(25.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.leading, getRelativeWidth(22.0))
                            }
                            .frame(width: getRelativeWidth(89.0), height: getRelativeHeight(33.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(36.0))
                            .padding(.horizontal, getRelativeWidth(99.0))
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(654.0),
                               alignment: .trailing)
                        .background(ColorConstants.WhiteA700)
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(654.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(34.0))
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
                    .padding(.top, getRelativeHeight(54.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: IPhone11ProXTwentySixView(),
                                   tag: "IPhone11ProXTwentySixView",
                                   selection: $iPhone11ProXSevenTwoViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: IPhone11ProXSixteenView(),
                                   tag: "IPhone11ProXSixteenView",
                                   selection: $iPhone11ProXSevenTwoViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: IPhone11ProXFourteenView(),
                                   tag: "IPhone11ProXFourteenView",
                                   selection: $iPhone11ProXSevenTwoViewModel.nextScreen,
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

struct IPhone11ProXSevenTwoView_Previews: PreviewProvider {
    static var previews: some View {
        IPhone11ProXSevenTwoView()
    }
}
