import SwiftUI

struct ListView: View {
    @StateObject var listViewModel = ListViewModel()
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
                VStack {
                    VStack {
                        Image("img_playlist_thumbnail")
                            .resizable()
                            .frame(width: getRelativeWidth(136.0), height: getRelativeWidth(136.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipShape(Circle())
                            .clipShape(Circle())
                        Text(StringConstants.kLblRenaissance)
                            .font(FontScheme.kRobotoMedium(size: getRelativeHeight(24.0)))
                            .fontWeight(.medium)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(137.0), height: getRelativeHeight(29.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(7.0))
                            .onTapGesture {
                                listViewModel.nextScreen = "Artist1View"
                            }
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
                            Text(StringConstants.kLbl23Hours)
                                .font(FontScheme.kRobotoRegular(size: getRelativeHeight(16.0)))
                                .fontWeight(.regular)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(63.0),
                                       height: getRelativeHeight(19.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(5.0))
                        }
                        .frame(width: getRelativeWidth(150.0), height: getRelativeHeight(19.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(10.0))
                    }
                    .frame(width: getRelativeWidth(342.0), height: getRelativeHeight(202.0),
                           alignment: .center)
                    HStack {
                        Button(action: {}, label: {
                            Image("img_reply")
                        })
                        .frame(width: getRelativeWidth(38.0), height: getRelativeWidth(38.0),
                               alignment: .center)
                        .clipShape(Circle())
                        .padding(.top, getRelativeHeight(16.0))
                        .padding(.bottom, getRelativeHeight(15.0))
                        Image("img_play_onprimarycontainer")
                            .resizable()
                            .frame(width: getRelativeWidth(69.0), height: getRelativeWidth(69.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.leading, getRelativeWidth(26.0))
                        Button(action: {}, label: {
                            Image("img_bookmark_onprimarycontainer")
                        })
                        .frame(width: getRelativeWidth(38.0), height: getRelativeWidth(38.0),
                               alignment: .center)
                        .clipShape(Circle())
                        .padding(.top, getRelativeHeight(16.0))
                        .padding(.bottom, getRelativeHeight(15.0))
                        .padding(.leading, getRelativeWidth(26.0))
                    }
                    .frame(width: getRelativeWidth(198.0), height: getRelativeHeight(69.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(18.0))
                    Text("Spacer")
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(342.0), height: getRelativeHeight(104.0))
                    VStack(spacing: 0) {
                        ScrollView(.vertical, showsIndicators: false) {
                            LazyVStack {
                                ForEach(0 ... 2, id: \.self) { index in
                                    SongNumberCell()
                                }
                            }
                        }
                    }
                    .frame(width: getRelativeWidth(342.0), alignment: .center)
                    Text("Spacer")
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(342.0), height: getRelativeHeight(161.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(746.0),
                       alignment: .center)
                Group {
                    NavigationLink(destination: Artist1View(),
                                   tag: "Artist1View",
                                   selection: $listViewModel.nextScreen,
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

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
