import SwiftUI

struct ColumnCell: View {
    var listoptionClick: (() -> Void)?
    var rowmonthClick: (() -> Void)?
    var stackmonthoneClick: (() -> Void)?
    var rowmonthoneClick: (() -> Void)?
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kMsgEventsYouHave)
                    .font(FontScheme.kMontserratMedium(size: getRelativeHeight(14.0)))
                    .fontWeight(.medium)
                    .foregroundColor(ColorConstants.Orange400)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(165.0), height: getRelativeHeight(14.0),
                           alignment: .leading)
                    .padding(.trailing)
                VStack(alignment: .leading, spacing: 0) {
                    ZStack(alignment: .topTrailing) {
                        HStack {
                            VStack {
                                Text(StringConstants.kLblAug)
                                    .font(FontScheme
                                        .kMontserratSemiBold(size: getRelativeHeight(11.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Lime900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(22.0),
                                           height: getRelativeHeight(11.0), alignment: .leading)
                                    .padding(.top, getRelativeHeight(9.0))
                                    .padding(.horizontal, getRelativeWidth(11.0))
                                Text(StringConstants.kLbl7)
                                    .font(FontScheme
                                        .kMontserratSemiBold(size: getRelativeHeight(20.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Lime900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(8.0),
                                           height: getRelativeHeight(20.0), alignment: .leading)
                                    .padding(.vertical, getRelativeHeight(4.0))
                                    .padding(.horizontal, getRelativeWidth(11.0))
                            }
                            .frame(width: getRelativeWidth(48.0), height: getRelativeWidth(50.0),
                                   alignment: .leading)
                            .background(ColorConstants.WhiteA700)
                            .padding(.leading, getRelativeWidth(8.0))
                            VStack(alignment: .leading, spacing: 0) {
                                Text(StringConstants.kMsgSpringClubApp3)
                                    .font(FontScheme
                                        .kMontserratSemiBold(size: getRelativeHeight(14.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(182.0),
                                           height: getRelativeHeight(14.0), alignment: .leading)
                                Text(StringConstants.kLblFriday)
                                    .font(FontScheme
                                        .kMontserratMedium(size: getRelativeHeight(12.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Red700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(36.0),
                                           height: getRelativeHeight(13.0), alignment: .leading)
                                    .padding(.top, getRelativeHeight(6.0))
                                    .padding(.trailing, getRelativeWidth(10.0))
                            }
                            .frame(width: getRelativeWidth(182.0), height: getRelativeHeight(33.0),
                                   alignment: .leading)
                            .padding(.leading, getRelativeWidth(10.0))
                            .padding(.trailing, getRelativeWidth(38.0))
                        }
                        .onTapGesture {
                            rowmonthClick?()
                        }
                        .frame(width: getRelativeWidth(288.0), height: getRelativeHeight(60.0),
                               alignment: .leading)
                        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                                   bottomRight: 12.0)
                                .fill(ColorConstants.WhiteA700))
                        Image("img_vector_26x18")
                            .resizable()
                            .frame(width: getRelativeWidth(16.0), height: getRelativeHeight(26.0),
                                   alignment: .leading)
                            .scaledToFit()
                            .padding(.bottom, getRelativeHeight(36.0))
                            .padding(.leading, getRelativeWidth(257.67))
                    }
                    .hideNavigationBar()
                    .onTapGesture {
                        listoptionClick?()
                    }
                    .frame(width: getRelativeWidth(288.0), height: getRelativeHeight(62.0),
                           alignment: .leading)
                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                               bottomRight: 12.0))
                    ZStack(alignment: .topTrailing) {
                        HStack {
                            VStack {
                                Text(StringConstants.kLblSep)
                                    .font(FontScheme
                                        .kMontserratSemiBold(size: getRelativeHeight(11.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Lime900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(19.0),
                                           height: getRelativeHeight(11.0), alignment: .leading)
                                    .padding(.top, getRelativeHeight(9.0))
                                    .padding(.horizontal, getRelativeWidth(12.0))
                                Text(StringConstants.kLbl29)
                                    .font(FontScheme
                                        .kMontserratSemiBold(size: getRelativeHeight(20.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Lime900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(21.0),
                                           height: getRelativeHeight(20.0), alignment: .leading)
                                    .padding(.vertical, getRelativeHeight(4.0))
                                    .padding(.horizontal, getRelativeWidth(12.0))
                            }
                            .frame(width: getRelativeWidth(48.0), height: getRelativeWidth(50.0),
                                   alignment: .leading)
                            .background(ColorConstants.WhiteA700)
                            .padding(.leading, getRelativeWidth(8.0))
                            VStack(alignment: .leading, spacing: 0) {
                                Text(StringConstants.kLblAi4girls)
                                    .font(FontScheme
                                        .kMontserratSemiBold(size: getRelativeHeight(14.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(58.0),
                                           height: getRelativeHeight(14.0), alignment: .leading)
                                Text(StringConstants.kLblThursday)
                                    .font(FontScheme
                                        .kMontserratMedium(size: getRelativeHeight(12.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Red700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(55.0),
                                           height: getRelativeHeight(12.0), alignment: .leading)
                                    .padding(.top, getRelativeHeight(6.0))
                                    .padding(.trailing, getRelativeWidth(10.0))
                            }
                            .frame(width: getRelativeWidth(58.0), height: getRelativeHeight(33.0),
                                   alignment: .leading)
                            .padding(.leading, getRelativeWidth(9.0))
                            .padding(.trailing, getRelativeWidth(162.0))
                        }
                        .onTapGesture {
                            rowmonthoneClick?()
                        }
                        .frame(width: getRelativeWidth(288.0), height: getRelativeHeight(60.0),
                               alignment: .leading)
                        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                                   bottomRight: 12.0)
                                .fill(ColorConstants.WhiteA700))
                        Image("img_vector_26x18")
                            .resizable()
                            .frame(width: getRelativeWidth(16.0), height: getRelativeHeight(26.0),
                                   alignment: .leading)
                            .scaledToFit()
                            .padding(.bottom, getRelativeHeight(36.0))
                            .padding(.leading, getRelativeWidth(257.67))
                    }
                    .hideNavigationBar()
                    .onTapGesture {
                        stackmonthoneClick?()
                    }
                    .frame(width: getRelativeWidth(288.0), height: getRelativeHeight(62.0),
                           alignment: .leading)
                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                               bottomRight: 12.0))
                    .padding(.top, getRelativeHeight(12.0))
                }
                .frame(width: getRelativeWidth(288.0), height: getRelativeHeight(135.0),
                       alignment: .leading)
                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                           bottomRight: 12.0))
                .padding(.top, getRelativeHeight(19.0))
            }
            .frame(width: getRelativeWidth(288.0), height: getRelativeHeight(168.0),
                   alignment: .leading)
            .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                       bottomRight: 12.0))
        }
        .frame(width: getRelativeWidth(288.0), alignment: .leading)
        .background(ColorConstants.WhiteA700)
        .hideNavigationBar()
    }
}

/* struct ColumnCell_Previews: PreviewProvider {

 static var previews: some View {
 			ColumnCell()
 }
 } */
