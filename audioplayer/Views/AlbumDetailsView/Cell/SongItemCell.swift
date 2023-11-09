import SwiftUI

struct SongItemCell: View {
    var body: some View {
        HStack {
            ZStack(alignment: .center) {
                Text(StringConstants.kLbl1)
                    .font(FontScheme.kRobotoMedium(size: getRelativeHeight(18.0)))
                    .fontWeight(.medium)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(5.0), height: getRelativeHeight(21.0),
                           alignment: .leading)
                    .padding(.bottom, getRelativeHeight(5.0))
                    .padding(.trailing, getRelativeWidth(11.0))
                ZStack {}
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(26.0),
                           alignment: .leading)
                    .clipShape(Circle())
            }
            .hideNavigationBar()
            .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(26.0),
                   alignment: .leading)
            .padding(.vertical, getRelativeHeight(5.0))
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kLblBurning)
                    .font(FontScheme.kRobotoMedium(size: getRelativeHeight(18.0)))
                    .fontWeight(.medium)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(60.0), height: getRelativeHeight(22.0),
                           alignment: .leading)
                Text(StringConstants.kLblPodvalCaplella)
                    .font(FontScheme.kRobotoRegular(size: getRelativeHeight(14.0)))
                    .fontWeight(.regular)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(93.0), height: getRelativeHeight(17.0),
                           alignment: .leading)
            }
            .frame(width: getRelativeWidth(93.0), height: getRelativeHeight(41.0),
                   alignment: .leading)
            .padding(.leading, getRelativeWidth(16.0))
            Text("Spacer")
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(182.0), height: getRelativeHeight(4.0),
                       alignment: .leading)
            Image("img_more_icon")
                .resizable()
                .frame(width: getRelativeWidth(18.0), height: getRelativeHeight(4.0),
                       alignment: .leading)
                .scaledToFit()
                .padding(.vertical, getRelativeHeight(14.0))
                .opacity(0.5)
        }
        .frame(width: getRelativeWidth(340.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct SongItemCell_Previews: PreviewProvider {

 static var previews: some View {
 			SongItemCell()
 }
 } */
