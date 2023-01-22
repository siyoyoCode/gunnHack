import SwiftUI

struct IPhone11ProXTwentySevenView: View {
    @StateObject var iPhone11ProXTwentySevenViewModel = IPhone11ProXTwentySevenViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 0) {
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kMsgSelectYourInt)
                        .font(FontScheme.kMontserratSemiBold(size: getRelativeHeight(14.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.WhiteA700)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(265.0), height: getRelativeHeight(52.0),
                               alignment: .topLeading)
                        .padding(.trailing)
                }
                .frame(width: getRelativeWidth(290.0), height: getRelativeHeight(52.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(53.0))
                .padding(.horizontal, getRelativeWidth(41.0))
                VStack {
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            VStack {
                                Image("img_image2")
                                    .resizable()
                                    .frame(width: getRelativeWidth(60.0),
                                           height: getRelativeHeight(50.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.top, getRelativeHeight(14.0))
                                    .padding(.horizontal, getRelativeWidth(15.0))
                                Text(StringConstants.kLblMath)
                                    .font(FontScheme
                                        .kMontserratMedium(size: getRelativeHeight(10.5)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.RedA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(30.0),
                                           height: getRelativeHeight(10.0), alignment: .topLeading)
                                    .padding(.vertical, getRelativeHeight(3.0))
                                    .padding(.horizontal, getRelativeWidth(15.0))
                            }
                            .frame(width: getRelativeWidth(90.0), height: getRelativeWidth(90.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                                    bottomRight: 12.0)
                                    .stroke(ColorConstants.Gray300,
                                            lineWidth: 2))
                            .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                       bottomLeft: 12.0, bottomRight: 12.0)
                                    .fill(ColorConstants.WhiteA700))
                            Spacer()
                            ZStack(alignment: .leading) {
                                Text(StringConstants.kLblScience)
                                    .font(FontScheme
                                        .kMontserratMedium(size: getRelativeHeight(10.5)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.RedA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(47.0),
                                           height: getRelativeHeight(10.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(67.08))
                                    .padding(.horizontal, getRelativeWidth(20.85))
                                VStack {
                                    Image("img_image15")
                                        .resizable()
                                        .frame(width: getRelativeWidth(46.0),
                                               height: getRelativeHeight(48.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.top, getRelativeHeight(14.0))
                                        .padding(.horizontal, getRelativeWidth(22.0))
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
                                        .padding(.horizontal, getRelativeWidth(22.0))
                                }
                                .frame(width: getRelativeWidth(90.0),
                                       height: getRelativeWidth(90.0), alignment: .leading)
                                .overlay(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                        bottomLeft: 12.0, bottomRight: 12.0)
                                        .stroke(ColorConstants.RedA700,
                                                lineWidth: 3))
                                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                           bottomLeft: 12.0, bottomRight: 12.0)
                                        .fill(ColorConstants.Gray400))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(90.0), height: getRelativeWidth(90.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                                    bottomRight: 12.0)
                                    .stroke(ColorConstants.Gray300,
                                            lineWidth: 2))
                            .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                       bottomLeft: 12.0, bottomRight: 12.0)
                                    .fill(ColorConstants.WhiteA700))
                            Spacer()
                            ZStack(alignment: .leading) {
                                Text(StringConstants.kLblTechnology)
                                    .font(FontScheme
                                        .kMontserratMedium(size: getRelativeHeight(10.5)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.RedA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(79.0),
                                           height: getRelativeHeight(10.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(67.08))
                                    .padding(.horizontal, getRelativeWidth(5.0))
                                VStack {
                                    Image("img_image4")
                                        .resizable()
                                        .frame(width: getRelativeWidth(65.0),
                                               height: getRelativeHeight(56.0), alignment: .center)
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
                                        .padding(.horizontal, getRelativeWidth(6.0))
                                }
                                .frame(width: getRelativeWidth(90.0),
                                       height: getRelativeWidth(90.0), alignment: .leading)
                                .overlay(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                        bottomLeft: 12.0, bottomRight: 12.0)
                                        .stroke(ColorConstants.RedA700,
                                                lineWidth: 3))
                                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                           bottomLeft: 12.0, bottomRight: 12.0)
                                        .fill(ColorConstants.Gray400))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(90.0), height: getRelativeWidth(90.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                                    bottomRight: 12.0)
                                    .stroke(ColorConstants.Gray300,
                                            lineWidth: 2))
                            .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                       bottomLeft: 12.0, bottomRight: 12.0)
                                    .fill(ColorConstants.WhiteA700))
                        }
                        .frame(width: getRelativeWidth(290.0), height: getRelativeHeight(90.0),
                               alignment: .leading)
                        ScrollView(.vertical, showsIndicators: false) {
                            VStack {
                                LazyVGrid(columns: [SwiftUI.GridItem(), SwiftUI.GridItem(),
                                                    SwiftUI.GridItem()],
                                          spacing: 10.0) {
                                    ForEach(0 ... 5, id: \.self) { index in
                                        Hobby1Cell()
                                    }
                                }
                            }
                        }
                        .padding(.top, getRelativeHeight(8.0))
                        .fixedSize(horizontal: false, vertical: false)
                        HStack {
                            HStack(spacing: 0) {
                                ScrollView(.horizontal, showsIndicators: false) {
                                    LazyHStack {
                                        ForEach(0 ... 1, id: \.self) { index in
                                            Hobby2Cell()
                                        }
                                    }
                                }
                            }
                            .frame(width: getRelativeWidth(190.0), alignment: .center)
                            Spacer()
                            VStack {
                                Image("img_image13")
                                    .resizable()
                                    .frame(width: getRelativeWidth(61.0),
                                           height: getRelativeHeight(56.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.top, getRelativeHeight(8.0))
                                    .padding(.horizontal, getRelativeWidth(14.0))
                                Text(StringConstants.kLblHobbies)
                                    .font(FontScheme
                                        .kMontserratMedium(size: getRelativeHeight(10.5)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.RedA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(79.0),
                                           height: getRelativeHeight(17.0), alignment: .center)
                                    .padding(.bottom, getRelativeHeight(9.0))
                                    .padding(.horizontal, getRelativeWidth(5.0))
                            }
                            .frame(width: getRelativeWidth(90.0), height: getRelativeWidth(90.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                                    bottomRight: 12.0)
                                    .stroke(ColorConstants.Gray300,
                                            lineWidth: 2))
                            .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                       bottomLeft: 12.0, bottomRight: 12.0)
                                    .fill(ColorConstants.WhiteA700))
                        }
                        .frame(width: getRelativeWidth(290.0), height: getRelativeHeight(90.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(8.0))
                    }
                    .frame(width: getRelativeWidth(290.0), height: getRelativeHeight(384.0),
                           alignment: .center)
                    VStack {
                        Button(action: {}, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblDone)
                                    .font(FontScheme.kMontserratBold(size: getRelativeHeight(15.0)))
                                    .fontWeight(.bold)
                                    .padding(.horizontal, getRelativeWidth(30.0))
                                    .padding(.vertical, getRelativeHeight(17.0))
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(121.0),
                                           height: getRelativeHeight(50.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                               bottomLeft: 12.0, bottomRight: 12.0)
                                            .fill(ColorConstants.RedA700))
                            }
                        })
                        .frame(width: getRelativeWidth(121.0), height: getRelativeHeight(50.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                                   bottomRight: 12.0)
                                .fill(ColorConstants.RedA700))
                    }
                    .frame(width: getRelativeWidth(121.0), height: getRelativeHeight(50.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                               bottomRight: 12.0))
                    .padding(.top, getRelativeHeight(76.0))
                    .padding(.leading, getRelativeWidth(91.0))
                    .padding(.trailing, getRelativeWidth(78.0))
                }
                .frame(width: getRelativeWidth(290.0), height: getRelativeHeight(510.0),
                       alignment: .center)
                .padding(.vertical, getRelativeHeight(63.0))
                .padding(.horizontal, getRelativeWidth(41.0))
            }
            .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
            .background(ColorConstants.Red700)
            .padding(.top, getRelativeHeight(30.0))
            .padding(.bottom, getRelativeHeight(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.Red700)
        .ignoresSafeArea()
        .hideNavigationBar()
    }
}

struct IPhone11ProXTwentySevenView_Previews: PreviewProvider {
    static var previews: some View {
        IPhone11ProXTwentySevenView()
    }
}
