import SwiftUI

struct Eventname2Cell: View {
    var body: some View {
        HStack {
            ZStack(alignment: .center) {
                ZStack {}
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(38.0), height: getRelativeHeight(41.0),
                           alignment: .leading)
                    .background(ColorConstants.WhiteA700)
                    .padding(.horizontal, getRelativeWidth(6.0))
                VStack {
                    Text(StringConstants.kLblMonth)
                        .font(FontScheme.kMontserratSemiBold(size: getRelativeHeight(12.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Lime900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(43.0), height: getRelativeHeight(11.0),
                               alignment: .leading)
                    Text(StringConstants.kLblDd)
                        .font(FontScheme.kMontserratSemiBold(size: getRelativeHeight(20.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Lime900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(28.0), height: getRelativeHeight(19.0),
                               alignment: .leading)
                        .padding(.horizontal, getRelativeWidth(7.0))
                }
                .frame(width: getRelativeWidth(43.0), height: getRelativeHeight(30.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(6.27))
                .padding(.horizontal, getRelativeWidth(3.52))
            }
            .hideNavigationBar()
            .frame(width: getRelativeWidth(51.0), height: getRelativeHeight(41.0),
                   alignment: .leading)
            .padding(.leading, getRelativeWidth(12.0))
            Text(StringConstants.kLblEventName)
                .font(FontScheme.kMontserratSemiBold(size: getRelativeHeight(14.0)))
                .fontWeight(.semibold)
                .foregroundColor(ColorConstants.Black900)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(83.0), height: getRelativeHeight(14.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(21.0))
                .padding(.trailing, getRelativeWidth(28.0))
        }
        .frame(width: getRelativeWidth(198.0), alignment: .leading)
        .background(RoundedCorners(bottomLeft: 12.0, bottomRight: 12.0)
            .fill(ColorConstants.WhiteA700))
        .hideNavigationBar()
    }
}

/* struct Eventname2Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Eventname2Cell()
 }
 } */
