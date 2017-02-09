//
//  VideoVC.swift
//  DK
//
//  Created by Sanzhar Kozhahmetov on 2/8/17.
//  Copyright © 2017 Sanzhar Kozhahmetov. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {
    
    @IBOutlet weak var webView:UIWebView!
    
    @IBOutlet weak var titleLbl: UILabel!
    
    
    private var _video: Video!
    
    var video: Video {
        get {
            return _video
        }
        
        set {
            _video = newValue
        }
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        titleLbl.text = video.videoTitle
        webView.loadHTMLString(video.videoUrl, baseURL: nil)
    }


}
