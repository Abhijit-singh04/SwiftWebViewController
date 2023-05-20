import UIKit
import WebKit

class ViewController: UIViewController {
    
    var webViewArray = [WKWebView]()
    var homeWebView: WKWebView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create and add home web view to the view hierarchy
        let homeConfig = WKWebViewConfiguration()
        homeWebView = WKWebView(frame: view.frame, configuration: homeConfig)
        view.addSubview(homeWebView!)
        
        // Create and add button to the view hierarchy
        let button = UIButton(frame: CGRect(x: view.frame.midX - 50, y: view.frame.midY - 25, width: 100, height: 50))
        button.setTitle("Create Web View", for: .normal)
        button.backgroundColor = .blue
        button.addTarget(self, action: #selector(createWebView), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @objc func createWebView() {
        // Create new web view and add to the view hierarchy
        let webViewConfig = WKWebViewConfiguration()
        let newWebView = WKWebView(frame: view.frame, configuration: webViewConfig)
        view.addSubview(newWebView)
        webViewArray.append(newWebView)
    }
    
}
