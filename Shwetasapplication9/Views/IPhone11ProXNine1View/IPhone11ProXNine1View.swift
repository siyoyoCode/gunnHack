import SwiftUI

struct IPhone11ProXNine1View: View {
    @StateObject var iPhone11ProXNine1ViewModel = IPhone11ProXNine1ViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    VStack(alignment: .leading, spacing: 0) {
                        VStack {
                            HStack {
                                HStack {
                                    Image("img_arrowleft")
                                        .resizable()
                                        .frame(width: getRelativeWidth(24.0),
                                               height: getRelativeWidth(24.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.vertical, getRelativeHeight(2.0))
                                        .padding(.leading, getRelativeWidth(20.0))
                                        .onTapGesture {
                                            self.presentationMode.wrappedValue.dismiss()
                                        }
                                    Text(StringConstants.kLblMyClubs)
                                        .font(FontScheme
                                            .kMontserratSemiBold(size: getRelativeHeight(17.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(81.0),
                                               height: getRelativeHeight(17.0),
                                               alignment: .topLeading)
                                        .padding(.vertical, getRelativeHeight(8.0))
                                        .padding(.leading, getRelativeWidth(103.0))
                                }
                                .frame(width: UIScreen.main.bounds.width - 20,
                                       height: getRelativeHeight(44.0), alignment: .leading)
                                .background(ColorConstants.RedA700)
                            }
                            .frame(width: UIScreen.main.bounds.width - 20,
                                   height: getRelativeHeight(44.0), alignment: .leading)
                            Text(StringConstants.kMsgClubsAndSocie2)
                                .font(FontScheme.kMontserratMedium(size: getRelativeHeight(14.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Lime900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(277.0),
                                       height: getRelativeHeight(35.0), alignment: .center)
                                .padding(.top, getRelativeHeight(81.0))
                                .padding(.horizontal, getRelativeWidth(49.0))
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(161.0),
                               alignment: .leading)
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(161.0),
                           alignment: .center)
                    VStack {
                        Text("tabbar")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: UIScreen.main.bounds.width - 20,
                                   height: getRelativeHeight(85.0), alignment: .center)
                            .background(ColorConstants.RedA700)
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(85.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(522.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: IPhone11ProXSixteenView(),
                                   tag: "IPhone11ProXSixteenView",
                                   selection: $iPhone11ProXNine1ViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.WhiteA700)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct IPhone11ProXNine1View_Previews: PreviewProvider {
    static var previews: some View {
        IPhone11ProXNine1View()
    }
}
