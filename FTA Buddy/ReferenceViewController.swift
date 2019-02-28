//
//  ReferenceViewController.swift
//  FTA Buddy
//
//  Created by Ken Schenke on 2/27/19.
//  Copyright © 2019 Ken Schenke. All rights reserved.
//

import UIKit
import WebKit

class ReferenceViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = Bundle.main.url(forResource: "reference", withExtension: "html", subdirectory: "html")!
        webView.loadFileURL(url, allowingReadAccessTo: url)
        let request = URLRequest(url: url)
        webView.load(request)
    }
    
}
