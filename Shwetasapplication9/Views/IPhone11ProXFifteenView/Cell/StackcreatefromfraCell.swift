import SwiftUI

struct StackcreatefromfraCell: View {
    var stackClick: (() -> Void)?
    var stackoneClick: (() -> Void)?
    var body: some View {
        ZStack(alignment: .leading) {
            ZStack {}
                .hideNavigationBar()
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(105.0),
                       alignment: .leading)
                .background(ColorConstants.WhiteA700)
                .padding(.bottom, getRelativeHeight(22.0))
            VStack {
                ZStack(alignment: .bottomLeading) {
                    ZStack {
                        Image("img_rectangle3_83x154")
                            .resizable()
                            .frame(width: getRelativeWidth(152.0), height: getRelativeHeight(83.0),
                                   alignment: .leading)
                            .scaledToFit()
                            .cornerRadius(12.0)
                            .padding(.bottom, getRelativeHeight(44.0))
                    }
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(153.0), height: getRelativeHeight(127.0),
                           alignment: .leading)
                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                               bottomRight: 12.0)
                            .fill(ColorConstants.Gray300))
                    ZStack(alignment: .center) {
                        ZStack {}
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(153.0), height: getRelativeHeight(43.0),
                                   alignment: .leading)
                            .background(RoundedCorners(bottomLeft: 12.0, bottomRight: 12.0)
                                .fill(ColorConstants.WhiteA700))
                        HStack {
                            VStack(alignment: .trailing, spacing: 0) {
                                Text(StringConstants.kLblAug)
                                    .font(FontScheme
                                        .kMontserratSemiBold(size: getRelativeHeight(9.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Lime900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(18.0),
                                           height: getRelativeHeight(9.0), alignment: .leading)
                                Text(StringConstants.kLbl22)
                                    .font(FontScheme
                                        .kMontserratSemiBold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Lime900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(6.0),
                                           height: getRelativeHeight(16.0), alignment: .leading)
                                    .padding(.horizontal, getRelativeWidth(6.0))
                            }
                            .frame(width: getRelativeWidth(18.0), height: getRelativeHeight(26.0),
                                   alignment: .leading)
                            Text(StringConstants.kMsgEntrepreneurshi)
                                .font(FontScheme.kMontserratSemiBold(size: getRelativeHeight(11.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(96.0),
                                       height: getRelativeHeight(21.0), alignment: .leading)
                                .padding(.leading, getRelativeWidth(11.0))
                        }
                        .frame(width: getRelativeWidth(127.0), height: getRelativeHeight(26.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(8.65))
                        .padding(.bottom, getRelativeHeight(8.35))
                        .padding(.horizontal, getRelativeWidth(12.8))
                    }
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(154.0), height: getRelativeHeight(43.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(83.72))
                }
                .hideNavigationBar()
                .onTapGesture {
                    stackClick?()
                }
                .frame(width: getRelativeWidth(154.0), height: getRelativeHeight(127.0),
                       alignment: .leading)
                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                           bottomRight: 12.0))
                .shadow(color: ColorConstants.Black90033, radius: 6, x: 0, y: 2)
            }
            .frame(width: getRelativeWidth(154.0), height: getRelativeHeight(127.0),
                   alignment: .leading)
            .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                       bottomRight: 12.0))
            .padding(.trailing, getRelativeWidth(166.0))
            VStack {
                ZStack(alignment: .bottomLeading) {
                    ZStack {
                        Image("img_rectangle3_1")
                            .resizable()
                            .frame(width: getRelativeWidth(152.0), height: getRelativeHeight(83.0),
                                   alignment: .leading)
                            .scaledToFit()
                            .cornerRadius(12.0)
                            .padding(.bottom, getRelativeHeight(44.0))
                    }
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(153.0), height: getRelativeHeight(127.0),
                           alignment: .leading)
                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                               bottomRight: 12.0)
                            .fill(ColorConstants.Gray300))
                    ZStack(alignment: .center) {
                        ZStack {}
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(153.0), height: getRelativeHeight(43.0),
                                   alignment: .leading)
                            .background(RoundedCorners(bottomLeft: 12.0, bottomRight: 12.0)
                                .fill(ColorConstants.WhiteA700))
                        HStack {
                            VStack(alignment: .leading, spacing: 0) {
                                Text(StringConstants.kLblJul)
                                    .font(FontScheme
                                        .kMontserratSemiBold(size: getRelativeHeight(9.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Lime900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(15.0),
                                           height: getRelativeHeight(9.0), alignment: .leading)
                                    .padding(.trailing)
                                Text(StringConstants.kLbl26)
                                    .font(FontScheme
                                        .kMontserratSemiBold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Lime900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(16.0),
                                           height: getRelativeHeight(16.0), alignment: .leading)
                            }
                            .frame(width: getRelativeWidth(16.0), height: getRelativeHeight(26.0),
                                   alignment: .leading)
                            Text(StringConstants.kMsgBusinessoneRec)
                                .font(FontScheme.kMontserratSemiBold(size: getRelativeHeight(11.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(94.0),
                                       height: getRelativeHeight(21.0), alignment: .leading)
                                .padding(.leading, getRelativeWidth(11.0))
                        }
                        .frame(width: getRelativeWidth(124.0), height: getRelativeHeight(26.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(8.69))
                        .padding(.bottom, getRelativeHeight(8.31))
                        .padding(.horizontal, getRelativeWidth(14.18))
                    }
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(154.0), height: getRelativeHeight(43.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(83.72))
                }
                .hideNavigationBar()
                .onTapGesture {
                    stackoneClick?()
                }
                .frame(width: getRelativeWidth(154.0), height: getRelativeHeight(127.0),
                       alignment: .leading)
                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                           bottomRight: 12.0))
                .shadow(color: ColorConstants.Black90033, radius: 6, x: 0, y: 2)
            }
            .frame(width: getRelativeWidth(154.0), height: getRelativeHeight(127.0),
                   alignment: .leading)
            .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                       bottomRight: 12.0))
            .padding(.leading, getRelativeWidth(165.52))
        }
        .hideNavigationBar()
        .frame(width: UIScreen.main.bounds.width, alignment: .leading)
        .background(ColorConstants.WhiteA700)
    }
}

/* struct StackcreatefromfraCell_Previews: PreviewProvider {

 static var previews: some View {
 			StackcreatefromfraCell()
 }
 } */
