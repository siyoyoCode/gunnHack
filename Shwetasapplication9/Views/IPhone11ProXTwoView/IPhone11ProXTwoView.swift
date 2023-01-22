import SwiftUI

struct IPhone11ProXTwoView: View {
    @StateObject var iPhone11ProXTwoViewModel = IPhone11ProXTwoViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kLblGunnTitans)
                        .font(FontScheme.kMontserratRomanMedium(size: getRelativeHeight(16.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.WhiteA700)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(111.0), height: getRelativeHeight(16.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(85.0))
                        .padding(.horizontal, getRelativeWidth(43.0))
                    Image("img_rectangle3")
                        .resizable()
                        .frame(width: getRelativeWidth(175.0), height: getRelativeHeight(168.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.top, getRelativeHeight(42.0))
                        .padding(.horizontal, getRelativeWidth(43.0))
                    Text(StringConstants.kLblUsername)
                        .font(FontScheme.kMontserratMedium(size: getRelativeHeight(14.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.WhiteA700)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(74.0), height: getRelativeHeight(14.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(34.0))
                        .padding(.horizontal, getRelativeWidth(43.0))
                    HStack {
                        TextField("", text: $iPhone11ProXTwoViewModel.rectangleoneText)
                            .padding()
                    }
                    .frame(width: getRelativeWidth(290.0), height: getRelativeHeight(38.0),
                           alignment: .center)
                    .background(ColorConstants.WhiteA700)
                    .padding(.top, getRelativeHeight(14.0))
                    .padding(.horizontal, getRelativeWidth(43.0))
                    Text(StringConstants.kLblPassword)
                        .font(FontScheme.kMontserratMedium(size: getRelativeHeight(14.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.WhiteA700)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(69.0), height: getRelativeHeight(14.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(29.0))
                        .padding(.horizontal, getRelativeWidth(43.0))
                    ZStack {}
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(290.0), height: getRelativeHeight(38.0),
                               alignment: .center)
                        .background(ColorConstants.WhiteA700)
                        .padding(.top, getRelativeHeight(15.0))
                        .padding(.horizontal, getRelativeWidth(43.0))
                    Button(action: {
                        iPhone11ProXTwoViewModel.nextScreen = "FrameTwelveView"
                    }, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblLogIn)
                                .font(FontScheme
                                    .kMontserratRomanBold(size: getRelativeHeight(15.0)))
                                .fontWeight(.bold)
                                .padding(.horizontal, getRelativeWidth(30.0))
                                .padding(.vertical, getRelativeHeight(22.0))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(150.0),
                                       height: getRelativeHeight(62.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                           bottomLeft: 12.0, bottomRight: 12.0)
                                        .fill(ColorConstants.RedA700))
                                .padding(.top, getRelativeHeight(49.0))
                                .padding(.horizontal, getRelativeWidth(43.0))
                        }
                    })
                    .frame(width: getRelativeWidth(150.0), height: getRelativeHeight(62.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                               bottomRight: 12.0)
                            .fill(ColorConstants.RedA700))
                    .padding(.top, getRelativeHeight(49.0))
                    .padding(.horizontal, getRelativeWidth(43.0))
                    Text(StringConstants.kMsgForgotPassword)
                        .font(FontScheme.kMontserratMedium(size: getRelativeHeight(12.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.WhiteA700)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(110.0), height: getRelativeHeight(12.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(100.0))
                        .padding(.horizontal, getRelativeWidth(43.0))
                    Text(StringConstants.kMsgPrivacyCollect)
                        .font(FontScheme.kMontserratMedium(size: getRelativeHeight(12.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.WhiteA700)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(148.0), height: getRelativeHeight(15.0),
                               alignment: .topLeading)
                        .padding(.vertical, getRelativeHeight(12.0))
                        .padding(.horizontal, getRelativeWidth(43.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.Red700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: FrameTwelveView(),
                                   tag: "FrameTwelveView",
                                   selection: $iPhone11ProXTwoViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.Red700)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct IPhone11ProXTwoView_Previews: PreviewProvider {
    static var previews: some View {
        IPhone11ProXTwoView()
    }
}
