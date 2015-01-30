//
//  ViewController.swift
//  Web Content
//
//  Created by Mat Sletten on 10/22/14.
//  Copyright (c) 2014 Mat Sletten. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var url = NSURL(string: "http://www.stackoverflow.com")
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url)
        {
            (data, response, error) in println(NSString(data: data, encoding:NSUTF8StringEncoding))
            //using the above to log to console, we can retrieve the html for any website and view it
            
        }
        task.resume()
        //it's standard to use task as a variable/let name for a URL Session
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

