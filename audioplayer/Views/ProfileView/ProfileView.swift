import SwiftUI

struct ProfileView: View {
    @StateObject var profileViewModel = ProfileViewModel()
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
                    Text(StringConstants.kLblProfile)
                        .font(FontScheme.kRobotoMedium(size: getRelativeHeight(20.0)))
                        .fontWeight(.medium)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(59.0), height: getRelativeHeight(24.0),
                               alignment: .topLeading)
                    Spacer()
                    Image("img_close")
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
            VStack {
                VStack {
                    Image("img_profile_thumbnail")
                        .resizable()
                        .frame(width: getRelativeWidth(97.0), height: getRelativeWidth(97.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipShape(Circle())
                        .background(RoundedCorners(topLeft: 48.0, topRight: 48.0, bottomLeft: 48.0,
                                                   bottomRight: 48.0))
                    Text(StringConstants.kLblErlikBachman)
                        .font(FontScheme.kRobotoMedium(size: getRelativeHeight(18.0)))
                        .fontWeight(.medium)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(116.0), height: getRelativeHeight(22.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(12.0))
                    Text(StringConstants.kMsgBachmanMailCom)
                        .font(FontScheme.kRobotoRegular(size: getRelativeHeight(14.0)))
                        .fontWeight(.regular)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(130.0), height: getRelativeHeight(17.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(4.0))
                }
                .frame(width: getRelativeWidth(342.0), height: getRelativeHeight(152.0),
                       alignment: .center)
                VStack {
                    Text(StringConstants.kLblMySubscription)
                        .font(FontScheme.kRobotoRegular(size: getRelativeHeight(16.0)))
                        .fontWeight(.regular)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(114.0), height: getRelativeHeight(19.0),
                               alignment: .topLeading)
                    Text(StringConstants.kMsgValidUntilMay)
                        .font(FontScheme.kRobotoRegular(size: getRelativeHeight(14.0)))
                        .fontWeight(.regular)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(146.0), height: getRelativeHeight(17.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(8.0))
                }
                .frame(width: getRelativeWidth(342.0), height: getRelativeHeight(81.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 9.0, topRight: 9.0, bottomLeft: 9.0,
                                           bottomRight: 9.0))
                .padding(.top, getRelativeHeight(48.0))
                Button(action: {}, label: {
                    HStack(spacing: 0) {
                        Text(StringConstants.kMsgRestorePurchases)
                            .font(FontScheme.kRobotoRegular(size: getRelativeHeight(16.0)))
                            .fontWeight(.regular)
                            .padding(.horizontal, getRelativeWidth(30.0))
                            .padding(.vertical, getRelativeHeight(14.0))
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(342.0), height: getRelativeHeight(48.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                                       bottomRight: 6.0))
                            .padding(.top, getRelativeHeight(28.0))
                    }
                })
                .frame(width: getRelativeWidth(342.0), height: getRelativeHeight(48.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                           bottomRight: 6.0))
                .padding(.top, getRelativeHeight(28.0))
                Button(action: {}, label: {
                    HStack(spacing: 0) {
                        Text(StringConstants.kMsgEnterPromoCode)
                            .font(FontScheme.kRobotoRegular(size: getRelativeHeight(16.0)))
                            .fontWeight(.regular)
                            .padding(.horizontal, getRelativeWidth(12.0))
                            .padding(.vertical, getRelativeHeight(14.0))
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(342.0), height: getRelativeHeight(48.0),
                                   alignment: .leading)
                            .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                                       bottomRight: 6.0))
                            .padding(.top, getRelativeHeight(8.0))
                    }
                })
                .frame(width: getRelativeWidth(342.0), height: getRelativeHeight(48.0),
                       alignment: .leading)
                .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                           bottomRight: 6.0))
                .padding(.top, getRelativeHeight(8.0))
                Button(action: {}, label: {
                    HStack(spacing: 0) {
                        Text(StringConstants.kLblQuit)
                            .font(FontScheme.kRobotoRegular(size: getRelativeHeight(16.0)))
                            .fontWeight(.regular)
                            .padding(.horizontal, getRelativeWidth(30.0))
                            .padding(.vertical, getRelativeHeight(14.0))
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(342.0), height: getRelativeHeight(48.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                                       bottomRight: 6.0))
                            .padding(.top, getRelativeHeight(8.0))
                            .padding(.bottom, getRelativeHeight(5.0))
                    }
                })
                .frame(width: getRelativeWidth(342.0), height: getRelativeHeight(48.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                           bottomRight: 6.0))
                .padding(.top, getRelativeHeight(8.0))
                .padding(.bottom, getRelativeHeight(5.0))
            }
            .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(748.0),
                   alignment: .center)
        }
        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(800.0))
        .hideNavigationBar()
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
