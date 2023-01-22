import SwiftUI

struct RecommendationCell: View {
    var body: some View {
        VStack {
            Image("img_rectangle29_9")
                .resizable()
                .frame(width: getRelativeWidth(48.0), height: getRelativeWidth(50.0),
                       alignment: .leading)
                .scaledToFit()
                .padding(.top, getRelativeHeight(13.0))
                .padding(.horizontal, getRelativeWidth(21.0))
            Text(StringConstants.kLblMurMotorsports)
                .font(FontScheme.kMontserratSemiBold(size: getRelativeHeight(11.0)))
                .fontWeight(.semibold)
                .foregroundColor(ColorConstants.RedA700)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(96.0), height: getRelativeHeight(13.0),
                       alignment: .leading)
                .padding(.vertical, getRelativeHeight(12.0))
                .padding(.horizontal, getRelativeWidth(21.0))
        }
        .frame(width: getRelativeWidth(138.0), alignment: .leading)
        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                   bottomRight: 12.0)
                .fill(ColorConstants.WhiteA700))
        .hideNavigationBar()
    }
}

/* struct RecommendationCell_Previews: PreviewProvider {

 static var previews: some View {
 			RecommendationCell()
 }
 } */
