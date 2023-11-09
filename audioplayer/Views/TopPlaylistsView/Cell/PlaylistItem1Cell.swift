import SwiftUI

struct PlaylistItem1Cell: View {
    var renaissanceClick: (() -> Void)?
    var body: some View {
        ZStack(alignment: .center) {
            Image("img_playlist_background")
                .resizable()
                .frame(width: getRelativeWidth(340.0), height: getRelativeHeight(181.0),
                       alignment: .leading)
                .scaledToFit()
                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                           bottomRight: 8.0))
                .onTapGesture {
                    renaissanceClick?()
                }
            ZStack(alignment: .center) {
                Button(action: {}, label: {
                    Image("img_bookmark_black_900")
                })
                .frame(width: getRelativeWidth(38.0), height: getRelativeWidth(40.0),
                       alignment: .center)
                .clipShape(Circle())
                .padding(.bottom, getRelativeHeight(120.0))
                .padding(.trailing, getRelativeWidth(286.0))
                HStack {
                    VStack {
                        Text(StringConstants.kLblRenaissance)
                            .font(FontScheme.kRobotoMedium(size: getRelativeHeight(28.0)))
                            .fontWeight(.medium)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(158.0), height: getRelativeHeight(33.0),
                                   alignment: .leading)
                        HStack {
                            Text(StringConstants.kLbl843Tracks)
                                .font(FontScheme.kRobotoRegular(size: getRelativeHeight(16.0)))
                                .fontWeight(.regular)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(73.0),
                                       height: getRelativeHeight(19.0), alignment: .leading)
                            Spacer()
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(2.0), height: getRelativeHeight(3.0),
                                       alignment: .leading)
                                .background(RoundedCorners(topLeft: 1.0, topRight: 1.0,
                                                           bottomLeft: 1.0, bottomRight: 1.0))
                                .padding(.top, getRelativeHeight(9.0))
                                .padding(.bottom, getRelativeHeight(6.0))
                                .opacity(0.65)
                            Spacer()
                            Text(StringConstants.kLbl23Hours)
                                .font(FontScheme.kRobotoRegular(size: getRelativeHeight(16.0)))
                                .fontWeight(.regular)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(61.0),
                                       height: getRelativeHeight(19.0), alignment: .leading)
                        }
                        .frame(width: getRelativeWidth(154.0), height: getRelativeHeight(19.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(6.0))
                    }
                    .frame(width: getRelativeWidth(158.0), height: getRelativeHeight(58.0),
                           alignment: .leading)
                    .padding(.vertical, getRelativeHeight(86.0))
                    Spacer()
                    Image("img_play")
                        .resizable()
                        .frame(width: getRelativeWidth(48.0), height: getRelativeWidth(50.0),
                               alignment: .leading)
                        .scaledToFit()
                        .padding(.top, getRelativeHeight(99.0))
                }
                .frame(width: getRelativeWidth(340.0), height: getRelativeHeight(181.0),
                       alignment: .leading)
                .background(RoundedCorners(bottomLeft: 8.0, bottomRight: 8.0).fill())
            }
            .hideNavigationBar()
            .frame(width: getRelativeWidth(340.0), height: getRelativeHeight(181.0),
                   alignment: .leading)
        }
        .hideNavigationBar()
        .frame(width: getRelativeWidth(340.0), alignment: .leading)
    }
}

/* struct PlaylistItem1Cell_Previews: PreviewProvider {

 static var previews: some View {
 			PlaylistItem1Cell()
 }
 } */
