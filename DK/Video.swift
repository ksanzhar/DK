//
//  Video.swift
//  DK
//
//  Created by Sanzhar Kozhahmetov on 2/9/17.
//  Copyright © 2017 Sanzhar Kozhahmetov. All rights reserved.
//

import Foundation

class Video {
    private var _imgUrl:String!
    private var _videoUrl:String!
    private var _videoTitle:String!
    
    var imgUrl:String {
        return _imgUrl
    }
    
    var videoUrl:String {
        return _videoUrl
    }

    var videoTitle:String {
        return _videoTitle
    }
    
    init(imgUrl:String, videoUrl:String, videoTitle:String) {
        _imgUrl = imgUrl
        _videoUrl = videoUrl
        _videoTitle = videoTitle
    }
}
