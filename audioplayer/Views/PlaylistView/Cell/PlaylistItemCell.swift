import SwiftUI

struct PlaylistItemCell: View {
    var body: some View {
        HStack {
            Image("img_photo_8")
                .resizable()
                .frame(width: getRelativeWidth(58.0), height: getRelativeHeight(59.0),
                       alignment: .leading)
                .scaledToFit()
                .clipShape(Circle())
                .clipShape(Capsule())
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kLblFlashbacks)
                    .font(FontScheme.kRobotoMedium(size: getRelativeHeight(18.0)))
                    .fontWeight(.medium)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(90.0), height: getRelativeHeight(22.0),
                           alignment: .leading)
                Text(StringConstants.kLblEmika)
                    .font(FontScheme.kRobotoRegular(size: getRelativeHeight(14.0)))
                    .fontWeight(.regular)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(37.0), height: getRelativeHeight(17.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(4.0))
            }
            .frame(width: getRelativeWidth(90.0), height: getRelativeHeight(43.0),
                   alignment: .leading)
            .padding(.vertical, getRelativeHeight(7.0))
            .padding(.leading, getRelativeWidth(17.0))
            Text("Spacer")
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(151.0), height: getRelativeHeight(4.0),
                       alignment: .leading)
            Image("img_more_icon")
                .resizable()
                .frame(width: getRelativeWidth(18.0), height: getRelativeHeight(4.0),
                       alignment: .leading)
                .scaledToFit()
                .padding(.top, getRelativeHeight(27.0))
                .padding(.bottom, getRelativeHeight(28.0))
                .opacity(0.5)
        }
        .frame(width: getRelativeWidth(340.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct PlaylistItemCell_Previews: PreviewProvider {

 static var previews: some View {
 			PlaylistItemCell()
 }
 } */
