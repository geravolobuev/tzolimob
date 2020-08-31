//
//  WebView.swift
//  TZ-Olimob
//
//  Created by MAC on 28.08.2020.
//  Copyright © 2020 Gera Volobuev. All rights reserved.
//

import Foundation
import WebKit

class WebView: UIViewController, WKNavigationDelegate {
 
    var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://www.google.com")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
    }
    
}
