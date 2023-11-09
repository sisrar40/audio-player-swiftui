import SwiftUI

struct AlbumDetailsView: View {
    @StateObject var albumDetailsViewModel = AlbumDetailsViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
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
                    Text(StringConstants.kLblWunderKing)
                        .font(FontScheme.kRobotoMedium(size: getRelativeHeight(20.0)))
                        .fontWeight(.medium)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(114.0), height: getRelativeHeight(24.0),
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
                    Image("img_thumbnail_100x100")
                        .resizable()
                        .frame(width: getRelativeWidth(100.0), height: getRelativeWidth(100.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                    Text(StringConstants.kLblWunderKing)
                        .font(FontScheme.kRobotoMedium(size: getRelativeHeight(28.0)))
                        .fontWeight(.medium)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(160.0), height: getRelativeHeight(33.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(30.0))
                    HStack {
                        Text(StringConstants.kLbl)
                            .font(FontScheme.kRobotoRegular(size: getRelativeHeight(16.0)))
                            .fontWeight(.regular)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(60.0), height: getRelativeHeight(19.0),
                                   alignment: .topLeading)
                        ZStack {}
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(3.0), height: getRelativeWidth(3.0),
                                   alignment: .bottom)
                            .background(RoundedCorners(topLeft: 1.0, topRight: 1.0, bottomLeft: 1.0,
                                                       bottomRight: 1.0))
                            .padding(.top, getRelativeHeight(9.0))
                            .padding(.bottom, getRelativeHeight(7.0))
                            .padding(.leading, getRelativeWidth(8.0))
                            .opacity(0.65)
                        Text(StringConstants.kLbl2018)
                            .font(FontScheme.kRobotoRegular(size: getRelativeHeight(16.0)))
                            .fontWeight(.regular)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(36.0), height: getRelativeHeight(19.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(8.0))
                    }
                    .frame(width: getRelativeWidth(115.0), height: getRelativeHeight(20.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(7.0))
                }
                .frame(width: getRelativeWidth(342.0), height: getRelativeHeight(191.0),
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
                .padding(.top, getRelativeHeight(31.0))
                VStack(spacing: 0) {
                    ScrollView(.vertical, showsIndicators: false) {
                        LazyVStack {
                            ForEach(0 ... 3, id: \.self) { index in
                                SongItemCell()
                            }
                        }
                    }
                }
                .frame(width: getRelativeWidth(342.0), alignment: .center)
                .padding(.top, getRelativeHeight(29.0))
            }
            .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(746.0),
                   alignment: .center)
        }
        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(800.0))
        .hideNavigationBar()
    }
}

struct AlbumDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        AlbumDetailsView()
    }
}
