//
//  AboutUsVC.swift
//  JanaavarAvaaj
//
//  Created by Yash Dhaduk on 14/03/24.
//

import UIKit

class AboutUsVC: UIViewController {

    @IBOutlet weak var txt: UITextView!
    
    @IBOutlet weak var btn_back: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.btn_back.layer.cornerRadius = 15
        self.txt.layer.cornerRadius = 25        // Do any additional setup after loading the view.
    }
    
    @IBAction func btn_back(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)

    }
    

}
