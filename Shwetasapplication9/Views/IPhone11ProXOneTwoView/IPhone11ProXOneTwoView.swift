import SwiftUI
// start journey (very first page)
struct IPhone11ProXOneTwoView: View {
    @StateObject var iPhone11ProXOneTwoViewModel = IPhone11ProXOneTwoViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                Image("img_myunilifelan") // THIS IS AN IMAGE
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(173.0),
                           alignment: .center)
                    .scaledToFit()
                    .clipped()
                    .background(RoundedCorners(topLeft: 39.0, topRight: 39.0, bottomLeft: 39.0,
                                               bottomRight: 39.0))
                Text(StringConstants.kMsgAClubExperien) // THIS IS "A CLUB EXPERIENCE TAILORED TO YOU"
                    .font(FontScheme.kMontserratRomanRegular(size: getRelativeHeight(30.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.WhiteA700)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .frame(width: getRelativeWidth(277.0), height: getRelativeHeight(90.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(50.0))
                    .padding(.horizontal, getRelativeWidth(22.0))
                
                VStack {
                    Button(action: { // THIS IS A BUTTON THAT SAYS "START JOURNEY"
                        iPhone11ProXOneTwoViewModel.nextScreen = "IPhone11ProXTwoView"
                    }, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblStartJourney)
                                .font(FontScheme.kMontserratRomanBold(size: getRelativeHeight(15.0)))
                                .fontWeight(.bold)
                                .padding(.horizontal, getRelativeWidth(30.0))
                                .padding(.vertical, getRelativeHeight(28.0))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(189.0), height: getRelativeHeight(75.0),
                                       alignment: .center)
                                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                           bottomLeft: 12.0, bottomRight: 12.0)
                                        .fill(ColorConstants.RedA700))
                                .padding(.top, getRelativeHeight(50.0))
                                .padding(.horizontal, getRelativeWidth(22.0))
                            
                            
                        }
                    })
                    .frame(width: getRelativeWidth(189.0), height: getRelativeHeight(75.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                               bottomRight: 12.0)
                            .fill(ColorConstants.RedA700))
                    .padding(.top, getRelativeHeight(50.0))
                    .padding(.horizontal, getRelativeWidth(22.0))
                    
//                    Group {
//                        NavigationLink(destination: IPhone11ProXTwoView(),
//                                       tag: "IPhone11ProXTwoView",
//                                       selection: $iPhone11ProXOneTwoViewModel.nextScreen,
//                                       label: {
//                                           EmptyView()
//                                       })
//                    }
                }
                
          
                
                
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(LinearGradient(gradient: Gradient(colors: [ColorConstants.Red700,
                                                                   ColorConstants.Red700]),
                startPoint: .topLeading, endPoint: .bottomTrailing))
            .hideNavigationBar()
        }
        .hideNavigationBar()
        .onAppear {
            iPhone11ProXOneTwoViewModel.nextScreen = "IPhone11ProXTwoView"
        }
        
    }
    
}

struct IPhone11ProXOneTwoView_Previews: PreviewProvider {
    static var previews: some View {
        IPhone11ProXOneTwoView()
    }
}
