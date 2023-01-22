import SwiftUI

struct IPhone11ProXThirteenOneView: View {
    @StateObject var iPhone11ProXThirteenOneViewModel = IPhone11ProXThirteenOneViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    VStack(alignment: .leading, spacing: 0) {
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
                                Spacer()
                                Text(StringConstants.kLblBrowseClubs)
                                    .font(FontScheme
                                        .kMontserratSemiBold(size: getRelativeHeight(17.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(117.0),
                                           height: getRelativeHeight(17.0), alignment: .topLeading)
                                    .padding(.vertical, getRelativeHeight(6.0))
                                Spacer()
                                Image("img_vector_1")
                                    .resizable()
                                    .frame(width: getRelativeWidth(26.0),
                                           height: getRelativeWidth(26.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.vertical, getRelativeHeight(2.0))
                                    .padding(.trailing, getRelativeWidth(19.0))
                            }
                            .frame(width: UIScreen.main.bounds.width - 20,
                                   height: getRelativeHeight(44.0), alignment: .leading)
                            .background(ColorConstants.RedA700)
                        }
                        .frame(width: UIScreen.main.bounds.width - 20,
                               height: getRelativeHeight(44.0), alignment: .leading)
                        VStack(alignment: .leading, spacing: 0) {
                            HStack {
                                Spacer()
                                Image("img_search")
                                    .resizable()
                                    .frame(width: getRelativeWidth(20.0),
                                           height: getRelativeWidth(20.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.vertical, getRelativeHeight(8.0))
                                    .padding(.leading, getRelativeWidth(16.0))
                                    .padding(.trailing, getRelativeWidth(12.0))
                                TextField(StringConstants.kMsgSearchAllClub,
                                          text: $iPhone11ProXThirteenOneViewModel.searchbar)
                                    .font(FontScheme
                                        .kMontserratMedium(size: getRelativeHeight(14.0)))
                                    .foregroundColor(ColorConstants.Gray500)
                                    .padding()
                                    .onTapGesture {
                                        iPhone11ProXThirteenOneViewModel.nextScreen = "FrameTenView"
                                    }
                            }
                            .frame(width: getRelativeWidth(290.0), height: getRelativeHeight(36.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                       bottomLeft: 12.0, bottomRight: 12.0)
                                    .fill(ColorConstants.Gray300))
                            .padding(.horizontal, getRelativeWidth(43.0))
                            Text(StringConstants.kMsgBrowseByCateg)
                                .font(FontScheme.kMontserratMedium(size: getRelativeHeight(14.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Red900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(141.0),
                                       height: getRelativeHeight(15.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(27.0))
                                .padding(.horizontal, getRelativeWidth(43.0))
                            Picker(StringConstants.kMsgSelectACatego,
                                   selection: $iPhone11ProXThirteenOneViewModel
                                       .groupeightysevenPicker1) {
                                ForEach(iPhone11ProXThirteenOneViewModel
                                    .groupeightysevenPicker1Values,
                                    id: \.self) { value in
                                        Text(value)
                                    }
                                    .onTapGesture {
                                        iPhone11ProXThirteenOneViewModel
                                            .nextScreen = "IPhone11ProXFourteenView"
                                    }
                            }
                            .foregroundColor(ColorConstants.Gray500)
                            .font(.system(size: getRelativeHeight(14)))
                            .pickerStyle(MenuPickerStyle())
                            VStack(alignment: .leading, spacing: 0) {
                                Text(StringConstants.kMsgWeThinkYouMi)
                                    .font(FontScheme
                                        .kMontserratMedium(size: getRelativeHeight(14.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Orange400)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(179.0),
                                           height: getRelativeHeight(15.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(35.0))
                                    .padding(.horizontal, getRelativeWidth(42.0))
                                VStack(spacing: 0) {
                                    ScrollView(.vertical, showsIndicators: false) {
                                        LazyVStack {
                                            ForEach(0 ... 1, id: \.self) { index in
                                                RowrectangletwentynineCell(recommendationClick: {
                                                    iPhone11ProXThirteenOneViewModel
                                                        .nextScreen = "IPhone11ProXTwentyThreeView"
                                                }, recommendation1Click: {
                                                    iPhone11ProXThirteenOneViewModel
                                                        .nextScreen = "IPhone11ProXTwentyThreeView"
                                                })
                                            }
                                        }
                                    }
                                }
                                .frame(width: getRelativeWidth(290.0), alignment: .center)
                                .padding(.top, getRelativeHeight(17.0))
                                .padding(.horizontal, getRelativeWidth(42.0))
                                Text(StringConstants.kMsgSimilarToBusi)
                                    .font(FontScheme
                                        .kMontserratMedium(size: getRelativeHeight(14.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Orange400)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(257.0),
                                           height: getRelativeHeight(15.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(50.0))
                                    .padding(.horizontal, getRelativeWidth(42.0))
                                HStack {
                                    VStack {
                                        Image("img_rectangle29_3")
                                            .resizable()
                                            .frame(width: getRelativeWidth(50.0),
                                                   height: getRelativeWidth(50.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.top, getRelativeHeight(13.0))
                                            .padding(.horizontal, getRelativeWidth(35.0))
                                        Text(StringConstants.kMsg180DegreesCon)
                                            .font(FontScheme
                                                .kMontserratSemiBold(size: getRelativeHeight(11.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.RedA700)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.center)
                                            .frame(width: getRelativeWidth(68.0),
                                                   height: getRelativeHeight(26.0),
                                                   alignment: .center)
                                            .padding(.top, getRelativeHeight(5.0))
                                            .padding(.bottom, getRelativeHeight(6.0))
                                            .padding(.horizontal, getRelativeWidth(35.0))
                                    }
                                    .onTapGesture {
                                        iPhone11ProXThirteenOneViewModel
                                            .nextScreen = "IPhone11ProXTwentyThreeView"
                                    }
                                    .frame(width: getRelativeWidth(140.0),
                                           height: getRelativeHeight(100.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                               bottomLeft: 12.0, bottomRight: 12.0)
                                            .fill(ColorConstants.WhiteA700))
                                    Spacer()
                                    VStack {
                                        Image("img_rectangle29_4")
                                            .resizable()
                                            .frame(width: getRelativeWidth(50.0),
                                                   height: getRelativeWidth(50.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.top, getRelativeHeight(13.0))
                                            .padding(.horizontal, getRelativeWidth(24.0))
                                        Text(StringConstants.kLblConsultingClub)
                                            .font(FontScheme
                                                .kMontserratSemiBold(size: getRelativeHeight(11.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.RedA700)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(90.0),
                                                   height: getRelativeHeight(13.0),
                                                   alignment: .topLeading)
                                            .padding(.vertical, getRelativeHeight(12.0))
                                            .padding(.horizontal, getRelativeWidth(24.0))
                                    }
                                    .onTapGesture {
                                        iPhone11ProXThirteenOneViewModel
                                            .nextScreen = "IPhone11ProXTwentyThreeView"
                                    }
                                    .frame(width: getRelativeWidth(140.0),
                                           height: getRelativeHeight(100.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                               bottomLeft: 12.0, bottomRight: 12.0)
                                            .fill(ColorConstants.WhiteA700))
                                    .padding(.leading, getRelativeWidth(10.0))
                                }
                                .frame(width: getRelativeWidth(290.0),
                                       height: getRelativeHeight(100.0), alignment: .center)
                                .padding(.vertical, getRelativeHeight(17.0))
                                .padding(.horizontal, getRelativeWidth(42.0))
                            }
                            .frame(width: UIScreen.main.bounds.width,
                                   height: getRelativeHeight(522.0), alignment: .leading)
                            .background(ColorConstants.WhiteA700)
                            .padding(.top, getRelativeHeight(22.0))
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(669.0),
                               alignment: .leading)
                        .background(ColorConstants.WhiteA700)
                        .padding(.top, getRelativeHeight(30.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(743.0),
                           alignment: .center)
                    VStack {}
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(85.0),
                               alignment: .center)
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: IPhone11ProXTwentyThreeView(),
                                   tag: "IPhone11ProXTwentyThreeView",
                                   selection: $iPhone11ProXThirteenOneViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: IPhone11ProXSixteenView(),
                                   tag: "IPhone11ProXSixteenView",
                                   selection: $iPhone11ProXThirteenOneViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: FrameTenView(),
                                   tag: "FrameTenView",
                                   selection: $iPhone11ProXThirteenOneViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: IPhone11ProXFourteenView(),
                                   tag: "IPhone11ProXFourteenView",
                                   selection: $iPhone11ProXThirteenOneViewModel.nextScreen,
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

struct IPhone11ProXThirteenOneView_Previews: PreviewProvider {
    static var previews: some View {
        IPhone11ProXThirteenOneView()
    }
}
