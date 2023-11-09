import SwiftUI

struct TopPlaylistsView: View {
    @StateObject var topPlaylistsViewModel = TopPlaylistsViewModel()
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
                        Text(StringConstants.kLblTopPlaylists)
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
                    .frame(width: getRelativeWidth(342.0), height: getRelativeHeight(25.0),
                           alignment: .leading)
                    .padding(.horizontal, getRelativeWidth(24.0))
                }
                .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(53.0),
                       alignment: .leading)
                VStack(spacing: 0) {
                    ScrollView(.vertical, showsIndicators: false) {
                        LazyVStack {
                            ForEach(0 ... 2, id: \.self) { index in
                                PlaylistItem1Cell(renaissanceClick: {
                                    topPlaylistsViewModel.nextScreen = "ListView"
                                })
                            }
                        }
                    }
                }
                .frame(width: getRelativeWidth(342.0), alignment: .center)
                .padding(.top, getRelativeHeight(20.0))
                .padding(.horizontal, getRelativeWidth(24.0))
                Text("BottomBar")
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(389.0), height: getRelativeHeight(80.0),
                           alignment: .center)
                Group {
                    NavigationLink(destination: ListView(),
                                   tag: "ListView",
                                   selection: $topPlaylistsViewModel.nextScreen,
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

struct TopPlaylistsView_Previews: PreviewProvider {
    static var previews: some View {
        TopPlaylistsView()
    }
}
