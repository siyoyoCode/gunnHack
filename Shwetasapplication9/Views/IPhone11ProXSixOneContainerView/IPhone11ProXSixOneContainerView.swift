import SwiftUI

struct IPhone11ProXSixOneContainerView: View {
    @StateObject var iPhone11ProXSixOneContainerViewModel = IPhone11ProXSixOneContainerViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State var showPopup : Bool = false;
    @State var clubnm : String = ""
    @State var clubmtng : String = ""
    //@State var clubDay : String = ""
    @State var clubDesc : String = ""
    @State var clubPres : String = ""
    var body: some View {
        
        NavigationView {
            VStack {
//                VStack(alignment: .leading, spacing: 0) {
//                    Text("Content")
//                        .minimumScaleFactor(0.5)
//                        .multilineTextAlignment(.leading)
//                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(789.0))
//                    Text("tabbar")
//                        .minimumScaleFactor(0.5)
//                        .multilineTextAlignment(.leading)
//                        .frame(width: UIScreen.main.bounds.width - 20,
//                               height: getRelativeHeight(85.0), alignment: .center)
//                        .background(ColorConstants.WhiteA700)
//                }
//                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
//                .background(ColorConstants.WhiteA700)
//                .padding(.top, getRelativeHeight(30.0))
//                .padding(.bottom, getRelativeHeight(10.0))
//                Group {
//                    NavigationLink(destination: IPhone11ProXTwentyThreeView(),
//                                   tag: "IPhone11ProXTwentyThreeView",
//                                   selection: $iPhone11ProXSixOneContainerViewModel.nextScreen,
//                                   label: {
//                                       EmptyView()
//                                   })
//                    NavigationLink(destination: IPhone11ProXTwentySixView(),
//                                   tag: "IPhone11ProXTwentySixView",
//                                   selection: $iPhone11ProXSixOneContainerViewModel.nextScreen,
//                                   label: {
//                                       EmptyView()
//                                   })
//                    NavigationLink(destination: IPhone11ProXSixteenView(),
//                                   tag: "IPhone11ProXSixteenView",
//                                   selection: $iPhone11ProXSixOneContainerViewModel.nextScreen,
//                                   label: {
//                                       EmptyView()
//                                   })
//                }
                
                NavigationView {
                    ScrollView {
                        LazyVGrid(columns: [ // these are the columns
                            GridItem(.flexible(minimum:125, maximum:125), spacing:10, alignment: .top),
                            GridItem(.flexible(minimum:100, maximum:200), spacing: 10, alignment: .top),
                            GridItem(.flexible(minimum:100, maximum:200), spacing:10, alignment: .top)
                                           ], alignment: .leading, spacing: 15, content: {
                            
                            // copy and pasted to create two items in the row
                                ForEach (Club.allClubs, id: \.name) { club in
                                    Button(action: {
                                        showPopup.toggle()
                                        clubnm = "\(club.name)"
                                        clubmtng = "\(club.meetingDay)"
                                        clubDesc = "\(club.description)"
                                        clubPres = "\(club.clubPres)"
                                        //clubDay = "\(club.meetingDay)"
                                        //Text("hi")
                                        //indClubView(show: $showPopup)
                                    }) {
                                        VStack(alignment: .leading) {
                                            //Spacer()
                                                //.frame(width:80, height:30)
                                                
                                        Text("\(club.name)")
                                                .font(FontScheme.kMontserratBold(size: getRelativeHeight(17)))
                                                //.scaledToFit()
                                                //.minimumScaleFactor(0.01)
                                                .lineLimit(3)
                                                .fixedSize(horizontal: false, vertical: true)
                                                .foregroundColor(Color.white)
                                            
                                                //.frame(width:100, height:30)
                                                
                                            Spacer()
                                            Text("\(club.meetingDay.uppercased())")
                                                .lineLimit(3)
                                                .font(.system(size:12, weight:.semibold))
                                            .foregroundColor(Color.black)
                                            .fixedSize(horizontal: false, vertical: true)
                                        }
                                }
                                .padding()
                                .background(ColorConstants.Red700)
                                .cornerRadius(10)
                                .scaledToFit()
                                .shadow(color:Color.black.opacity(0.3), radius:2, x:5, y:8)
                                //.border(ColorConstants.RedA700, width: 4.0)
                                //.cornerRadius(10)
                                .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth:4).foregroundColor(ColorConstants.RedA700))
                                    
                                
                            }
                           
                                           }).padding(.horizontal,12)
                    }.navigationTitle("Gunn Club Hub")

                }
                if (showPopup) {
                    indClubView(show: $showPopup, clubName: clubnm, clubMtngDay: clubmtng, clubPres: clubPres, clubDesc: clubDesc)
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.Red700)
            
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
        .onAppear {}
    }
}

struct indClubView : View {
    @Binding var show : Bool
    @State var clubName : String
    @State var clubMtngDay : String
    @State var clubPres : String
    @State var clubDesc : String
    //@State var club : String
    var body: some View {
        ZStack (alignment: Alignment(horizontal: .trailing, vertical: .top)) {
            VStack (alignment: .leading, spacing: 25) {
                Spacer()
                    .frame(width: 100, height: 50)
                Text("\(clubName)").font(.system(size: 35, weight: .bold))
                    .padding(10)
                    .lineLimit(4)
                    .fixedSize(horizontal: false, vertical: true)
                    .foregroundColor(Color.red)
                    //.alignment(.leading)
                
                Text("Meeting Day: \(clubMtngDay) | Club President: \(clubPres)")
                    .font(FontScheme.kMontserratBold(size: getRelativeHeight(17)))
                    .padding(10)
                    .foregroundColor(ColorConstants.Gray501)
                    .lineLimit(4)
                    .fixedSize(horizontal: false, vertical: true)
                Text("\(clubDesc)")
                    .font(FontScheme.kMontserratBold(size: getRelativeHeight(15)))
                    .lineLimit(20)
                    .fixedSize(horizontal: false, vertical: true)
                    .foregroundColor(ColorConstants.Black900)
                    .padding(10)
                    .lineLimit(4)
//                Text("\(clubPres)").font(.system(size: 50))
//                    //.padding(.vertical, 10)
//                    .lineLimit(4)
                Spacer()
                    .frame(width:100, height: 50)
            }
            
            Button(action: {
                show.toggle()
            }) {
                Text("BACK")
                    
                    .font(FontScheme.kMontserratBold(size: getRelativeHeight(20)))
                    .padding(20)
                    
            }.foregroundColor(ColorConstants.Red700)
            
        }
        .background(ColorConstants.WhiteA700)
            //.padding(250)
        
        
        
        
    }
}

struct IPhone11ProXSixOneContainerView_Previews: PreviewProvider {
    static var previews: some View {
        IPhone11ProXSixOneContainerView()
    }
}
