//
//  MywebviewController.swift
//  Inf_Basic
//
//  Created by Chuljin Hwang on 2022/01/27.
//

import Foundation
import UIKit
import WebKit

class WebviewController: UIViewController, WKNavigationDelegate{
    @IBOutlet weak var webView: WKWebView!
    var url = "https://google.com"
    override func viewDidLoad() {
        self.webView.navigationDelegate = self
        self.webView.load(URLRequest(url: URL(string: url)!))
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        self.webView.evaluateJavaScript("document.title"){
            (result, error) in self.navigationItem.title = result as? String
        }
    }
    
}
