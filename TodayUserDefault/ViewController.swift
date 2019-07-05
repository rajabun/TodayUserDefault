//
//  ViewController.swift
//  TodayUserDefault
//
//  Created by Muhammad Rajab Priharsanto on 05/07/19.
//  Copyright © 2019 Muhammad Rajab Priharsanto. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    
    @IBOutlet weak var wordTF: UITextField!
    @IBOutlet weak var wordLabel: UILabel!
    var userDef = UserDefaults.standard
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        wordLabel.text = userDef.string(forKey: "word")
    }

    @IBAction func saveButton(_ sender: Any)
    {
        userDef.set(wordTF.text, forKey: "word")
        wordLabel.text = wordTF.text
        
        let path: [AnyObject] = NSSearchPathForDirectoriesInDomains(.libraryDirectory, .userDomainMask, true) as [AnyObject]
        print(path)
    }
}

