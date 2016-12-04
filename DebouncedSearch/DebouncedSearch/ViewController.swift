//
//  ViewController.swift
//  DebouncedSearch
//
//  Created by Eugene Mankovski on 12/4/16.
//  Copyright © 2016 Eugene Mankovski. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    private var timer : NSTimer?
    
    dynamic var status = ""
    dynamic var searchString = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func searchChanged(sender: NSSearchField) {
        timer?.invalidate()
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: #selector(ViewController.updateLabel), userInfo: nil, repeats: false)
    }
    
    func updateLabel() {
        status = searchString
    }

}

