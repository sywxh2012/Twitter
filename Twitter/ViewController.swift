//
//  ViewController.swift
//  Twitter
//
//  Created by Xinghan Wang on 2/15/16.
//  Copyright © 2016 Xinghan Wang. All rights reserved.
//

import UIKit
import BDBOAuth1Manager

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func onLogin(sender: AnyObject) {
        
            TwitterClient.sharedInstance.requestSerializer.removeAccessToken()
        TwitterClient.sharedInstance.fetchRequestTokenWithPath("oauth/request_token", method: "GET", callbackURL: NSURL(string: "cptwitterdemo://oauth"), scope: nil, success:{
            (requestToken:BDBOAuth1Credential!) -> Void in
            print("got request token")
            }) {(error:NSError!) -> Void in
                print("fail to get token")
        }
    }


    
    
    
    
}

