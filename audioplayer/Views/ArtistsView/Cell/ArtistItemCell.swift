import SwiftUI

struct ArtistItemCell: View {
    var body: some View {
        HStack {
            Image("img_photo_8_76x78")
                .resizable()
                .frame(width: getRelativeWidth(76.0), height: getRelativeHeight(76.0),
                       alignment: .leading)
                .scaledToFit()
                .clipShape(Circle())
                .clipShape(Capsule())
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kLblLorn)
                    .font(FontScheme.kRobotoMedium(size: getRelativeHeight(18.0)))
                    .fontWeight(.medium)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(35.0), height: getRelativeHeight(22.0),
                           alignment: .leading)
                Text(StringConstants.kMsg843Tracks23)
                    .font(FontScheme.kRobotoRegular(size: getRelativeHeight(14.0)))
                    .fontWeight(.regular)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(140.0), height: getRelativeHeight(17.0),
                           alignment: .leading)
            }
            .frame(width: getRelativeWidth(140.0), height: getRelativeHeight(41.0),
                   alignment: .leading)
            .padding(.vertical, getRelativeHeight(17.0))
            .padding(.leading, getRelativeWidth(16.0))
            Text("Spacer")
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(84.0), height: getRelativeHeight(3.0),
                       alignment: .leading)
            Image("img_more_icon")
                .resizable()
                .frame(width: getRelativeWidth(18.0), height: getRelativeHeight(3.0),
                       alignment: .leading)
                .scaledToFit()
                .padding(.vertical, getRelativeHeight(33.0))
                .opacity(0.5)
        }
        .frame(width: getRelativeWidth(340.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct ArtistItemCell_Previews: PreviewProvider {

 static var previews: some View {
 			ArtistItemCell()
 }
 } */
