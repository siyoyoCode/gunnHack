import SwiftUI

struct IPhone11ProXEighteenOneView: View {
    @StateObject var iPhone11ProXEighteenOneViewModel = IPhone11ProXEighteenOneViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
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
                                        .onTapGesture {
                                            self.presentationMode.wrappedValue.dismiss()
                                        }
                                    Spacer()
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
                                        .padding(.top, getRelativeHeight(5.0))
                                        .padding(.bottom, getRelativeHeight(4.0))
                                    Spacer()
                                    Image("img_vector_26x26")
                                        .resizable()
                                        .frame(width: getRelativeWidth(26.0),
                                               height: getRelativeWidth(26.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .onTapGesture {
                                            iPhone11ProXEighteenOneViewModel
                                                .nextScreen = "IPhone11ProXNineteenView"
                                        }
                                }
                                .frame(width: UIScreen.main.bounds.width - 20,
                                       height: getRelativeHeight(26.0), alignment: .leading)
                            }
                            .frame(width: UIScreen.main.bounds.width - 20,
                                   height: getRelativeHeight(26.0), alignment: .leading)
                            .padding(.vertical, getRelativeHeight(30.0))
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(44.0),
                               alignment: .leading)
                        .background(ColorConstants.RedA700)
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(44.0),
                           alignment: .leading)
                    VStack {
                        VStack(alignment: .leading, spacing: 0) {
                            Group {
                                Image("img_blankprofilep")
                                    .resizable()
                                    .frame(width: getRelativeWidth(120.0),
                                           height: getRelativeWidth(120.0), alignment: .center)
                                    .scaledToFit()
                                    .clipShape(Circle())
                                    .clipShape(Circle())
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
                                HStack {
                                    VStack {
                                        Image("img_image4")
                                            .resizable()
                                            .frame(width: getRelativeWidth(65.0),
                                                   height: getRelativeHeight(56.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.top, getRelativeHeight(6.0))
                                            .padding(.horizontal, getRelativeWidth(12.0))
                                        Text(StringConstants.kLblTechnology)
                                            .font(FontScheme
                                                .kMontserratMedium(size: getRelativeHeight(10.5)))
                                            .fontWeight(.medium)
                                            .foregroundColor(ColorConstants.RedA700)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(79.0),
                                                   height: getRelativeHeight(10.0),
                                                   alignment: .topLeading)
                                            .padding(.vertical, getRelativeHeight(5.0))
                                            .padding(.horizontal, getRelativeWidth(5.0))
                                    }
                                    .frame(width: getRelativeWidth(90.0),
                                           height: getRelativeWidth(90.0), alignment: .center)
                                    .overlay(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                            bottomLeft: 12.0, bottomRight: 12.0)
                                            .stroke(ColorConstants.Gray300,
                                                    lineWidth: 2))
                                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                               bottomLeft: 12.0, bottomRight: 12.0)
                                            .fill(ColorConstants.WhiteA700))
                                    Spacer()
                                    VStack {
                                        ZStack(alignment: .leading) {
                                            Image("img_image15")
                                                .resizable()
                                                .frame(width: getRelativeWidth(46.0),
                                                       height: getRelativeHeight(48.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                            Image("img_image15")
                                                .resizable()
                                                .frame(width: getRelativeWidth(46.0),
                                                       height: getRelativeHeight(48.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                        }
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(46.0),
                                               height: getRelativeHeight(48.0), alignment: .center)
                                        .padding(.top, getRelativeHeight(14.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                        Text(StringConstants.kLblScience)
                                            .font(FontScheme
                                                .kMontserratMedium(size: getRelativeHeight(10.5)))
                                            .fontWeight(.medium)
                                            .foregroundColor(ColorConstants.RedA700)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(47.0),
                                                   height: getRelativeHeight(10.0),
                                                   alignment: .topLeading)
                                            .padding(.vertical, getRelativeHeight(5.0))
                                            .padding(.horizontal, getRelativeWidth(20.0))
                                    }
                                    .frame(width: getRelativeWidth(90.0),
                                           height: getRelativeWidth(90.0), alignment: .center)
                                    .overlay(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                            bottomLeft: 12.0, bottomRight: 12.0)
                                            .stroke(ColorConstants.Gray300,
                                                    lineWidth: 2))
                                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                               bottomLeft: 12.0, bottomRight: 12.0)
                                            .fill(ColorConstants.WhiteA700))
                                    Spacer()
                                    VStack {
                                        Image("img_image15_54x59")
                                            .resizable()
                                            .frame(width: getRelativeWidth(59.0),
                                                   height: getRelativeHeight(54.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.top, getRelativeHeight(10.0))
                                            .padding(.horizontal, getRelativeWidth(15.0))
                                        Text(StringConstants.kLblGames)
                                            .font(FontScheme
                                                .kMontserratMedium(size: getRelativeHeight(10.5)))
                                            .fontWeight(.medium)
                                            .foregroundColor(ColorConstants.RedA700)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(38.0),
                                                   height: getRelativeHeight(10.0),
                                                   alignment: .topLeading)
                                            .padding(.vertical, getRelativeHeight(3.0))
                                            .padding(.horizontal, getRelativeWidth(15.0))
                                    }
                                    .frame(width: getRelativeWidth(90.0),
                                           height: getRelativeWidth(90.0), alignment: .center)
                                    .overlay(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                            bottomLeft: 12.0, bottomRight: 12.0)
                                            .stroke(ColorConstants.Gray300,
                                                    lineWidth: 2))
                                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                               bottomLeft: 12.0, bottomRight: 12.0)
                                            .fill(ColorConstants.WhiteA700))
                                }
                                .frame(width: getRelativeWidth(290.0),
                                       height: getRelativeHeight(91.0), alignment: .center)
                                .padding(.top, getRelativeHeight(9.0))
                                VStack {
                                    Image("img_image15_56x54")
                                        .resizable()
                                        .frame(width: getRelativeWidth(54.0),
                                               height: getRelativeHeight(56.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.top, getRelativeHeight(8.0))
                                        .padding(.horizontal, getRelativeWidth(16.0))
                                    Text(StringConstants.kLblArts)
                                        .font(FontScheme
                                            .kMontserratMedium(size: getRelativeHeight(10.5)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.RedA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(27.0),
                                               height: getRelativeHeight(10.0),
                                               alignment: .topLeading)
                                        .padding(.vertical, getRelativeHeight(3.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                }
                                .frame(width: getRelativeWidth(90.0),
                                       height: getRelativeWidth(90.0), alignment: .leading)
                                .overlay(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                        bottomLeft: 12.0, bottomRight: 12.0)
                                        .stroke(ColorConstants.Gray300,
                                                lineWidth: 2))
                                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                           bottomLeft: 12.0, bottomRight: 12.0)
                                        .fill(ColorConstants.WhiteA700))
                                .padding(.top, getRelativeHeight(8.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                                Text(StringConstants.kMsgIWantToBecom)
                                    .font(FontScheme
                                        .kMontserratMedium(size: getRelativeHeight(14.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.CyanA400)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(125.0),
                                           height: getRelativeHeight(14.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(58.0))
                                    .padding(.trailing, getRelativeWidth(10.0))
                                HStack {
                                    TextField(StringConstants.kLblArchitect,
                                              text: $iPhone11ProXEighteenOneViewModel.optionText)
                                        .font(FontScheme
                                            .kMontserratMedium(size: getRelativeHeight(14.0)))
                                        .foregroundColor(ColorConstants.Lime900)
                                        .padding()
                                }
                                .frame(width: getRelativeWidth(290.0),
                                       height: getRelativeHeight(36.0), alignment: .center)
                                .overlay(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                        bottomLeft: 12.0, bottomRight: 12.0)
                                        .stroke(ColorConstants.Purple300,
                                                lineWidth: 2))
                                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                           bottomLeft: 12.0, bottomRight: 12.0)
                                        .fill(ColorConstants.WhiteA700))
                                .padding(.top, getRelativeHeight(13.0))
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
                                              text: $iPhone11ProXEighteenOneViewModel
                                                  .groupeightyfourText)
                                        .font(FontScheme
                                            .kMontserratMedium(size: getRelativeHeight(14.0)))
                                        .foregroundColor(ColorConstants.Gray500)
                                        .padding()
                                        .onTapGesture {
                                            iPhone11ProXEighteenOneViewModel
                                                .nextScreen = "FrameTenView"
                                        }
                                }
                                .frame(width: getRelativeWidth(290.0),
                                       height: getRelativeHeight(36.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                           bottomLeft: 12.0, bottomRight: 12.0)
                                        .fill(ColorConstants.Gray300))
                                .padding(.top, getRelativeHeight(10.0))
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
                                              text: $iPhone11ProXEighteenOneViewModel
                                                  .smallbuttonText)
                                        .font(FontScheme
                                            .kMontserratSemiBold(size: getRelativeHeight(13.0)))
                                        .foregroundColor(ColorConstants.Red700)
                                        .padding()
                                        .onTapGesture {
                                            iPhone11ProXEighteenOneViewModel
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
                                .padding(.top, getRelativeHeight(53.0))
                                .padding(.leading, getRelativeWidth(10.0))
                            }
                        }
                        .frame(width: getRelativeWidth(292.0), height: getRelativeHeight(783.0),
                               alignment: .center)
                        .background(ColorConstants.WhiteA700)
                        .padding(.horizontal, getRelativeWidth(41.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(783.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(51.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: IPhone11ProXOneTwoView(),
                                   tag: "IPhone11ProXOneTwoView",
                                   selection: $iPhone11ProXEighteenOneViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: IPhone11ProXNineteenView(),
                                   tag: "IPhone11ProXNineteenView",
                                   selection: $iPhone11ProXEighteenOneViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: FrameTenView(),
                                   tag: "FrameTenView",
                                   selection: $iPhone11ProXEighteenOneViewModel.nextScreen,
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

struct IPhone11ProXEighteenOneView_Previews: PreviewProvider {
    static var previews: some View {
        IPhone11ProXEighteenOneView()
    }
}
