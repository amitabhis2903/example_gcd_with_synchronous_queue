//
//  ViewController.swift
//  example_gcd_with_synchronous_queue
//
//  Created by Ammy Pandey on 14/08/17.
//  Copyright © 2017 Ammy Pandey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        syncQueue()
    }
   
    func syncQueue(){
        let queue = DispatchQueue(label: "com.load.web")
        queue.sync {
            for i in 1..<10 {
                print("😀",i)
            }
        }
        for i in 100..<110{
            print("😕",i)
        }
    }
}

