//
//  Receipts.swift
//  snapChatProject
//
//  Created by Cedric Nixon on 3/13/17.
//  Copyright © 2017 org.iosdecal. All rights reserved.
//

import UIKit

class FeedController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var feedTable: UITableView!
    
    var image : UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        feedTable.delegate = self
        feedTable.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        feedTable.reloadData()
        self.navigationItem.hidesBackButton = true
        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return threadNames[section]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (threads[threadNames[section]]!.count)
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return threadNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let newCell = tableView.dequeueReusableCell(withIdentifier: "feedCell") as! feedCell
        let info = threads[threadNames[indexPath.section]]?[indexPath.row]
        if (info?.viewState)! {
            newCell.readImage.image = UIImage(named: "read.png")
        } else {
            newCell.readImage.image = UIImage(named: "unread.png")
        }
        newCell.name.text = info?.name
        let sec = NSDate().timeIntervalSince((info?.time)!)
        newCell.timePassed.text = String(Int(round(sec/60))) + " minutes ago"
        return newCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if (!(threads[threadNames[indexPath.section]]?[indexPath.row].viewState)!) {
            threads[threadNames[indexPath.section]]?[indexPath.row].viewState = true
            image = threads[threadNames[indexPath.section]]?[indexPath.row].photo!
            performSegue(withIdentifier: "feedToImage", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "feedToImage" {
            if let dest = segue.destination as? ImageController {
                dest.image = image
            }
        }
    }
    
}
