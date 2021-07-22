//
//  ViewController.swift
//  PhoenixEntrepreneurTest
//
//  Created by jeazous on 7/21/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var startAssessmentButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        startAssessmentButton.layer.cornerRadius = startAssessmentButton.frame.height/2
    }


}

