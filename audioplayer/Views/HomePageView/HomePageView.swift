import SwiftUI

struct HomePageView: View {
    @StateObject var homePageViewModel = HomePageViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        ZStack(alignment: .bottom) {
            NavigationView {
                VStack {
                    HStack {
                        HStack {
                            Text(StringConstants.kLblDashboard)
                                .font(FontScheme.kRobotoMedium(size: getRelativeHeight(20.0)))
                                .fontWeight(.medium)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(97.0),
                                       height: getRelativeHeight(24.0), alignment: .topLeading)
                            Image("img_menu")
                                .resizable()
                                .frame(width: getRelativeWidth(24.0),
                                       height: getRelativeWidth(24.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.leading, getRelativeWidth(99.0))
                        }
                        .frame(width: getRelativeWidth(220.0), height: getRelativeHeight(24.0),
                               alignment: .leading)
                        .padding(.leading, getRelativeWidth(146.0))
                        .padding(.trailing, getRelativeWidth(24.0))
                    }
                    .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(51.0),
                           alignment: .leading)
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            Text(StringConstants.kMsgListenToMusicWithout)
                                .font(FontScheme.kRobotoMedium(size: getRelativeHeight(28.0)))
                                .fontWeight(.medium)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(243.0),
                                       height: getRelativeHeight(75.0), alignment: .center)
                                .padding(.horizontal, getRelativeWidth(49.0))
                            Button(action: {}, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLblTrialVersion)
                                        .font(FontScheme
                                            .kRobotoRegular(size: getRelativeHeight(16.0)))
                                        .fontWeight(.regular)
                                        .padding(.horizontal, getRelativeWidth(30.0))
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(236.0),
                                               height: getRelativeHeight(40.0), alignment: .center)
                                        .clipShape(Capsule())
                                        .padding(.top, getRelativeHeight(34.0))
                                }
                            })
                            .frame(width: getRelativeWidth(236.0), height: getRelativeHeight(40.0),
                                   alignment: .center)
                            .clipShape(Capsule())
                            .padding(.top, getRelativeHeight(34.0))
                            Text(StringConstants.kMsgFreeFor3Months)
                                .font(FontScheme.kRobotoRegular(size: getRelativeHeight(14.0)))
                                .fontWeight(.regular)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(227.0),
                                       height: getRelativeHeight(17.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(41.0))
                            VStack {
                                HStack {
                                    Text(StringConstants.kLblNewReleases)
                                        .font(FontScheme.kRobotoBold(size: getRelativeHeight(24.0)))
                                        .fontWeight(.bold)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(145.0),
                                               height: getRelativeHeight(29.0),
                                               alignment: .topLeading)
                                    Spacer()
                                    Text(StringConstants.kLblViewAll)
                                        .font(FontScheme
                                            .kRobotoRegular(size: getRelativeHeight(14.0)))
                                        .fontWeight(.regular)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(50.0),
                                               height: getRelativeHeight(17.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(5.0))
                                        .padding(.bottom, getRelativeHeight(6.0))
                                        .onTapGesture {
                                            homePageViewModel.isPlaylistViewShow = true
                                        }
                                }
                                .frame(width: getRelativeWidth(342.0),
                                       height: getRelativeHeight(29.0), alignment: .center)
                                HStack(spacing: 0) {
                                    ScrollView(.horizontal, showsIndicators: false) {
                                        LazyHStack {
                                            ForEach(0 ... 1, id: \.self) { index in
                                                UrgentSiegeCell()
                                            }
                                        }
                                    }
                                }
                                .frame(width: getRelativeWidth(342.0), alignment: .center)
                                .padding(.top, getRelativeHeight(20.0))
                            }
                            .frame(width: getRelativeWidth(342.0), height: getRelativeHeight(279.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(44.0))
                        }
                        .frame(width: getRelativeWidth(342.0), alignment: .topLeading)
                        .padding(.bottom, getRelativeHeight(5.0))
                        .padding(.horizontal, getRelativeWidth(24.0))
                    }
                    .padding(.top, getRelativeHeight(26.0))
                    Text("BottomBar")
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(389.0), height: getRelativeHeight(80.0),
                               alignment: .center)
                    Group {
                        NavigationLink(destination: ArtistsView(),
                                       tag: "ArtistsView",
                                       selection: $homePageViewModel.nextScreen,
                                       label: {
                                           EmptyView()
                                       })
                        NavigationLink(destination: FavoritesView(),
                                       tag: "FavoritesView",
                                       selection: $homePageViewModel.nextScreen,
                                       label: {
                                           EmptyView()
                                       })
                        NavigationLink(destination: TopPlaylistsView(),
                                       tag: "TopPlaylistsView",
                                       selection: $homePageViewModel.nextScreen,
                                       label: {
                                           EmptyView()
                                       })
                    }
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(801.0))
            }
            .hideNavigationBar()
            if homePageViewModel.isPlaylistViewShow {
                BottomSheetView(isOpen: $homePageViewModel.isPlaylistViewShow, content: {
                    PlaylistView(playlistViewModel: PlaylistViewModel(_isOpen: $homePageViewModel
                            .isPlaylistViewShow))
                }).frame(width: UIScreen.main.bounds.width)
            }
        }
        .hideNavigationBar()
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
