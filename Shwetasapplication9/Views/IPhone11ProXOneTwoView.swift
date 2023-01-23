import SwiftUI

struct IPhone11ProXOneTwoView: View {
    @StateObject var iPhone11ProXOneTwoViewModel = IPhone11ProXOneTwoViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                Image("img_myunilifelan")
                    .resizable()
                    .frame(width: 300, height: getRelativeHeight(173.0),
                           alignment: .center)
                    .scaledToFit()
                    .clipped()
                    .background(RoundedCorners(topLeft: 39.0, topRight: 39.0, bottomLeft: 39.0,
                                               bottomRight: 39.0))
                Text(StringConstants.kMsgAClubExperien)
                    .font(FontScheme.kMontserratRomanRegular(size: getRelativeHeight(30.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.WhiteA700)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .frame(width: getRelativeWidth(277.0), height: getRelativeHeight(90.0))
                    .padding(.top, getRelativeHeight(50.0))
                    .padding(.horizontal, getRelativeWidth(22.0))

                
                Button(action: {
                    iPhone11ProXOneTwoViewModel.nextScreen = "IPhone11ProXTwoView"
                }, label: {
                    Text("Start Your Journey!")
                        .font(FontScheme.kMontserratBold(size: getRelativeHeight(15.0)))
                        .offset(y: 0)
                        .foregroundColor(ColorConstants.WhiteA700)
                })
                
                .frame(width: getRelativeWidth(189.0), height: getRelativeHeight(75.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                           bottomRight: 12.0)
                        .fill(ColorConstants.RedA700))
                .padding(.top, getRelativeHeight(50.0))
                .padding(.horizontal, getRelativeWidth(22.0))
                
                Group {
                    NavigationLink(destination: IPhone11ProXTwoView(),
                                   tag: "IPhone11ProXTwoView",
                                   selection: $iPhone11ProXOneTwoViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
                
                
                
               
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.Red700).ignoresSafeArea()
            .hideNavigationBar()
        }
//        .hideNavigationBar()
    }
}

struct IPhone11ProXOneTwoView_Previews: PreviewProvider {
    static var previews: some View {
        IPhone11ProXOneTwoView()
    }
}

