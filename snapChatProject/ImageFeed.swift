//
//  imageFeed.swift
//  snapChatProject
//
//  Created by Akilesh Bapu on 2/27/17.
//  Copyright © 2017 org.iosdecal. All rights reserved.
//

import Foundation
import UIKit

// This is the only line of code you should be modifying
class imageData {
    let name: String!
    let photo: UIImage!
    let time: Date!
    var viewState: Bool!
    init(name: String, time: Date, viewState: Bool, photo: UIImage) {
        self.name = name
        self.photo = photo
        self.time = time
        self.viewState = viewState
    }
}
var threads: [String: [imageData]] = ["Memes": [], "Dog Spots": [], "Random": []]
//

let threadNames = ["Memes", "Dog Spots", "Random"]
var allImages: [UIImage] = [#imageLiteral(resourceName: "cutePuppy"), #imageLiteral(resourceName: "berkAtNight"), #imageLiteral(resourceName: "dankMeme4"), #imageLiteral(resourceName: "Campanile"), #imageLiteral(resourceName: "dankMeme1"), #imageLiteral(resourceName: "dankMeme2"), #imageLiteral(resourceName: "amazingCutePuppy"), #imageLiteral(resourceName: "cutePuppy"), #imageLiteral(resourceName: "dirks"), #imageLiteral(resourceName: "dankMeme3")]
