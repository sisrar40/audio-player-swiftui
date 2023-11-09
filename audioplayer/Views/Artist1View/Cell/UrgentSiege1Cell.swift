import SwiftUI

struct UrgentSiege1Cell: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image("img_thumbnails")
                .resizable()
                .frame(width: getRelativeWidth(157.0), height: getRelativeHeight(181.0),
                       alignment: .leading)
                .scaledToFit()
                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                           bottomRight: 12.0))
            Text(StringConstants.kLblUrgentSiege)
                .font(FontScheme.kRobotoMedium(size: getRelativeHeight(18.0)))
                .fontWeight(.medium)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(101.0), height: getRelativeHeight(22.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(8.0))
            Text(StringConstants.kLblDamnedAnthem)
                .font(FontScheme.kRobotoRegular(size: getRelativeHeight(14.0)))
                .fontWeight(.regular)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(102.0), height: getRelativeHeight(17.0),
                       alignment: .leading)
        }
        .frame(width: getRelativeWidth(157.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct UrgentSiege1Cell_Previews: PreviewProvider {

 static var previews: some View {
 			UrgentSiege1Cell()
 }
 } */
