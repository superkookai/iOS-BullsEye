//
//  AboutViewController.swift
//  BullsEye
//
//  Created by Weerawut Chaiyasomboon on 25/2/2565 BE.
//

import UIKit
import WebKit

class AboutViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = Bundle.main.url(forResource: "BullsEye", withExtension: "html"){
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }
    
    @IBAction func close(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}
