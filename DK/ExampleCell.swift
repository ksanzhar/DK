//
//  ExampleCell.swift
//  DK
//
//  Created by Sanzhar Kozhahmetov on 2/8/17.
//  Copyright © 2017 Sanzhar Kozhahmetov. All rights reserved.
//

import UIKit

class ExampleCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    
    @IBOutlet weak var videoTitle: UILabel!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func updateUI (video: Video) {
        videoTitle.text = video.videoTitle
        
        let url = URL(string: video.imgUrl)!
        
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    self.videoPreviewImage.image = UIImage(data: data)
                }
            } catch  {
                // handle the error
            }
        }
        
    }


}
