//
//  ViewController2.swift
//  demoPassDataDelegate
//
//  Created by AgribankCard on 4/3/17.
//  Copyright © 2017 cuongpc. All rights reserved.
//

import UIKit
protocol ViewController2Delegate {
    func passData (string: String)
}
class ViewController2: UIViewController, ViewController2Delegate {
    internal func passData(string: String) {
        print(string)
    }

    var delegate : ViewController2Delegate?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let des = segue.destination as! ViewController
        des.delegate = self
        des.delegate?.passData(string: "kekekek")
        
    }
    

}
