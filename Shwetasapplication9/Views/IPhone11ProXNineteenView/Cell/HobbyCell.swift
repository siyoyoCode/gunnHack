import SwiftUI

struct HobbyCell: View {
    var body: some View {
        ZStack(alignment: .topTrailing) {
            VStack {
                Text(StringConstants.kLbl2)
                    .font(FontScheme.kMontserratBold(size: getRelativeHeight(42.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.CyanA401)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(43.0), height: getRelativeHeight(42.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(12.0))
                    .padding(.horizontal, getRelativeWidth(13.0))
                Text(StringConstants.kLblTechnology2)
                    .font(FontScheme.kMontserratMedium(size: getRelativeHeight(10.5)))
                    .fontWeight(.medium)
                    .foregroundColor(ColorConstants.CyanA401)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(60.0), height: getRelativeHeight(12.0),
                           alignment: .leading)
                    .padding(.vertical, getRelativeHeight(13.0))
                    .padding(.horizontal, getRelativeWidth(13.0))
            }
            .frame(width: getRelativeWidth(88.0), height: getRelativeWidth(90.0),
                   alignment: .leading)
            .overlay(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                    bottomRight: 12.0)
                    .stroke(ColorConstants.Red900,
                            lineWidth: 2))
            .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                       bottomRight: 12.0)
                    .fill(ColorConstants.WhiteA700))
            .padding(.top, getRelativeHeight(7.0))
            .padding(.trailing, getRelativeWidth(8.0))
            ZStack {
                Image("img_vector_25x25")
                    .resizable()
                    .frame(width: getRelativeWidth(23.0), height: getRelativeWidth(25.0),
                           alignment: .leading)
                    .scaledToFit()
            }
            .hideNavigationBar()
            .frame(width: getRelativeWidth(23.0), height: getRelativeWidth(25.0),
                   alignment: .leading)
            .background(RoundedCorners(topLeft: 12.5, topRight: 12.5, bottomLeft: 12.5,
                                       bottomRight: 12.5)
                    .fill(ColorConstants.WhiteA700))
            .padding(.bottom, getRelativeHeight(72.0))
            .padding(.leading, getRelativeWidth(73.0))
        }
        .hideNavigationBar()
        .frame(width: getRelativeWidth(96.0), alignment: .leading)
    }
}

/* struct HobbyCell_Previews: PreviewProvider {

 static var previews: some View {
 			HobbyCell()
 }
 } */
