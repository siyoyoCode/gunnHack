import SwiftUI
// allow access page
struct FrameTwelveView: View {
    @StateObject var frameTwelveViewModel = FrameTwelveViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Text(StringConstants.kLblAllowAccess)
                        .font(FontScheme.kMontserratSemiBold(size: getRelativeHeight(24.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Black900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(213.0), height: getRelativeHeight(24.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(56.0))
                    Text(StringConstants.kMsgWouldYouAllow)
                        .font(FontScheme.kMontserratMedium(size: getRelativeHeight(12.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Red700)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(250.0), height: getRelativeHeight(98.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(46.0))
                    Button(action: {
                        frameTwelveViewModel.nextScreen = "IPhone11ProXFourView"
                    }, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblConfirm)
                                .font(FontScheme.kMontserratBold(size: getRelativeHeight(15.0)))
                                .fontWeight(.bold)
                                .padding(.horizontal, getRelativeWidth(30.0))
                                .padding(.vertical, getRelativeHeight(17.0))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(142.0),
                                       height: getRelativeHeight(50.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                           bottomLeft: 12.0, bottomRight: 12.0)
                                        .fill(ColorConstants.RedA700))
                                .padding(.vertical, getRelativeHeight(61.0))
                                .padding(.horizontal, getRelativeWidth(34.0))
                        }
                    })
                    .frame(width: getRelativeWidth(142.0), height: getRelativeHeight(50.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                               bottomRight: 12.0)
                            .fill(ColorConstants.RedA700))
                    .padding(.vertical, getRelativeHeight(61.0))
                    .padding(.horizontal, getRelativeWidth(34.0))
                    
                    
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(384.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                           bottomRight: 25.0)
                        .fill(ColorConstants.WhiteA700))
                Group {
                    NavigationLink(destination: IPhone11ProXFourView(),
                                   tag: "IPhone11ProXFourView",
                                   selection: $frameTwelveViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(384.0))
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct FrameTwelveView_Previews: PreviewProvider {
    static var previews: some View {
        FrameTwelveView()
    }
}
