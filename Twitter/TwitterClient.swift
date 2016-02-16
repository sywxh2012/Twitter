//
//  TwitterClient.swift
//  Twitter
//
//  Created by Xinghan Wang on 2/15/16.
//  Copyright © 2016 Xinghan Wang. All rights reserved.
//

import UIKit
import BDBOAuth1Manager

let twitterConsumerKey = "1ri5raTz6uatEDKMcJF3qKMdq"
let twitterConsumerSecret = "qKwM8dfnfFn7eBokS7kWDwno0CIBmauxrlSRCBrv6u6VXM51dn"
let twitterBaseURL = NSURL(string: "http://api.twitter.com")


class TwitterClient: BDBOAuth1SessionManager {
    
    class var sharedInstance: TwitterClient {
        struct Static {
            static let instance = TwitterClient(baseURL: twitterBaseURL, consumerKey: twitterConsumerKey,consumerSecret: twitterConsumerSecret)
        }
        
        return Static.instance
    }

}
