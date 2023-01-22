import SwiftUI

struct IPhone11ProXSixteenView: View {
    @StateObject var iPhone11ProXSixteenViewModel = IPhone11ProXSixteenViewModel()
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
                                Text(StringConstants.kLblBrowseEvents)
                                    .font(FontScheme
                                        .kMontserratSemiBold(size: getRelativeHeight(17.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(129.0),
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
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(44.0),
                           alignment: .center)
                    VStack(alignment: .trailing, spacing: 0) {
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
                                          text: $iPhone11ProXSixteenViewModel.searchbar)
                                    .font(FontScheme
                                        .kMontserratMedium(size: getRelativeHeight(14.0)))
                                    .foregroundColor(ColorConstants.Gray500)
                                    .padding()
                                    .onTapGesture {
                                        iPhone11ProXSixteenViewModel.nextScreen = "FrameTenView"
                                    }
                            }
                            .frame(width: getRelativeWidth(290.0), height: getRelativeHeight(36.0),
                                   alignment: .leading)
                            .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                       bottomLeft: 12.0, bottomRight: 12.0)
                                    .fill(ColorConstants.Gray300))
                            .padding(.trailing)
                            Text(StringConstants.kMsgBrowseByCateg)
                                .font(FontScheme.kMontserratMedium(size: getRelativeHeight(14.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.RedA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(141.0),
                                       height: getRelativeHeight(15.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(27.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                            Picker(StringConstants.kMsgSelectACatego,
                                   selection: $iPhone11ProXSixteenViewModel
                                       .groupfiftythreePicker1) {
                                ForEach(iPhone11ProXSixteenViewModel.groupfiftythreePicker1Values,
                                        id: \.self) { value in
                                    Text(value)
                                }
                            }
                            .foregroundColor(ColorConstants.Gray500)
                            .font(.system(size: getRelativeHeight(14)))
                            .pickerStyle(MenuPickerStyle())
                            Text(StringConstants.kMsgCheckOutThese)
                                .font(FontScheme.kMontserratMedium(size: getRelativeHeight(14.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Lime900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(255.0),
                                       height: getRelativeHeight(14.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(55.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                            ZStack(alignment: .trailing) {
                                VStack(alignment: .leading, spacing: 0) {
                                    ScrollView(.horizontal, showsIndicators: false) {
                                        HStack {
                                            ZStack {}
                                                .hideNavigationBar()
                                                .onTapGesture {
                                                    iPhone11ProXSixteenViewModel
                                                        .nextScreen = "IPhone11ProXTwentySixView"
                                                }
                                                .frame(width: getRelativeWidth(200.0),
                                                       height: getRelativeHeight(120.0),
                                                       alignment: .center)
                                                .background(RoundedCorners(topLeft: 12.0,
                                                                           topRight: 12.0)
                                                        .fill(ColorConstants
                                                            .Gray300))
                                            Image("img_rectangle5_120x200")
                                                .resizable()
                                                .frame(width: getRelativeWidth(200.0),
                                                       height: getRelativeHeight(120.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                                .padding(.leading, getRelativeWidth(16.0))
                                        }
                                        .frame(width: UIScreen.main.bounds.width,
                                               height: getRelativeHeight(120.0),
                                               alignment: .leading)
                                    }
                                    HStack(spacing: 0) {
                                        ScrollView(.horizontal, showsIndicators: false) {
                                            LazyHStack {
                                                ForEach(0 ... 1, id: \.self) { index in
                                                    Eventname2Cell()
                                                }
                                            }
                                        }
                                    }
                                    .frame(width: UIScreen.main.bounds.width, alignment: .trailing)
                                }
                                .frame(width: getRelativeWidth(200.0),
                                       height: getRelativeHeight(170.0), alignment: .leading)
                                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                           bottomLeft: 12.0, bottomRight: 12.0))
                                .shadow(color: ColorConstants.Black90033, radius: 6, x: 0, y: 2)
                                .padding(.trailing, getRelativeWidth(132.0))
                                VStack {
                                    VStack {
                                        Image("img_vector_25x12")
                                            .resizable()
                                            .frame(width: getRelativeWidth(12.0),
                                                   height: getRelativeHeight(25.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.top, getRelativeHeight(72.0))
                                            .padding(.horizontal, getRelativeWidth(17.0))
                                        Text(StringConstants.kLblEventName)
                                            .font(FontScheme
                                                .kMontserratSemiBold(size: getRelativeHeight(14.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.Black900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(36.0),
                                                   height: getRelativeHeight(14.0),
                                                   alignment: .topLeading)
                                            .padding(.vertical, getRelativeHeight(42.0))
                                            .padding(.leading, getRelativeWidth(10.0))
                                    }
                                    .onTapGesture {
                                        iPhone11ProXSixteenViewModel
                                            .nextScreen = "IPhone11ProXTwentySixView"
                                    }
                                    .frame(width: getRelativeWidth(116.0),
                                           height: getRelativeHeight(170.0), alignment: .leading)
                                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                               bottomLeft: 12.0, bottomRight: 12.0))
                                    .shadow(color: ColorConstants.Black90033, radius: 6, x: 0, y: 2)
                                }
                                .frame(width: getRelativeWidth(116.0),
                                       height: getRelativeHeight(170.0), alignment: .trailing)
                                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                           bottomLeft: 12.0, bottomRight: 12.0))
                                .shadow(color: ColorConstants.Black90033, radius: 6, x: 0, y: 2)
                                .padding(.leading, getRelativeWidth(216.0))
                                Image("img_rectangle37_170x332")
                                    .resizable()
                                    .frame(width: UIScreen.main.bounds.width,
                                           height: getRelativeHeight(170.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                            }
                            .hideNavigationBar()
                            .frame(width: UIScreen.main.bounds.width,
                                   height: getRelativeHeight(170.0), alignment: .leading)
                            .padding(.top, getRelativeHeight(20.0))
                            Text(StringConstants.kMsgHeyThereGamer)
                                .font(FontScheme.kMontserratMedium(size: getRelativeHeight(14.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Lime900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(304.0),
                                       height: getRelativeHeight(15.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(61.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                            ZStack(alignment: .trailing) {
                                VStack(alignment: .leading, spacing: 0) {
                                    ScrollView(.horizontal, showsIndicators: false) {
                                        HStack {
                                            ZStack {}
                                                .hideNavigationBar()
                                                .onTapGesture {
                                                    iPhone11ProXSixteenViewModel
                                                        .nextScreen = "IPhone11ProXTwentySixView"
                                                }
                                                .frame(width: getRelativeWidth(200.0),
                                                       height: getRelativeHeight(120.0),
                                                       alignment: .center)
                                                .background(RoundedCorners(topLeft: 12.0,
                                                                           topRight: 12.0)
                                                        .fill(ColorConstants
                                                            .Gray300))
                                            Image("img_rectangle5_1")
                                                .resizable()
                                                .frame(width: getRelativeWidth(200.0),
                                                       height: getRelativeHeight(120.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                                .padding(.leading, getRelativeWidth(16.0))
                                        }
                                        .frame(width: UIScreen.main.bounds.width,
                                               height: getRelativeHeight(120.0),
                                               alignment: .leading)
                                    }
                                    HStack(spacing: 0) {
                                        ScrollView(.horizontal, showsIndicators: false) {
                                            LazyHStack {
                                                ForEach(0 ... 1, id: \.self) { index in
                                                    Eventname3Cell()
                                                }
                                            }
                                        }
                                    }
                                    .frame(width: UIScreen.main.bounds.width, alignment: .trailing)
                                }
                                .frame(width: getRelativeWidth(200.0),
                                       height: getRelativeHeight(170.0), alignment: .leading)
                                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                           bottomLeft: 12.0, bottomRight: 12.0))
                                .shadow(color: ColorConstants.Black90033, radius: 6, x: 0, y: 2)
                                .padding(.trailing, getRelativeWidth(132.0))
                                VStack {
                                    VStack {
                                        Image("img_vector_25x12")
                                            .resizable()
                                            .frame(width: getRelativeWidth(12.0),
                                                   height: getRelativeHeight(25.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.top, getRelativeHeight(72.0))
                                            .padding(.horizontal, getRelativeWidth(17.0))
                                        Text(StringConstants.kLblEventName)
                                            .font(FontScheme
                                                .kMontserratSemiBold(size: getRelativeHeight(14.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.Black900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(36.0),
                                                   height: getRelativeHeight(14.0),
                                                   alignment: .topLeading)
                                            .padding(.vertical, getRelativeHeight(42.0))
                                            .padding(.leading, getRelativeWidth(10.0))
                                    }
                                    .onTapGesture {
                                        iPhone11ProXSixteenViewModel
                                            .nextScreen = "IPhone11ProXTwentySixView"
                                    }
                                    .frame(width: getRelativeWidth(116.0),
                                           height: getRelativeHeight(170.0), alignment: .leading)
                                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                               bottomLeft: 12.0, bottomRight: 12.0))
                                    .shadow(color: ColorConstants.Black90033, radius: 6, x: 0, y: 2)
                                }
                                .frame(width: getRelativeWidth(116.0),
                                       height: getRelativeHeight(170.0), alignment: .trailing)
                                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                           bottomLeft: 12.0, bottomRight: 12.0))
                                .shadow(color: ColorConstants.Black90033, radius: 6, x: 0, y: 2)
                                .padding(.leading, getRelativeWidth(216.0))
                                Image("img_rectangle37_1")
                                    .resizable()
                                    .frame(width: UIScreen.main.bounds.width,
                                           height: getRelativeHeight(170.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                            }
                            .hideNavigationBar()
                            .frame(width: UIScreen.main.bounds.width,
                                   height: getRelativeHeight(170.0), alignment: .leading)
                            .padding(.top, getRelativeHeight(17.0))
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(649.0),
                               alignment: .trailing)
                        .background(ColorConstants.WhiteA700)
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(649.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(30.0))
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
                    .padding(.top, getRelativeHeight(61.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: IPhone11ProXTwentySixView(),
                                   tag: "IPhone11ProXTwentySixView",
                                   selection: $iPhone11ProXSixteenViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: FrameTenView(),
                                   tag: "FrameTenView",
                                   selection: $iPhone11ProXSixteenViewModel.nextScreen,
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

struct IPhone11ProXSixteenView_Previews: PreviewProvider {
    static var previews: some View {
        IPhone11ProXSixteenView()
    }
}
