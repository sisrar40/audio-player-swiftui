import SwiftUI

struct ArtistsView: View {
    @StateObject var artistsViewModel = ArtistsViewModel()
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
                    Text(StringConstants.kLblArtists)
                        .font(FontScheme.kRobotoMedium(size: getRelativeHeight(20.0)))
                        .fontWeight(.medium)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(60.0), height: getRelativeHeight(24.0),
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
            VStack(spacing: 0) {
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVStack {
                        ForEach(0 ... 5, id: \.self) { index in
                            ArtistItemCell()
                        }
                    }
                }
            }
            .frame(width: getRelativeWidth(342.0), alignment: .center)
            .padding(.top, getRelativeHeight(22.0))
            .padding(.horizontal, getRelativeWidth(24.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(800.0))
        .hideNavigationBar()
    }
}

struct ArtistsView_Previews: PreviewProvider {
    static var previews: some View {
        ArtistsView()
    }
}
