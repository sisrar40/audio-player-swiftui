import Foundation
import SwiftUI

class HomePageViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var isPlaylistViewShow: Bool = false
}
