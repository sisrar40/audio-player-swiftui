import SwiftUI

struct Album2Cell: View {
    var body: some View {
        HStack {
            Image("img_thumbnail_78x78")
                .resizable()
                .frame(width: getRelativeWidth(76.0), height: getRelativeWidth(78.0),
                       alignment: .leading)
                .scaledToFit()
                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                           bottomRight: 8.0))
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kLblFlowerPower)
                    .font(FontScheme.kRobotoMedium(size: getRelativeHeight(18.0)))
                    .fontWeight(.medium)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(108.0), height: getRelativeHeight(22.0),
                           alignment: .leading)
                Text(StringConstants.kLblRayCharles)
                    .font(FontScheme.kRobotoRegular(size: getRelativeHeight(16.0)))
                    .fontWeight(.regular)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(82.0), height: getRelativeHeight(19.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(5.0))
                Text(StringConstants.kLbl2018)
                    .font(FontScheme.kRobotoRegular(size: getRelativeHeight(16.0)))
                    .fontWeight(.regular)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(34.0), height: getRelativeHeight(19.0),
                           alignment: .leading)
            }
            .frame(width: getRelativeWidth(108.0), height: getRelativeHeight(69.0),
                   alignment: .leading)
            .padding(.top, getRelativeHeight(5.0))
            .padding(.leading, getRelativeWidth(16.0))
            Text("Spacer")
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(115.0), height: getRelativeHeight(4.0),
                       alignment: .leading)
            Image("img_more_icon")
                .resizable()
                .frame(width: getRelativeWidth(18.0), height: getRelativeHeight(4.0),
                       alignment: .leading)
                .scaledToFit()
                .padding(.vertical, getRelativeHeight(37.0))
                .opacity(0.5)
        }
        .frame(width: getRelativeWidth(340.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct Album2Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Album2Cell()
 }
 } */
