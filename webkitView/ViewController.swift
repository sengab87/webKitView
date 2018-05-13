//
//  ViewController.swift
//  webkitView
//
//  Created by Dina Maala on 5/13/18.
//  Copyright © 2018 Dina Maala. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    
    
    @IBOutlet weak var webView: WKWebView!
    func webView(_ webView: WKWebView,
                 didFinish navigation: WKNavigation!) {
        print("loaded")
    }
    func webView(_: WKWebView, didFailProvisionalNavigation: WKNavigation!, withError: Error)
    {
        print(withError)
    }
    func webView(_: WKWebView, didFail: WKNavigation!, withError: Error)
    {
        print (withError)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let url:URL=URL(string: "https://www.google.com")!
        let  urlRequest:URLRequest = URLRequest(url: url)
        //let url = URL(string: "https://www.apple.com")!
        //let myRequest = URLRequest(url:url)
        
        webView.load(urlRequest)
        
        
        
        // create an optional already
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
