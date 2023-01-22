import SwiftUI

struct RowrectangletwentynineCell: View {
    var recommendationClick: (() -> Void)?
    var recommendation1Click: (() -> Void)?
    var body: some View {
        HStack {
            VStack {
                Image("img_rectangle29")
                    .resizable()
                    .frame(width: getRelativeWidth(48.0), height: getRelativeWidth(50.0),
                           alignment: .leading)
                    .scaledToFit()
                    .padding(.top, getRelativeHeight(13.0))
                    .padding(.horizontal, getRelativeWidth(25.0))
                Text(StringConstants.kLblHackmelbourne)
                    .font(FontScheme.kMontserratSemiBold(size: getRelativeHeight(11.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.RedA700)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(87.0), height: getRelativeHeight(13.0),
                           alignment: .leading)
                    .padding(.vertical, getRelativeHeight(12.0))
                    .padding(.horizontal, getRelativeWidth(25.0))
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
                Image("img_rectangle29_50x50")
                    .resizable()
                    .frame(width: getRelativeWidth(48.0), height: getRelativeWidth(50.0),
                           alignment: .leading)
                    .scaledToFit()
                    .padding(.top, getRelativeHeight(13.0))
                    .padding(.horizontal, getRelativeWidth(17.0))
                Text(StringConstants.kMsgEngineersWitho)
                    .font(FontScheme.kMontserratSemiBold(size: getRelativeHeight(11.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.RedA700)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .frame(width: getRelativeWidth(104.0), height: getRelativeHeight(26.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(5.0))
                    .padding(.bottom, getRelativeHeight(6.0))
                    .padding(.horizontal, getRelativeWidth(17.0))
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

/* struct RowrectangletwentynineCell_Previews: PreviewProvider {

 static var previews: some View {
 			RowrectangletwentynineCell()
 }
 } */
