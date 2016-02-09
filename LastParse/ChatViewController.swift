//
//  ChatViewController.swift
//  LastParse
//
//  Created by Abby Juan on 2/9/16.
//  Copyright © 2016 ZhanLiang. All rights reserved.
//

import UIKit
import Parse

class ChatViewController: UIViewController {

    @IBOutlet weak var messageTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func enterButton(sender: AnyObject) {
        
        var Message = PFObject(className:"Message")
        Message["text"] = messageTextField.text
        
        Message.saveInBackgroundWithBlock {
            (success: Bool, error: NSError?) -> Void in
            if (success) {
                print(self.messageTextField.text)
            } else {
                // There was a problem, check error.description
            }
        }
    }
        
    }


