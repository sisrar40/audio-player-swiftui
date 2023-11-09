import SwiftUI

struct FavoritesView: View {
    @StateObject var favoritesViewModel = FavoritesViewModel()
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
                        Text(StringConstants.kLblFavourites)
                            .font(FontScheme.kRobotoMedium(size: getRelativeHeight(20.0)))
                            .fontWeight(.medium)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(94.0), height: getRelativeHeight(24.0),
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
                    ZStack(alignment: .center) {
                        Image("img_playlist_background_2")
                            .resizable()
                            .frame(width: getRelativeWidth(342.0), height: getRelativeHeight(181.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                       bottomRight: 8.0))
                        HStack {
                            VStack(alignment: .leading, spacing: 0) {
                                Text(StringConstants.kLblDidYouLikeIt)
                                    .font(FontScheme.kRobotoMedium(size: getRelativeHeight(28.0)))
                                    .fontWeight(.medium)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(168.0),
                                           height: getRelativeHeight(33.0), alignment: .topLeading)
                                Text(StringConstants.kLbl843Tracks)
                                    .font(FontScheme.kRobotoRegular(size: getRelativeHeight(16.0)))
                                    .fontWeight(.regular)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(75.0),
                                           height: getRelativeHeight(19.0), alignment: .topLeading)
                            }
                            .frame(width: getRelativeWidth(168.0), height: getRelativeHeight(55.0),
                                   alignment: .bottom)
                            .padding(.vertical, getRelativeHeight(88.0))
                            Spacer()
                            Image("img_play")
                                .resizable()
                                .frame(width: getRelativeWidth(50.0),
                                       height: getRelativeWidth(50.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(99.0))
                        }
                        .frame(width: getRelativeWidth(342.0), height: getRelativeHeight(181.0),
                               alignment: .center)
                        .background(RoundedCorners(bottomLeft: 8.0, bottomRight: 8.0).fill())
                    }
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(342.0), height: getRelativeHeight(181.0),
                           alignment: .center)
                    VStack(spacing: 0) {
                        ScrollView(.vertical, showsIndicators: false) {
                            LazyVStack {
                                ForEach(0 ... 4, id: \.self) { index in
                                    FavouritesOptionCell()
                                        .onTapGesture {
                                            favoritesViewModel.nextScreen = "ArtistsView"
                                        }
                                }
                            }
                        }
                    }
                    .frame(width: getRelativeWidth(342.0), alignment: .center)
                    .padding(.top, getRelativeHeight(24.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(668.0),
                       alignment: .center)
                Text("BottomBar")
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(389.0), height: getRelativeHeight(80.0),
                           alignment: .center)
                Group {
                    NavigationLink(destination: ArtistsView(),
                                   tag: "ArtistsView",
                                   selection: $favoritesViewModel.nextScreen,
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

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
