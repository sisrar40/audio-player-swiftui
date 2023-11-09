import SwiftUI

struct DBCounterCell: View {
    var body: some View {
        VStack {
            Text(StringConstants.kLbl4Db)
                .font(FontScheme.kRobotoRegular(size: getRelativeHeight(12.0)))
                .fontWeight(.regular)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(22.0), height: getRelativeHeight(15.0),
                       alignment: .leading)
                .padding(.trailing, getRelativeWidth(6.0))
            Image("img_1")
                .resizable()
                .frame(width: getRelativeWidth(17.0), height: getRelativeHeight(298.0),
                       alignment: .leading)
                .scaledToFit()
                .padding(.top, getRelativeHeight(8.0))
            Text(StringConstants.kLbl100Hz)
                .font(FontScheme.kRobotoRegular(size: getRelativeHeight(12.0)))
                .fontWeight(.regular)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(36.0), height: getRelativeHeight(15.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(6.0))
        }
        .frame(width: getRelativeWidth(36.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct DBCounterCell_Previews: PreviewProvider {

 static var previews: some View {
 			DBCounterCell()
 }
 } */
