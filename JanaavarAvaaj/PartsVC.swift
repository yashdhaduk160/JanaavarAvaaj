//
//  PartsVC.swift
//  JanaavarAvaaj
//
//  Created by Yash Dhaduk on 13/03/24.
//

import UIKit

class PartsVC: UIViewController {

    
    @IBOutlet weak var txt: UITextView!
    @IBOutlet weak var btn_back: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.txt.layer.cornerRadius = 20
        self.btn_back.layer.cornerRadius = 15

    }
    

    

    @IBAction func btn_back(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)

    }
}
