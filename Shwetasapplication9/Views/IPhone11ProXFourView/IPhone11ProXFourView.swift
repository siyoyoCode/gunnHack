import SwiftUI

struct IPhone11ProXFourView: View {
    @StateObject var iPhone11ProXFourViewModel = IPhone11ProXFourViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                Text(StringConstants.kMsgSelectTopicsT)
                    .font(FontScheme.kMontserratSemiBold(size: getRelativeHeight(14.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.WhiteA700)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(233.0), height: getRelativeHeight(34.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(76.0))
                    .padding(.horizontal, getRelativeWidth(43.0))
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        LazyVGrid(columns: [SwiftUI.GridItem(), SwiftUI.GridItem(),
                                            SwiftUI.GridItem()],
                                  spacing: 10.0) {
                            ForEach(0 ... 11, id: \.self) { index in
                                Hobby3Cell()
                            }
                        }
                    }
                }
                .padding(.top, getRelativeHeight(32.0))
                .padding(.horizontal, getRelativeWidth(43.0))
                .fixedSize(horizontal: false, vertical: false)
                VStack {
                    ZStack(alignment: .leading) {
                        Text(StringConstants.kLblNext)
                            .font(FontScheme.kMontserratBold(size: getRelativeHeight(15.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(37.0), height: getRelativeHeight(15.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(17.31))
                            .padding(.bottom, getRelativeHeight(17.69))
                            .padding(.horizontal, getRelativeWidth(39.0))
                        ZStack(alignment: .leading) {
                            Text(StringConstants.kLblNext)
                                .font(FontScheme.kMontserratBold(size: getRelativeHeight(15.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(37.0),
                                       height: getRelativeHeight(15.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(17.31))
                                .padding(.bottom, getRelativeHeight(17.69))
                                .padding(.horizontal, getRelativeWidth(39.0))
                            VStack {
                                VStack {
                                    VStack {
                                        VStack {
                                            Button(action: {}, label: {
                                                HStack(spacing: 0) {
                                                    Text(StringConstants.kLblNext)
                                                        .font(FontScheme
                                                            .kMontserratBold(size: getRelativeHeight(15.0)))
                                                        .fontWeight(.bold)
                                                        .padding(.horizontal,
                                                                 getRelativeWidth(30.0))
                                                        .padding(.vertical, getRelativeHeight(17.0))
                                                        .foregroundColor(ColorConstants.WhiteA700)
                                                        .minimumScaleFactor(0.5)
                                                        .multilineTextAlignment(.center)
                                                        .frame(width: getRelativeWidth(115.0),
                                                               height: getRelativeHeight(50.0),
                                                               alignment: .center)
                                                        .background(RoundedCorners(topLeft: 12.0,
                                                                                   topRight: 12.0,
                                                                                   bottomLeft: 12.0,
                                                                                   bottomRight: 12.0)
                                                                .fill(ColorConstants.RedA700))
                                                }
                                                .onTapGesture {}
                                            })
                                            .frame(width: getRelativeWidth(115.0),
                                                   height: getRelativeHeight(50.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 12.0,
                                                                       topRight: 12.0,
                                                                       bottomLeft: 12.0,
                                                                       bottomRight: 12.0)
                                                    .fill(ColorConstants.RedA700))
                                        }
                                        .frame(width: getRelativeWidth(115.0),
                                               height: getRelativeHeight(50.0), alignment: .leading)
                                        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                                   bottomLeft: 12.0,
                                                                   bottomRight: 12.0))
                                    }
                                    .frame(width: getRelativeWidth(115.0),
                                           height: getRelativeHeight(50.0), alignment: .leading)
                                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                               bottomLeft: 12.0, bottomRight: 12.0))
                                }
                                .frame(width: getRelativeWidth(115.0),
                                       height: getRelativeHeight(50.0), alignment: .leading)
                                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                           bottomLeft: 12.0, bottomRight: 12.0))
                            }
                            .frame(width: getRelativeWidth(115.0), height: getRelativeHeight(50.0),
                                   alignment: .leading)
                            .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                       bottomLeft: 12.0, bottomRight: 12.0))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(115.0), height: getRelativeHeight(50.0),
                               alignment: .leading)
                        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                                   bottomRight: 12.0)
                                .fill(ColorConstants.RedA700))
                    }
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(115.0), height: getRelativeHeight(50.0),
                           alignment: .leading)
                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                               bottomRight: 12.0)
                            .fill(ColorConstants.RedA700))
                    Text(StringConstants.kLblSkipThisStep)
                        .font(FontScheme.kMontserratMedium(size: getRelativeHeight(12.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.WhiteA700)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(82.0), height: getRelativeHeight(15.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(14.0))
                        .padding(.horizontal, getRelativeWidth(17.0))
                }
                .frame(width: getRelativeWidth(115.0), height: getRelativeHeight(79.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                           bottomRight: 12.0))
                .padding(.vertical, getRelativeHeight(34.0))
                .padding(.horizontal, getRelativeWidth(43.0))
            }
            .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
            .background(ColorConstants.Red700)
            .padding(.top, getRelativeHeight(30.0))
            .padding(.bottom, getRelativeHeight(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.Red700)
        .ignoresSafeArea()
        .hideNavigationBar()
    }
}

struct IPhone11ProXFourView_Previews: PreviewProvider {
    static var previews: some View {
        IPhone11ProXFourView()
    }
}
