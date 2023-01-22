import SwiftUI

struct IPhone11ProXSixOneView: View {
    @StateObject var iPhone11ProXSixOneViewModel = IPhone11ProXSixOneViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 0) {
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        ZStack(alignment: .topLeading) {
                            Text(StringConstants.kLblHome)
                                .font(FontScheme.kMontserratSemiBold(size: getRelativeHeight(17.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(54.0),
                                       height: getRelativeHeight(17.0), alignment: .topLeading)
                                .padding(.bottom, getRelativeHeight(20.39))
                                .padding(.horizontal, getRelativeWidth(160.0))
                            Text(StringConstants.kLblBrowseClubs)
                                .font(FontScheme.kMontserratSemiBold(size: getRelativeHeight(17.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(117.0),
                                       height: getRelativeHeight(11.0), alignment: .topLeading)
                                .padding(.bottom, getRelativeHeight(20.74))
                                .padding(.trailing, getRelativeWidth(141.0))
                            Text(StringConstants.kLblBrowseClubs)
                                .font(FontScheme.kMontserratSemiBold(size: getRelativeHeight(17.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(117.0),
                                       height: getRelativeHeight(11.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(23.76))
                                .padding(.leading, getRelativeWidth(123.0))
                                .padding(.trailing, getRelativeWidth(135.0))
                            ZStack {
                                Image("img_vector_1")
                                    .resizable()
                                    .frame(width: getRelativeWidth(26.0),
                                           height: getRelativeWidth(26.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.bottom, getRelativeHeight(15.33))
                                    .padding(.leading, getRelativeWidth(328.67))
                            }
                            .hideNavigationBar()
                            .frame(width: UIScreen.main.bounds.width,
                                   height: getRelativeHeight(44.0), alignment: .leading)
                            .background(ColorConstants.RedA700)
                        }
                        .hideNavigationBar()
                    }
                    .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(44.0),
                           alignment: .leading)
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(44.0),
                       alignment: .center)
                VStack(alignment: .trailing, spacing: 0) {
                    VStack {
                        Text(StringConstants.kMsgWelcomeToYour)
                            .font(FontScheme.kMontserratBold(size: getRelativeHeight(30.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.RedA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(272.0), height: getRelativeHeight(62.0),
                                   alignment: .center)
                            .padding(.leading, getRelativeWidth(6.0))
                            .padding(.trailing, getRelativeWidth(53.0))
                        Text(StringConstants.kMsgEventsYouMay)
                            .font(FontScheme.kMontserratMedium(size: getRelativeHeight(14.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Lime900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(229.0), height: getRelativeHeight(15.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(64.0))
                            .padding(.trailing, getRelativeWidth(103.0))
                        ZStack(alignment: .trailing) {
                            VStack(alignment: .leading, spacing: 0) {
                                ScrollView(.horizontal, showsIndicators: false) {
                                    HStack {
                                        ZStack {}
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(200.0),
                                                   height: getRelativeHeight(120.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 12.0,
                                                                       topRight: 12.0)
                                                    .fill(ColorConstants
                                                        .Gray300))
                                        Image("img_rectangle5")
                                            .resizable()
                                            .frame(width: getRelativeWidth(200.0),
                                                   height: getRelativeHeight(120.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.leading, getRelativeWidth(16.0))
                                    }
                                    .frame(width: UIScreen.main.bounds.width,
                                           height: getRelativeHeight(120.0), alignment: .leading)
                                }
                                HStack(spacing: 0) {
                                    ScrollView(.horizontal, showsIndicators: false) {
                                        LazyHStack {
                                            ForEach(0 ... 1, id: \.self) { index in
                                                EventnameCell()
                                            }
                                        }
                                    }
                                }
                                .frame(width: UIScreen.main.bounds.width, alignment: .trailing)
                            }
                            .frame(width: getRelativeWidth(200.0), height: getRelativeHeight(170.0),
                                   alignment: .leading)
                            .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                       bottomLeft: 12.0, bottomRight: 12.0))
                            .shadow(color: ColorConstants.Black90033, radius: 6, x: 0, y: 2)
                            .padding(.trailing, getRelativeWidth(133.0))
                            VStack {
                                VStack {
                                    Image("img_vector_25x12")
                                        .resizable()
                                        .frame(width: getRelativeWidth(12.0),
                                               height: getRelativeHeight(25.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.top, getRelativeHeight(72.0))
                                        .padding(.horizontal, getRelativeWidth(18.0))
                                    Text(StringConstants.kLblEventName)
                                        .font(FontScheme
                                            .kMontserratSemiBold(size: getRelativeHeight(14.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(37.0),
                                               height: getRelativeHeight(14.0),
                                               alignment: .topLeading)
                                        .padding(.vertical, getRelativeHeight(42.0))
                                        .padding(.leading, getRelativeWidth(10.0))
                                }
                                .frame(width: getRelativeWidth(117.0),
                                       height: getRelativeHeight(170.0), alignment: .leading)
                                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                           bottomLeft: 12.0, bottomRight: 12.0))
                                .shadow(color: ColorConstants.Black90033, radius: 6, x: 0, y: 2)
                            }
                            .frame(width: getRelativeWidth(117.0), height: getRelativeHeight(170.0),
                                   alignment: .trailing)
                            .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                       bottomLeft: 12.0, bottomRight: 12.0))
                            .shadow(color: ColorConstants.Black90033, radius: 6, x: 0, y: 2)
                            .padding(.leading, getRelativeWidth(216.0))
                            Image("img_rectangle37")
                                .resizable()
                                .frame(width: UIScreen.main.bounds.width,
                                       height: getRelativeHeight(170.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                        }
                        .hideNavigationBar()
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(170.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(13.0))
                        Text(StringConstants.kMsgSpringClubApp)
                            .font(FontScheme.kMontserratMedium(size: getRelativeHeight(14.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Lime900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(292.0), height: getRelativeHeight(15.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(55.0))
                            .padding(.trailing, getRelativeWidth(41.0))
                        ZStack(alignment: .center) {
                            Image("img_rectangle19")
                                .resizable()
                                .frame(width: getRelativeWidth(290.0),
                                       height: getRelativeHeight(140.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                           bottomLeft: 12.0, bottomRight: 12.0))
                            Text(StringConstants.kMsgSpringClubApp2)
                                .font(FontScheme.kMontserratSemiBold(size: getRelativeHeight(20.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(256.0),
                                       height: getRelativeHeight(20.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(106.56))
                                .padding(.horizontal, getRelativeWidth(18.0))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(290.0), height: getRelativeHeight(140.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(13.0))
                        .padding(.trailing, getRelativeWidth(43.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(549.0),
                           alignment: .trailing)
                    .background(ColorConstants.WhiteA700)
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(549.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(99.0))
                VStack {}
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(85.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(52.0))
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

struct IPhone11ProXSixOneView_Previews: PreviewProvider {
    static var previews: some View {
        IPhone11ProXSixOneView()
    }
}
