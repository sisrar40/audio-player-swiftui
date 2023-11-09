import SwiftUI

struct SongMenuFullView: View {
    @StateObject var songMenuFullViewModel = SongMenuFullViewModel(_isOpen: .constant(false))
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                ZStack {}
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(35.0), height: getRelativeHeight(5.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 2.0, topRight: 2.0, bottomLeft: 2.0,
                                               bottomRight: 2.0))
                HStack {
                    Button(action: {}, label: {
                        Image("img_bookmark")
                    })
                    .frame(width: getRelativeWidth(38.0), height: getRelativeWidth(38.0),
                           alignment: .center)
                    .clipShape(Circle())
                    .padding(.bottom, getRelativeHeight(81.0))
                    Spacer()
                    VStack {
                        Image("img_thumbnail")
                            .resizable()
                            .frame(width: getRelativeWidth(65.0), height: getRelativeWidth(65.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .background(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                                       bottomRight: 4.0))
                        Text(StringConstants.kLblRenaissance)
                            .font(FontScheme.kRobotoMedium(size: getRelativeHeight(18.0)))
                            .fontWeight(.medium)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(103.0), height: getRelativeHeight(22.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(9.0))
                        HStack {
                            Text(StringConstants.kLblPodvalCaplella)
                                .font(FontScheme.kRobotoRegular(size: getRelativeHeight(14.0)))
                                .fontWeight(.regular)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(96.0),
                                       height: getRelativeHeight(17.0), alignment: .topLeading)
                            Spacer()
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(3.0), height: getRelativeWidth(3.0),
                                       alignment: .center)
                                .background(RoundedCorners(topLeft: 1.0, topRight: 1.0,
                                                           bottomLeft: 1.0, bottomRight: 1.0))
                                .padding(.vertical, getRelativeHeight(7.0))
                                .opacity(0.65)
                            Spacer()
                            Text(StringConstants.kLbl343)
                                .font(FontScheme.kRobotoRegular(size: getRelativeHeight(14.0)))
                                .fontWeight(.regular)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(27.0),
                                       height: getRelativeHeight(17.0), alignment: .topLeading)
                        }
                        .frame(width: getRelativeWidth(138.0), height: getRelativeHeight(18.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(5.0))
                    }
                    .frame(width: getRelativeWidth(138.0), height: getRelativeHeight(119.0),
                           alignment: .center)
                    Spacer()
                    Button(action: {}, label: {
                        Image("img_reply")
                    })
                    .frame(width: getRelativeWidth(38.0), height: getRelativeWidth(38.0),
                           alignment: .center)
                    .clipShape(Circle())
                    .padding(.bottom, getRelativeHeight(81.0))
                }
                .frame(width: getRelativeWidth(342.0), height: getRelativeHeight(119.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(23.0))
                VStack(spacing: 0) {
                    ScrollView(.vertical, showsIndicators: false) {
                        LazyVStack {
                            ForEach(0 ... 5, id: \.self) { index in
                                OptionItemCell()
                            }
                        }
                    }
                }
                .frame(width: getRelativeWidth(342.0), alignment: .center)
                .padding(.vertical, getRelativeHeight(27.0))
            }
            .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(633.0),
                   alignment: .center)
            .cornerRadius(29.0)
        }
        .frame(width: UIScreen.main.bounds.width)
        .hideNavigationBar()
    }
}

struct SongMenuFullView_Previews: PreviewProvider {
    static var previews: some View {
        SongMenuFullView()
    }
}
