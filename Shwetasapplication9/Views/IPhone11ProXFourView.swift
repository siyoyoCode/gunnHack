import SwiftUI
import UIKit
// select interests page
struct IPhone11ProXFourView: View {
    @StateObject var iPhone11ProXFourViewModel = IPhone11ProXFourViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var navigationBarAppearance = UINavigationBar.appearance()
    
    
    let items = Array(1...12).map({"image \($0)"})
    var headers = ["MATH", "TECHNOLOGY", "SCIENCE", "CULTURE", "LANGUAGES", "CRAFTING", "ARTS", "SOCIAL", "VOLUNTEER", "SPORTS", "HOBBIES", "WELLNESS"]
    
    var images = ["img_image2", "img_image4", "img_image15", "img_image6", "img_image5", "img_image7", "img_image15_56x54", "img_image8", "img_image9", "img_image15_54x59", "img_image13", "img_image10"]
        
    let layout = [
        GridItem(.fixed(100)),
        GridItem(.fixed(100)),
        GridItem(.fixed(100)),
    ]
    
    @State var topics: [String] = []


    
    var body: some View {
        
        ZStack{

            ColorConstants.Red700.ignoresSafeArea()
            
            RoundedRectangle(cornerRadius: 15)
                .fill(ColorConstants.RedA700)
                .frame(width: 140, height: 50)
                .position(x: 188, y: 650)

                .overlay(Button(action: { iPhone11ProXFourViewModel.nextScreen = "IPhone11ProXSixOneContainerView"},
                                label: {
                    Text("NEXT").foregroundColor(ColorConstants.WhiteA700)
                        .font(FontScheme.kMontserratBold(size: getRelativeHeight(15.0)))
                        .position(x: 188, y: 650)
                })
                )


            LazyVGrid(columns: layout, content: {
            ForEach(headers, id: \.self) { header in
                VStack{

                        RoundedRectangle(cornerRadius: 15)
                            .fill(ColorConstants.WhiteA700)
                            .frame(width: 95, height: 95)
                            .offset(y: -10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(ColorConstants.RedA700, lineWidth: 5)
                                    .offset(y: -10)
                            )


                        Text(header)
                                .font(FontScheme.kMontserratMedium(size: getRelativeHeight(10.0)))
                                .foregroundColor(ColorConstants.Red700)
                                .offset(y: -42)
                }
            }

        })

            Text("Select Your Interests").foregroundColor(ColorConstants.Red900)
                .offset(y: -300)
                .font(FontScheme.kMontserratBold(size: getRelativeHeight(30)))
            
//            LazyVGrid(columns: layout, content: {
//                ForEach(images, id: \.self) { image in
//                    VStack{
//                        Image(image)
//                            .frame(width: 115, height: 115)
//                            .offset(y: -30)
//                            .colorMultiply(ColorConstants.WhiteA700)
//                    }
//                }
//            })


                LazyVGrid(columns: layout, content: {
                    ForEach(images, id: \.self) { image in
                        VStack{
                            
                            Button(action: {
                                if topics.contains(image){
                                    topics.remove(at: topics.index(of: image)!)
                                } else {
                                    topics.insert(image, at: 0);
                                }
                            }, label: {
                                Image(image)
                                    .frame(width: 115, height: 115)
                                    .offset(y: -30)
                            })
                                
                        }
                    }
                })

            NavigationLink(destination: IPhone11ProXSixOneContainerView(), tag: "IPhone11ProXSixOneContainerView", selection: $iPhone11ProXFourViewModel.nextScreen, label: {
                    EmptyView()


            })
//            var cnt = topics.count
//            var hi = String(cnt)
//            Text(hi)
        
        }
    }
}

struct IPhone11ProXFourView_Previews: PreviewProvider {
    static var previews: some View {
        IPhone11ProXFourView()
    }
}
