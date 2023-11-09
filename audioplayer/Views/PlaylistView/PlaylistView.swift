import SwiftUI

struct PlaylistView: View {
    @StateObject var playlistViewModel = PlaylistViewModel(_isOpen: .constant(false))
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            ZStack(alignment: .center) {
                ZStack {}
                    .hideNavigationBar()
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(729.0),
                           alignment: .center)
                VStack {
                    ZStack {}
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(35.0), height: getRelativeHeight(5.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 2.0, topRight: 2.0, bottomLeft: 2.0,
                                                   bottomRight: 2.0))
                        .opacity(0.45)
                    VStack(spacing: 0) {
                        ScrollView(.vertical, showsIndicators: false) {
                            LazyVStack {
                                ForEach(0 ... 7, id: \.self) { index in
                                    PlaylistItemCell()
                                }
                            }
                        }
                    }
                    .frame(width: getRelativeWidth(342.0), alignment: .center)
                    .padding(.top, getRelativeHeight(35.0))
                }
                .frame(width: getRelativeWidth(342.0), height: getRelativeHeight(624.0),
                       alignment: .center)
                .padding(.bottom, getRelativeHeight(91.0))
                .padding(.horizontal, getRelativeWidth(24.0))
            }
            .hideNavigationBar()
            .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(728.0),
                   alignment: .center)
        }
        .frame(width: UIScreen.main.bounds.width)
        .hideNavigationBar()
    }
}

struct PlaylistView_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistView()
    }
}
