import SwiftUI

struct Hobby2Cell: View {
    var body: some View {
        ZStack(alignment: .leading) {
            Text(StringConstants.kLblArts)
                .font(FontScheme.kMontserratMedium(size: getRelativeHeight(10.5)))
                .fontWeight(.medium)
                .foregroundColor(ColorConstants.RedA700)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(25.0), height: getRelativeHeight(10.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(67.08))
                .padding(.horizontal, getRelativeWidth(30.43))
            VStack {
                Image("img_image15_56x54")
                    .resizable()
                    .frame(width: getRelativeWidth(52.0), height: getRelativeHeight(56.0),
                           alignment: .leading)
                    .scaledToFit()
                    .padding(.top, getRelativeHeight(8.0))
                    .padding(.horizontal, getRelativeWidth(16.0))
                Text(StringConstants.kLblArts)
                    .font(FontScheme.kMontserratMedium(size: getRelativeHeight(10.5)))
                    .fontWeight(.medium)
                    .foregroundColor(ColorConstants.RedA700)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(25.0), height: getRelativeHeight(10.0),
                           alignment: .leading)
                    .padding(.vertical, getRelativeHeight(4.0))
                    .padding(.horizontal, getRelativeWidth(28.0))
            }
            .frame(width: getRelativeWidth(88.0), height: getRelativeWidth(90.0),
                   alignment: .leading)
            .overlay(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                    bottomRight: 12.0)
                    .stroke(ColorConstants.RedA700,
                            lineWidth: 3))
            .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                       bottomRight: 12.0)
                    .fill(ColorConstants.Gray400))
        }
        .hideNavigationBar()
        .frame(width: getRelativeWidth(88.0), alignment: .leading)
        .overlay(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0, bottomRight: 12.0)
            .stroke(ColorConstants.Gray300,
                    lineWidth: 2))
        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                   bottomRight: 12.0)
                .fill(ColorConstants.WhiteA700))
    }
}

/* struct Hobby2Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Hobby2Cell()
 }
 } */
