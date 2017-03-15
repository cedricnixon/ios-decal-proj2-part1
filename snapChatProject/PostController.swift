//
//  PostController.swift
//  snapChatProject
//
//  Created by Cedric Nixon on 3/14/17.
//  Copyright © 2017 org.iosdecal. All rights reserved.
//

import UIKit

class PostController:UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var photo: UIImage?
    
    @IBOutlet weak var postDestination: UILabel!
    
    @IBOutlet weak var goButton: UIButton!
    
    @IBOutlet weak var selectDestTable: UITableView!
    
    @IBAction func sendIt(_ sender: UIButton) {
        threads[postDestination.text!]?.append(imageData(name: "John Doe", time: Date(), viewState: false, photo: photo!))
        performSegue(withIdentifier: "sendToHome", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectDestTable.delegate = self
        selectDestTable.dataSource = self
        postDestination.text=""
        goButton.isUserInteractionEnabled = false
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return threadNames.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let newCell = tableView.dequeueReusableCell(withIdentifier: "postTableCell") as! postTableCell
        newCell.label.text = threadNames[indexPath.item]
        return newCell
    }
    

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        goButton.isUserInteractionEnabled = true
        postDestination.text = threadNames[indexPath.row]
    }
    
    
    
    
}
