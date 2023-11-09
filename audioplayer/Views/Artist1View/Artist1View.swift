import SwiftUI

struct Artist1View: View {
    @StateObject var artist1ViewModel = Artist1ViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    HStack {
                        Image("img_arrow_left")
                            .resizable()
                            .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .onTapGesture {
                                self.presentationMode.wrappedValue.dismiss()
                            }
                        Spacer()
                        Text(StringConstants.kLblRenaissance)
                            .font(FontScheme.kRobotoMedium(size: getRelativeHeight(20.0)))
                            .fontWeight(.medium)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(115.0), height: getRelativeHeight(24.0),
                                   alignment: .topLeading)
                        Spacer()
                        Image("img_menu")
                            .resizable()
                            .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                    }
                    .frame(width: getRelativeWidth(342.0), height: getRelativeHeight(24.0),
                           alignment: .leading)
                    .padding(.horizontal, getRelativeWidth(24.0))
                }
                .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(51.0),
                       alignment: .leading)
                VStack {
                    VStack {
                        Button(action: {}, label: {
                            Image("img_bookmark")
                        })
                        .frame(width: getRelativeWidth(38.0), height: getRelativeWidth(38.0),
                               alignment: .center)
                        .clipShape(Circle())
                        Text(StringConstants.kLblRenaissance)
                            .font(FontScheme.kRobotoMedium(size: getRelativeHeight(28.0)))
                            .fontWeight(.medium)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(160.0), height: getRelativeHeight(33.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(12.0))
                        HStack {
                            Text(StringConstants.kLbl843Tracks)
                                .font(FontScheme.kRobotoRegular(size: getRelativeHeight(16.0)))
                                .fontWeight(.regular)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(75.0),
                                       height: getRelativeHeight(19.0), alignment: .topLeading)
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(3.0), height: getRelativeWidth(3.0),
                                       alignment: .bottom)
                                .background(RoundedCorners(topLeft: 1.0, topRight: 1.0,
                                                           bottomLeft: 1.0, bottomRight: 1.0))
                                .padding(.top, getRelativeHeight(9.0))
                                .padding(.bottom, getRelativeHeight(6.0))
                                .padding(.leading, getRelativeWidth(4.0))
                                .opacity(0.65)
                            Text(StringConstants.kLbl23Albums)
                                .font(FontScheme.kRobotoRegular(size: getRelativeHeight(16.0)))
                                .fontWeight(.regular)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(75.0),
                                       height: getRelativeHeight(19.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(5.0))
                        }
                        .frame(width: getRelativeWidth(162.0), height: getRelativeHeight(19.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(6.0))
                    }
                    .frame(width: getRelativeWidth(342.0), height: getRelativeHeight(108.0),
                           alignment: .center)
                    HStack(spacing: 0) {
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHStack {
                                ForEach(0 ... 1, id: \.self) { index in
                                    UrgentSiege1Cell()
                                        .onTapGesture {
                                            artist1ViewModel.nextScreen = "AlbumsView"
                                        }
                                }
                            }
                        }
                    }
                    .frame(width: getRelativeWidth(342.0), alignment: .center)
                    .padding(.top, getRelativeHeight(43.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(748.0),
                       alignment: .center)
                Group {
                    NavigationLink(destination: AlbumsView(),
                                   tag: "AlbumsView",
                                   selection: $artist1ViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(800.0))
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct Artist1View_Previews: PreviewProvider {
    static var previews: some View {
        Artist1View()
    }
}
