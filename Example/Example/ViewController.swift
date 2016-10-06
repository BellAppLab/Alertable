//
//  ViewController.swift
//  Example
//
//  Created by André Abou Chami Campana on 06/10/2016.
//  Copyright © 2016 Bell App Lab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func alertPressed(_ sender: AnyObject) {        
        self.alert(this: Alert("Alert this!"))
    }

}

