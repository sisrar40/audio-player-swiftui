import SwiftUI

struct LoginView: View {
    @StateObject var loginViewModel = LoginViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Text("Spacer")
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(86.0), height: getRelativeHeight(100.0))
                    Text(StringConstants.kLblSignIn)
                        .font(FontScheme.kRobotoMedium(size: getRelativeHeight(28.0)))
                        .fontWeight(.medium)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(86.0), height: getRelativeHeight(33.0),
                               alignment: .topLeading)
                    HStack {
                        TextField(StringConstants.kLblEmail, text: $loginViewModel.emailText)
                            .font(FontScheme.kRobotoRegular(size: getRelativeHeight(16.0)))
                            .padding()
                    }
                    .frame(width: getRelativeWidth(342.0), height: getRelativeHeight(48.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 9.0, topRight: 9.0, bottomLeft: 9.0,
                                               bottomRight: 9.0))
                    .padding(.top, getRelativeHeight(31.0))
                    HStack {
                        SecureField(StringConstants.kLblPassword,
                                    text: $loginViewModel.passwordText)
                            .font(FontScheme.kRobotoRegular(size: getRelativeHeight(16.0)))
                            .padding()
                    }
                    .frame(width: getRelativeWidth(342.0), height: getRelativeHeight(48.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 9.0, topRight: 9.0, bottomLeft: 9.0,
                                               bottomRight: 9.0))
                    .padding(.top, getRelativeHeight(16.0))
                    Button(action: {}, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblSignIn2)
                                .font(FontScheme.kRobotoRegular(size: getRelativeHeight(16.0)))
                                .fontWeight(.regular)
                                .padding(.horizontal, getRelativeWidth(30.0))
                                .padding(.vertical, getRelativeHeight(14.0))
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(342.0),
                                       height: getRelativeHeight(48.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 6.0, topRight: 6.0,
                                                           bottomLeft: 6.0, bottomRight: 6.0))
                                .padding(.top, getRelativeHeight(24.0))
                        }
                    })
                    .frame(width: getRelativeWidth(342.0), height: getRelativeHeight(48.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                               bottomRight: 6.0))
                    .padding(.top, getRelativeHeight(24.0))
                    Text(StringConstants.kMsgForgotYourLogin)
                        .font(FontScheme.kRobotoRegular(size: getRelativeHeight(14.0)))
                        .fontWeight(.regular)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(193.0), height: getRelativeHeight(17.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(40.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(712.0),
                       alignment: .center)
                Button(action: {}, label: {
                    HStack(spacing: 0) {
                        Text(StringConstants.kLblCreateAccount)
                            .font(FontScheme.kRobotoMedium(size: getRelativeHeight(16.0)))
                            .fontWeight(.medium)
                            .padding(.horizontal, getRelativeWidth(30.0))
                            .padding(.vertical, getRelativeHeight(14.0))
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(342.0), height: getRelativeHeight(48.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                                    bottomRight: 6.0)
                                    .stroke(Color.clear.opacity(0.7),
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                                       bottomRight: 6.0)
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.horizontal, getRelativeWidth(24.0))
                    }
                })
                .frame(width: getRelativeWidth(342.0), height: getRelativeHeight(48.0),
                       alignment: .center)
                .overlay(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                        bottomRight: 6.0)
                        .stroke(Color.clear.opacity(0.7),
                                lineWidth: 1))
                .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                           bottomRight: 6.0)
                        .fill(Color.clear.opacity(0.7)))
                .padding(.horizontal, getRelativeWidth(24.0))
                Group {
                    NavigationLink(destination: HomePageView(),
                                   tag: "HomePageView",
                                   selection: $loginViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(800.0))
            .hideNavigationBar()
        }
        .hideNavigationBar()
        .onAppear {
            loginViewModel.nextScreen = "HomePageView"
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
