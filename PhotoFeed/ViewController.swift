//
//  ViewController.swift
//  PhotoFeed
//
//  Created by Myoung-Wan Koo on 2016. 5. 6..
//  Copyright © 2016년 Myoung-Wan Koo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dateLabel: UILabel!
    
    
    @IBOutlet weak var updateButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /* Initial Loading */
        self.updateDateLabel()
        // Do any additional setup after loading the view, typically from a nib.
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateDateLabel () {
        /* Reading Date from default file */
        let lastUpdate = NSUserDefaults.standardUserDefaults().objectForKey("buttonTapped") as? NSDate
        if let hasLastUpdate = lastUpdate {
            self.dateLabel.text = hasLastUpdate.description
        } else {
            self.dateLabel.text = "No date saved."
        }
       
     }


    @IBAction func updateButtonAction(sender: AnyObject) {
        /* Writing date into default file */
        let now = NSDate()
        NSUserDefaults.standardUserDefaults().setObject(now, forKey: "buttonTapped")
        self.updateDateLabel()
        
    }
}

