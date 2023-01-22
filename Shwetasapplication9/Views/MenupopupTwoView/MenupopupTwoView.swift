import SwiftUI

struct MenupopupTwoView: View {
    @StateObject var menupopupTwoViewModel = MenupopupTwoViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                VStack(alignment: .trailing, spacing: 0) {
                    Image("img_vector")
                        .resizable()
                        .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.horizontal, getRelativeWidth(22.0))
                }
                .frame(width: getRelativeWidth(280.0), height: getRelativeHeight(24.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(45.0))
                VStack(alignment: .leading, spacing: 0) {
                    Button(action: {}, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblMyProfile)
                                .font(FontScheme.kMontserratSemiBold(size: getRelativeHeight(17.0)))
                                .fontWeight(.semibold)
                                .padding(.horizontal, getRelativeWidth(30.0))
                                .padding(.vertical, getRelativeHeight(29.0))
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(280.0),
                                       height: getRelativeHeight(80.0), alignment: .center)
                                .background(ColorConstants.WhiteA700)
                        }
                    })
                    .frame(width: getRelativeWidth(280.0), height: getRelativeHeight(80.0),
                           alignment: .center)
                    .background(ColorConstants.WhiteA700)
                    Button(action: {}, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblMyClubs)
                                .font(FontScheme.kMontserratSemiBold(size: getRelativeHeight(17.0)))
                                .fontWeight(.semibold)
                                .padding(.horizontal, getRelativeWidth(30.0))
                                .padding(.vertical, getRelativeHeight(29.0))
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(280.0),
                                       height: getRelativeHeight(80.0), alignment: .center)
                                .background(ColorConstants.WhiteA700)
                        }
                    })
                    .frame(width: getRelativeWidth(280.0), height: getRelativeHeight(80.0),
                           alignment: .center)
                    .background(ColorConstants.WhiteA700)
                    Button(action: {}, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblSettings)
                                .font(FontScheme.kMontserratSemiBold(size: getRelativeHeight(17.0)))
                                .fontWeight(.semibold)
                                .padding(.horizontal, getRelativeWidth(30.0))
                                .padding(.vertical, getRelativeHeight(29.0))
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(280.0),
                                       height: getRelativeHeight(80.0), alignment: .center)
                                .background(ColorConstants.WhiteA700)
                        }
                    })
                    .frame(width: getRelativeWidth(280.0), height: getRelativeHeight(80.0),
                           alignment: .center)
                    .background(ColorConstants.WhiteA700)
                    Button(action: {}, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblStudentSupport)
                                .font(FontScheme.kMontserratSemiBold(size: getRelativeHeight(17.0)))
                                .fontWeight(.semibold)
                                .padding(.horizontal, getRelativeWidth(30.0))
                                .padding(.vertical, getRelativeHeight(29.0))
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(280.0),
                                       height: getRelativeHeight(80.0), alignment: .center)
                                .background(ColorConstants.WhiteA700)
                        }
                    })
                    .frame(width: getRelativeWidth(280.0), height: getRelativeHeight(80.0),
                           alignment: .center)
                    .background(ColorConstants.WhiteA700)
                }
                .frame(width: getRelativeWidth(280.0), height: getRelativeHeight(320.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(94.0))
                VStack(alignment: .trailing, spacing: 0) {
                    Image("img_group")
                        .resizable()
                        .frame(width: getRelativeWidth(25.0), height: getRelativeWidth(25.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.horizontal, getRelativeWidth(22.0))
                }
                .frame(width: getRelativeWidth(280.0), height: getRelativeHeight(25.0),
                       alignment: .leading)
                .padding(.vertical, getRelativeHeight(279.0))
            }
            .frame(width: getRelativeWidth(280.0), alignment: .topLeading)
            .background(ColorConstants.WhiteA700)
            .padding(.top, getRelativeHeight(30.0))
            .padding(.bottom, getRelativeHeight(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.WhiteA700)
        .ignoresSafeArea()
        .hideNavigationBar()
    }
}

struct MenupopupTwoView_Previews: PreviewProvider {
    static var previews: some View {
        MenupopupTwoView()
    }
}
