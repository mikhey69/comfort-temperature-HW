//
//  ViewController2.swift
//  HWAvtivyty
//
//  Created by mikhey on 29.05.2018.
//  Copyright © 2018 mikhey. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    //labels
    
    @IBOutlet weak var feelLikeLabel2: UILabel!
    
    //variables
    var textOfLabel : String = "!"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        feelLikeLabel2.text = textOfLabel
        
    }

   
    
   
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
