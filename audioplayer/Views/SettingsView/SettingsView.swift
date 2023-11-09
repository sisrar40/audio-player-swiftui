import SwiftUI

struct SettingsView: View {
    @StateObject var settingsViewModel = SettingsViewModel()
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
                    Text(StringConstants.kLblEqualizer)
                        .font(FontScheme.kRobotoMedium(size: getRelativeHeight(20.0)))
                        .fontWeight(.medium)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(83.0), height: getRelativeHeight(24.0),
                               alignment: .topLeading)
                    Spacer()
                    Image("img_close")
                        .resizable()
                        .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                }
                .frame(width: getRelativeWidth(342.0), height: getRelativeHeight(25.0),
                       alignment: .leading)
                .padding(.horizontal, getRelativeWidth(24.0))
            }
            .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(53.0),
                   alignment: .leading)
            VStack(alignment: .leading, spacing: 0) {
                HStack(spacing: 0) {
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(0 ... 5, id: \.self) { index in
                                DBCounterCell()
                            }
                        }
                    }
                }
                .frame(width: getRelativeWidth(343.0), alignment: .leading)
                .padding(.trailing)
                Text(StringConstants.kLblMySettings)
                    .font(FontScheme.kRobotoRegular(size: getRelativeHeight(16.0)))
                    .fontWeight(.regular)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(84.0), height: getRelativeHeight(17.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(35.0))
                    .padding(.leading, getRelativeWidth(4.0))
                Text(StringConstants.kLblDefault)
                    .font(FontScheme.kRobotoRegular(size: getRelativeHeight(16.0)))
                    .fontWeight(.regular)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(52.0), height: getRelativeHeight(19.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(25.0))
                    .padding(.leading, getRelativeWidth(4.0))
                Text(StringConstants.kLblClubMusic)
                    .font(FontScheme.kRobotoRegular(size: getRelativeHeight(16.0)))
                    .fontWeight(.regular)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(80.0), height: getRelativeHeight(19.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(26.0))
                    .padding(.leading, getRelativeWidth(4.0))
                Text(StringConstants.kLblClassicalMusic)
                    .font(FontScheme.kRobotoRegular(size: getRelativeHeight(16.0)))
                    .fontWeight(.regular)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(112.0), height: getRelativeHeight(19.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(26.0))
                    .padding(.leading, getRelativeWidth(4.0))
                Text(StringConstants.kLblDanceMusic)
                    .font(FontScheme.kRobotoRegular(size: getRelativeHeight(16.0)))
                    .fontWeight(.regular)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(93.0), height: getRelativeHeight(19.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(26.0))
                    .padding(.leading, getRelativeWidth(4.0))
                Text(StringConstants.kMsgLowFrequencyGain)
                    .font(FontScheme.kRobotoRegular(size: getRelativeHeight(16.0)))
                    .fontWeight(.regular)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(139.0), height: getRelativeHeight(17.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(27.0))
                    .padding(.leading, getRelativeWidth(4.0))
                Text(StringConstants.kMsgLowFrequencyGain)
                    .font(FontScheme.kRobotoRegular(size: getRelativeHeight(16.0)))
                    .fontWeight(.regular)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(139.0), height: getRelativeHeight(17.0),
                           alignment: .topLeading)
                    .padding(.vertical, getRelativeHeight(27.0))
                    .padding(.leading, getRelativeWidth(4.0))
            }
            .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(746.0),
                   alignment: .center)
        }
        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(800.0))
        .hideNavigationBar()
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
