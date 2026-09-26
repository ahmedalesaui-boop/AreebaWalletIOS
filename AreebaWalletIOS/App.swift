
import SwiftUI

@main
struct AreebaWalletApp: App {
    var body: some Scene {
        WindowGroup {
            WebView(url: AppConfig.serverURL)
                .ignoresSafeArea()
        }
    }
}
