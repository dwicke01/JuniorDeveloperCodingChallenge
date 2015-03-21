//
//  ViewController.swift
//  JuniorDeveloperCodingChallenge
//
//  Created by Daniel Wickes on 3/20/15.
//  Copyright (c) 2015 danielwickes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if !DBSession.sharedSession().isLinked() {
            DBSession.sharedSession().linkFromController(self)
        }
        performSegueWithIdentifier("Authenticated", sender: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
/*
    @IBAction func didPressLink() {
        if DBSession.sharedSession().isLinked() {
            DBSession.sharedSession().linkFromController(self)
        }
    }
*/
}

