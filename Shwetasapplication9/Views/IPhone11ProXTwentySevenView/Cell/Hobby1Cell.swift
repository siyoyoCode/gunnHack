import SwiftUI

struct Hobby1Cell: View {
    var body: some View {
        VStack {
            Image("img_image5")
                .resizable()
                .frame(width: getRelativeWidth(48.0), height: getRelativeHeight(71.0),
                       alignment: .leading)
                .scaledToFit()
                .padding(.horizontal, getRelativeWidth(18.0))
            Text(StringConstants.kLblLanguages)
                .font(FontScheme.kMontserratMedium(size: getRelativeHeight(10.5)))
                .fontWeight(.medium)
                .foregroundColor(ColorConstants.RedA700)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(65.0), height: getRelativeHeight(10.0),
                       alignment: .leading)
                .padding(.bottom, getRelativeHeight(12.0))
                .padding(.horizontal, getRelativeWidth(11.0))
        }
        .frame(width: getRelativeWidth(88.0), alignment: .leading)
        .overlay(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0, bottomRight: 12.0)
            .stroke(ColorConstants.Gray300,
                    lineWidth: 2))
        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                   bottomRight: 12.0)
                .fill(ColorConstants.WhiteA700))
        .hideNavigationBar()
    }
}

/* struct Hobby1Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Hobby1Cell()
 }
 } */
