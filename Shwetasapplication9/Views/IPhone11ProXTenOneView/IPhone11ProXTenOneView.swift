import SwiftUI

struct IPhone11ProXTenOneView: View {
    @StateObject var iPhone11ProXTenOneViewModel = IPhone11ProXTenOneViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    HStack {
                        Spacer()
                        Image("img_search")
                            .resizable()
                            .frame(width: getRelativeWidth(20.0), height: getRelativeWidth(20.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(8.0))
                            .padding(.leading, getRelativeWidth(16.0))
                            .padding(.trailing, getRelativeWidth(12.0))
                        TextField(StringConstants.kMsgSearchUpcoming,
                                  text: $iPhone11ProXTenOneViewModel.searchbar)
                            .font(FontScheme.kMontserratMedium(size: getRelativeHeight(14.0)))
                            .foregroundColor(ColorConstants.Gray500)
                            .padding()
                            .onTapGesture {
                                iPhone11ProXTenOneViewModel.nextScreen = "FrameTenView"
                            }
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(36.0),
                           alignment: .leading)
                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                               bottomRight: 12.0)
                            .fill(ColorConstants.Gray300))
                    VStack(spacing: 0) {
                        ScrollView(.vertical, showsIndicators: false) {
                            LazyVStack {
                                ForEach(0 ... 1, id: \.self) { index in
                                    ColumnCell(listoptionClick: {
                                        iPhone11ProXTenOneViewModel
                                            .nextScreen = "IPhone11ProXTwentySixView"
                                    }, rowmonthClick: {
                                        iPhone11ProXTenOneViewModel
                                            .nextScreen = "IPhone11ProXTwentySixView"
                                    }, stackmonthoneClick: {
                                        iPhone11ProXTenOneViewModel
                                            .nextScreen = "IPhone11ProXTwentySixView"
                                    }, rowmonthoneClick: {
                                        iPhone11ProXTenOneViewModel
                                            .nextScreen = "IPhone11ProXTwentySixView"
                                    })
                                }
                            }
                        }
                    }
                    .frame(width: getRelativeWidth(290.0), alignment: .center)
                    .padding(.top, getRelativeHeight(37.0))
                    .padding(.horizontal, getRelativeWidth(15.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                Group {
                    NavigationLink(destination: IPhone11ProXTwentySixView(),
                                   tag: "IPhone11ProXTwentySixView",
                                   selection: $iPhone11ProXTenOneViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: IPhone11ProXSixteenView(),
                                   tag: "IPhone11ProXSixteenView",
                                   selection: $iPhone11ProXTenOneViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: FrameTenView(),
                                   tag: "FrameTenView",
                                   selection: $iPhone11ProXTenOneViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct IPhone11ProXTenOneView_Previews: PreviewProvider {
    static var previews: some View {
        IPhone11ProXTenOneView()
    }
}
