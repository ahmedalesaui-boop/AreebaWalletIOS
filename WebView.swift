import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let url: String

    func makeUIView(context: Context) -> WKWebView {
        let configuration = WKWebViewConfiguration()
        configuration.allowsInlineMediaPlayback = true
        configuration.websiteDataStore = .default()

        let webView = WKWebView(frame: .zero, configuration: configuration)
        webView.allowsBackForwardNavigationGestures = true

        if let target = URL(string: url) {
            webView.load(URLRequest(url: target))
        }

        return webView
    }

    func updateUIView(_ webView: WKWebView, context: Context) {
        guard let target = URL(string: url) else { return }
        if webView.url?.absoluteString != target.absoluteString {
            webView.load(URLRequest(url: target))
        }
    }
}
