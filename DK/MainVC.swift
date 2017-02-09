//
//  MainVC.swift
//  DK
//
//  Created by Sanzhar Kozhahmetov on 2/8/17.
//  Copyright © 2017 Sanzhar Kozhahmetov. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    var videos = [Video]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let v1 = Video(imgUrl: "http://i3.ytimg.com/vi/OhYEXbHTW24/hqdefault.jpg", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/OhYEXbHTW24\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Dimash Kudaibergen - The Show Must Go On")
        let v2 = Video(imgUrl: "http://i3.ytimg.com/vi/OhYEXbHTW24/hqdefault.jpg", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/OhYEXbHTW24\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Dimash Kudaibergen - The Show Must Go On")
        let v3 = Video(imgUrl: "http://i3.ytimg.com/vi/OhYEXbHTW24/hqdefault.jpg", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/OhYEXbHTW24\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Dimash Kudaibergen - The Show Must Go On")
        let v4 = Video(imgUrl: "http://i3.ytimg.com/vi/OhYEXbHTW24/hqdefault.jpg", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/OhYEXbHTW24\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Dimash Kudaibergen - The Show Must Go On")
        let v5 = Video(imgUrl: "http://i3.ytimg.com/vi/OhYEXbHTW24/hqdefault.jpg", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/OhYEXbHTW24\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Dimash Kudaibergen - The Show Must Go On")
        videos.append(v1)
        videos.append(v2)
        videos.append(v3)
        videos.append(v4)
        videos.append(v5)
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "ExampleCell", for: indexPath) as? ExampleCell {
            
            let video = videos [indexPath.row]
            
            cell.updateUI(video: video)
            
            return cell
            
        } else {
            return UITableViewCell()
        }
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let video = videos[indexPath.row]
        
        performSegue(withIdentifier: "VideoVC", sender: video)
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? VideoVC {
            if let video = sender as? Video {
                destination.video = video
            }
        }
        
        
    }
}

