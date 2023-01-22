import SwiftUI

struct FrameElevenView: View {
    @StateObject var frameElevenViewModel = FrameElevenViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Text(StringConstants.kMsgGiveUsAMomen)
                        .font(FontScheme.kMontserratSemiBold(size: getRelativeHeight(24.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Black900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(255.0), height: getRelativeHeight(24.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(56.0))
                        .padding(.horizontal, getRelativeWidth(26.0))
                    Text(StringConstants.kMsgYourFeedIsBe)
                        .font(FontScheme.kMontserratMedium(size: getRelativeHeight(12.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Red700)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(255.0), height: getRelativeHeight(47.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(46.0))
                        .padding(.horizontal, getRelativeWidth(26.0))
                    Button(action: {
                        frameElevenViewModel.nextScreen = "IPhone11ProXFourView"
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
                                .padding(.vertical, getRelativeHeight(26.0))
                                .padding(.horizontal, getRelativeWidth(26.0))
                        }
                    })
                    .frame(width: getRelativeWidth(142.0), height: getRelativeHeight(50.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                               bottomRight: 12.0)
                            .fill(ColorConstants.RedA700))
                    .padding(.vertical, getRelativeHeight(26.0))
                    .padding(.horizontal, getRelativeWidth(26.0))
                }
                .frame(width: getRelativeWidth(318.0), height: getRelativeHeight(297.0),
                       alignment: .leading)
                .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                           bottomRight: 25.0)
                        .fill(ColorConstants.WhiteA700))
                Group {
                    NavigationLink(destination: IPhone11ProXFourView(),
                                   tag: "IPhone11ProXFourView",
                                   selection: $frameElevenViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: getRelativeWidth(318.0), height: getRelativeHeight(297.0))
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct FrameElevenView_Previews: PreviewProvider {
    static var previews: some View {
        FrameElevenView()
    }
}
