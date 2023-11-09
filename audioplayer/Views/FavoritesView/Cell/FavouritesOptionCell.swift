import SwiftUI

struct FavouritesOptionCell: View {
    var body: some View {
        HStack {
            Image("img_music")
                .resizable()
                .frame(width: getRelativeWidth(22.0), height: getRelativeWidth(24.0),
                       alignment: .leading)
                .scaledToFit()
            Text(StringConstants.kLblTracks)
                .font(FontScheme.kRobotoRegular(size: getRelativeHeight(16.0)))
                .fontWeight(.regular)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(46.0), height: getRelativeHeight(19.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(105.0))
        }
        .frame(width: getRelativeWidth(340.0), alignment: .leading)
        .background(RoundedCorners(topLeft: 9.0, topRight: 9.0, bottomLeft: 9.0, bottomRight: 9.0))
        .hideNavigationBar()
    }
}

/* struct FavouritesOptionCell_Previews: PreviewProvider {

 static var previews: some View {
 			FavouritesOptionCell()
 }
 } */
