import SwiftUI

struct IPhone11ProXNineteenView: View {
    @StateObject var iPhone11ProXNineteenViewModel = IPhone11ProXNineteenViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
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
                                Spacer()
                                HStack {
                                    Text(StringConstants.kLblProfile)
                                        .font(FontScheme
                                            .kMontserratSemiBold(size: getRelativeHeight(17.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(57.0),
                                               height: getRelativeHeight(17.0),
                                               alignment: .topLeading)
                                    Text(StringConstants.kLblDone)
                                        .font(FontScheme
                                            .kMontserratRegular(size: getRelativeHeight(17.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(47.0),
                                               height: getRelativeHeight(17.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(92.0))
                                        .onTapGesture {
                                            iPhone11ProXNineteenViewModel
                                                .nextScreen = "IPhone11ProXEighteenOneView"
                                        }
                                }
                                .frame(width: getRelativeWidth(196.0),
                                       height: getRelativeHeight(17.0), alignment: .bottom)
                                .padding(.top, getRelativeHeight(4.0))
                            }
                            .frame(width: UIScreen.main.bounds.width - 20,
                                   height: getRelativeHeight(24.0), alignment: .leading)
                        }
                        .frame(width: UIScreen.main.bounds.width - 20,
                               height: getRelativeHeight(44.0), alignment: .leading)
                        .background(ColorConstants.Red700)
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(44.0),
                           alignment: .leading)
                    VStack {
                        VStack(alignment: .leading, spacing: 0) {
                            Group {
                                ZStack(alignment: .leading) {
                                    Image("img_blankprofilep")
                                        .resizable()
                                        .frame(width: getRelativeWidth(120.0),
                                               height: getRelativeWidth(120.0), alignment: .center)
                                        .scaledToFit()
                                        .clipShape(Circle())
                                        .clipShape(Circle())
                                    VStack {
                                        Text(StringConstants.kLblChangeImage)
                                            .font(FontScheme
                                                .kMontserratMedium(size: getRelativeHeight(14.0)))
                                            .fontWeight(.medium)
                                            .foregroundColor(ColorConstants.WhiteA700)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.center)
                                            .frame(width: getRelativeWidth(54.0),
                                                   height: getRelativeHeight(35.0),
                                                   alignment: .center)
                                            .padding(.vertical, getRelativeHeight(44.0))
                                            .padding(.horizontal, getRelativeWidth(33.0))
                                    }
                                    .frame(width: getRelativeWidth(120.0),
                                           height: getRelativeWidth(120.0), alignment: .leading)
                                    .background(RoundedCorners(topLeft: 60.0, topRight: 60.0,
                                                               bottomLeft: 60.0, bottomRight: 60.0)
                                            .fill(ColorConstants.Bluegray4004c))
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(120.0),
                                       height: getRelativeWidth(120.0), alignment: .center)
                                .padding(.horizontal, getRelativeWidth(87.0))
                                Text(StringConstants.kLblLiaKenneth)
                                    .font(FontScheme
                                        .kMontserratSemiBold(size: getRelativeHeight(17.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.RedA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(106.0),
                                           height: getRelativeHeight(17.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(28.0))
                                    .padding(.horizontal, getRelativeWidth(87.0))
                                Text(StringConstants.kLblSophomore)
                                    .font(FontScheme
                                        .kMontserratMedium(size: getRelativeHeight(14.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Red700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(84.0),
                                           height: getRelativeHeight(15.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(12.0))
                                    .padding(.horizontal, getRelativeWidth(87.0))
                                Text(StringConstants.kLblMyInterests)
                                    .font(FontScheme
                                        .kMontserratMedium(size: getRelativeHeight(14.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Lime900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(97.0),
                                           height: getRelativeHeight(14.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(68.0))
                                    .padding(.trailing, getRelativeWidth(10.0))
                                HStack(spacing: 0) {
                                    ScrollView(.horizontal, showsIndicators: false) {
                                        LazyHStack {
                                            ForEach(0 ... 2, id: \.self) { index in
                                                HobbyCell()
                                            }
                                        }
                                    }
                                }
                                .frame(width: getRelativeWidth(298.0), alignment: .leading)
                                HStack {
                                    ZStack(alignment: .topTrailing) {
                                        VStack {
                                            Text(StringConstants.kLbl5)
                                                .font(FontScheme
                                                    .kMontserratBold(size: getRelativeHeight(42.0)))
                                                .fontWeight(.bold)
                                                .foregroundColor(ColorConstants.CyanA401)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(45.0),
                                                       height: getRelativeHeight(44.0),
                                                       alignment: .topLeading)
                                                .padding(.top, getRelativeHeight(9.0))
                                                .padding(.leading, getRelativeWidth(24.0))
                                                .padding(.trailing, getRelativeWidth(21.0))
                                            Text(StringConstants.kLblFood)
                                                .font(FontScheme
                                                    .kMontserratMedium(size: getRelativeHeight(10.5)))
                                                .fontWeight(.medium)
                                                .foregroundColor(ColorConstants.CyanA401)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(25.0),
                                                       height: getRelativeHeight(10.0),
                                                       alignment: .topLeading)
                                                .padding(.vertical, getRelativeHeight(12.0))
                                                .padding(.horizontal, getRelativeWidth(24.0))
                                        }
                                        .frame(width: getRelativeWidth(90.0),
                                               height: getRelativeWidth(90.0),
                                               alignment: .bottomLeading)
                                        .overlay(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                                bottomLeft: 12.0, bottomRight: 12.0)
                                                .stroke(ColorConstants.Red900,
                                                        lineWidth: 2))
                                        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                                   bottomLeft: 12.0,
                                                                   bottomRight: 12.0)
                                                .fill(ColorConstants.WhiteA700))
                                        .padding(.top, getRelativeHeight(7.0))
                                        .padding(.trailing, getRelativeWidth(8.0))
                                        ZStack {
                                            Image("img_vector_25x25")
                                                .resizable()
                                                .frame(width: getRelativeWidth(25.0),
                                                       height: getRelativeWidth(25.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                        }
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(25.0),
                                               height: getRelativeWidth(25.0),
                                               alignment: .topTrailing)
                                        .background(RoundedCorners(topLeft: 12.5, topRight: 12.5,
                                                                   bottomLeft: 12.5,
                                                                   bottomRight: 12.5)
                                                .fill(ColorConstants.WhiteA700))
                                        .padding(.bottom, getRelativeHeight(72.0))
                                        .padding(.leading, getRelativeWidth(73.0))
                                    }
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(98.0),
                                           height: getRelativeHeight(97.0), alignment: .center)
                                    Button(action: {
                                        iPhone11ProXNineteenViewModel
                                            .nextScreen = "IPhone11ProXTwentySevenView"
                                    }, label: {
                                        Image("img_hobby")
                                    })
                                    .frame(width: getRelativeWidth(90.0),
                                           height: getRelativeWidth(90.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                               bottomLeft: 12.0, bottomRight: 12.0)
                                            .fill(ColorConstants.Gray300))
                                    .padding(.top, getRelativeHeight(7.0))
                                }
                                .frame(width: getRelativeWidth(190.0),
                                       height: getRelativeHeight(97.0), alignment: .leading)
                                .padding(.trailing, getRelativeWidth(10.0))
                                Text(StringConstants.kMsgIWantToBecom2)
                                    .font(FontScheme
                                        .kMontserratMedium(size: getRelativeHeight(14.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.CyanA400)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(125.0),
                                           height: getRelativeHeight(14.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(57.0))
                                    .padding(.trailing, getRelativeWidth(10.0))
                                HStack {
                                    TextField(StringConstants.kLblArchitect,
                                              text: $iPhone11ProXNineteenViewModel.optionText)
                                        .font(FontScheme
                                            .kMontserratMedium(size: getRelativeHeight(14.0)))
                                        .foregroundColor(ColorConstants.Lime900)
                                        .padding()
                                    Image("img_vector_17x17")
                                        .resizable()
                                        .frame(width: getRelativeWidth(17.0),
                                               height: getRelativeWidth(17.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.vertical, getRelativeHeight(9.0))
                                        .padding(.leading, getRelativeWidth(30.0))
                                        .padding(.trailing, getRelativeWidth(11.0))
                                    Spacer()
                                }
                                .frame(width: getRelativeWidth(290.0),
                                       height: getRelativeHeight(36.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                           bottomLeft: 12.0, bottomRight: 12.0)
                                        .fill(ColorConstants.Gray300))
                                .padding(.top, getRelativeHeight(13.0))
                                .padding(.trailing, getRelativeWidth(6.0))
                            }
                            Group {
                                Text(StringConstants.kLblEthnicity)
                                    .font(FontScheme
                                        .kMontserratMedium(size: getRelativeHeight(14.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.CyanA400)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(64.0),
                                           height: getRelativeHeight(15.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(31.0))
                                    .padding(.trailing, getRelativeWidth(10.0))
                                HStack {
                                    TextField(StringConstants.kLblStartTyping,
                                              text: $iPhone11ProXNineteenViewModel
                                                  .groupeightyfourText)
                                        .font(FontScheme
                                            .kMontserratMedium(size: getRelativeHeight(14.0)))
                                        .foregroundColor(ColorConstants.Gray500)
                                        .padding()
                                        .onTapGesture {
                                            iPhone11ProXNineteenViewModel
                                                .nextScreen = "FrameTenView"
                                        }
                                }
                                .frame(width: getRelativeWidth(290.0),
                                       height: getRelativeHeight(36.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                           bottomLeft: 12.0, bottomRight: 12.0)
                                        .fill(ColorConstants.Gray300))
                                .padding(.top, getRelativeHeight(10.0))
                                .padding(.trailing, getRelativeWidth(6.0))
                                HStack {
                                    Spacer()
                                    Image("img_group_12x12")
                                        .resizable()
                                        .frame(width: getRelativeWidth(12.0),
                                               height: getRelativeWidth(12.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.vertical, getRelativeHeight(14.0))
                                        .padding(.leading, getRelativeWidth(22.0))
                                        .padding(.trailing, getRelativeWidth(8.0))
                                    TextField(StringConstants.kLblLogOut,
                                              text: $iPhone11ProXNineteenViewModel.smallbuttonText)
                                        .font(FontScheme
                                            .kMontserratSemiBold(size: getRelativeHeight(13.0)))
                                        .foregroundColor(ColorConstants.Red700)
                                        .padding()
                                        .onTapGesture {
                                            iPhone11ProXNineteenViewModel
                                                .nextScreen = "IPhone11ProXOneTwoView"
                                        }
                                }
                                .frame(width: getRelativeWidth(114.0),
                                       height: getRelativeHeight(41.0), alignment: .trailing)
                                .overlay(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                        bottomLeft: 12.0, bottomRight: 12.0)
                                        .stroke(ColorConstants.RedA700,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                           bottomLeft: 12.0, bottomRight: 12.0)
                                        .fill(Color.clear.opacity(0.7)))
                                .padding(.top, getRelativeHeight(55.0))
                                .padding(.leading, getRelativeWidth(178.0))
                                .padding(.trailing, getRelativeWidth(6.0))
                            }
                        }
                        .frame(width: getRelativeWidth(298.0), height: getRelativeHeight(785.0),
                               alignment: .center)
                        .background(ColorConstants.WhiteA700)
                        .padding(.leading, getRelativeWidth(41.0))
                        .padding(.trailing, getRelativeWidth(36.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(785.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(51.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: IPhone11ProXEighteenOneView(),
                                   tag: "IPhone11ProXEighteenOneView",
                                   selection: $iPhone11ProXNineteenViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: FrameTenView(),
                                   tag: "FrameTenView",
                                   selection: $iPhone11ProXNineteenViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: IPhone11ProXTwentySevenView(),
                                   tag: "IPhone11ProXTwentySevenView",
                                   selection: $iPhone11ProXNineteenViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: IPhone11ProXOneTwoView(),
                                   tag: "IPhone11ProXOneTwoView",
                                   selection: $iPhone11ProXNineteenViewModel.nextScreen,
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

struct IPhone11ProXNineteenView_Previews: PreviewProvider {
    static var previews: some View {
        IPhone11ProXNineteenView()
    }
}
