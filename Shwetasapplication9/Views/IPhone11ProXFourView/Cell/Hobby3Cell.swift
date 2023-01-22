import SwiftUI

struct Hobby3Cell: View {
    var body: some View {
        VStack {
            Image("img_image2")
                .resizable()
                .frame(width: getRelativeWidth(58.0), height: getRelativeHeight(50.0),
                       alignment: .leading)
                .scaledToFit()
                .padding(.top, getRelativeHeight(14.0))
                .padding(.horizontal, getRelativeWidth(15.0))
            Text(StringConstants.kLblMath)
                .font(FontScheme.kMontserratMedium(size: getRelativeHeight(10.5)))
                .fontWeight(.medium)
                .foregroundColor(ColorConstants.RedA700)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(28.0), height: getRelativeHeight(10.0),
                       alignment: .leading)
                .padding(.vertical, getRelativeHeight(3.0))
                .padding(.horizontal, getRelativeWidth(15.0))
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

/* struct Hobby3Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Hobby3Cell()
 }
 } */
