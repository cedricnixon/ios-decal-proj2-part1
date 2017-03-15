//
//  ImageController.swift
//  snapChatProject
//
//  Created by Cedric Nixon on 3/14/17.
//  Copyright © 2017 org.iosdecal. All rights reserved.
//

import UIKit

class ImageController:UIViewController {
    var image : UIImage?
    
    @IBOutlet weak var imageView: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.setImage(image, for: .normal)
    }
    
    @IBAction func returnToFeed(_ sender: Any) {
        performSegue(withIdentifier: "imageToFeed", sender: self)
    }

}
