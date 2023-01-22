import SwiftUI

struct Rowrectangletwentynine1Cell: View {
    var recommendationClick: (() -> Void)?
    var recommendation1Click: (() -> Void)?
    var body: some View {
        HStack {
            VStack {
                Image("img_rectangle29_5")
                    .resizable()
                    .frame(width: getRelativeWidth(48.0), height: getRelativeWidth(50.0),
                           alignment: .leading)
                    .scaledToFit()
                    .padding(.top, getRelativeHeight(13.0))
                    .padding(.horizontal, getRelativeWidth(40.0))
                Text(StringConstants.kLblCardCrew)
                    .font(FontScheme.kMontserratSemiBold(size: getRelativeHeight(11.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.RedA700)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(56.0), height: getRelativeHeight(13.0),
                           alignment: .leading)
                    .padding(.vertical, getRelativeHeight(12.0))
                    .padding(.horizontal, getRelativeWidth(40.0))
            }
            .onTapGesture {
                recommendationClick?()
            }
            .frame(width: getRelativeWidth(138.0), height: getRelativeHeight(100.0),
                   alignment: .leading)
            .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                       bottomRight: 12.0)
                    .fill(ColorConstants.WhiteA700))
            VStack {
                Image("img_rectangle29_6")
                    .resizable()
                    .frame(width: getRelativeWidth(48.0), height: getRelativeWidth(50.0),
                           alignment: .leading)
                    .scaledToFit()
                    .padding(.top, getRelativeHeight(13.0))
                    .padding(.horizontal, getRelativeWidth(39.0))
                Text(StringConstants.kLblChessClub)
                    .font(FontScheme.kMontserratSemiBold(size: getRelativeHeight(11.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.RedA700)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(60.0), height: getRelativeHeight(13.0),
                           alignment: .leading)
                    .padding(.vertical, getRelativeHeight(12.0))
                    .padding(.horizontal, getRelativeWidth(39.0))
            }
            .onTapGesture {
                recommendation1Click?()
            }
            .frame(width: getRelativeWidth(138.0), height: getRelativeHeight(100.0),
                   alignment: .leading)
            .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                       bottomRight: 12.0)
                    .fill(ColorConstants.WhiteA700))
            .padding(.leading, getRelativeWidth(10.0))
        }
        .frame(width: getRelativeWidth(288.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct Rowrectangletwentynine1Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Rowrectangletwentynine1Cell()
 }
 } */
