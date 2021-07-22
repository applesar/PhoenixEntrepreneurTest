//
//  ResultViewController.swift
//  PhoenixEntrepreneurTest
//
//  Created by jeazous on 7/21/21.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var strengthsLabel: UILabel!
    @IBOutlet weak var weaknessesLabel: UILabel!
    @IBOutlet weak var strengthsView: UIView!
    @IBOutlet weak var weaknessesView: UIView!
    @IBOutlet weak var entrepreneurImageView: UIImageView!
    @IBOutlet weak var startAgainButton: UIButton!

    var leaderStyle: StylesStruct!
 
    override func viewWillAppear(_ animated: Bool) {
        var awesome = ""
        var pitfall = ""
        titleLabel.text = leaderStyle.similarity
        entrepreneurImageView.image = UIImage(named: leaderStyle.imageName)
        descriptionLabel.text = leaderStyle.description
        for a in leaderStyle.awesomeness {
            awesome = awesome + "• " + a + "\n"
        }
        for p in leaderStyle.pitfalls {
            pitfall = pitfall + "• " + p + "\n"
        }
        weaknessesLabel.text = pitfall
        strengthsLabel.text = awesome
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        strengthsView.layer.cornerRadius = 12
        weaknessesView.layer.cornerRadius = 12
        entrepreneurImageView.layer.cornerRadius = 12
        
    }
    

    @IBAction func startAgainClicked(_ sender: Any) {
        
        // dismiss(animated: true, completion: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "restartTest" {
            
            // This is how you pass a data model object to another view controller
            let destinationVC = segue.destination as! ChoicesViewController
            destinationVC.questionNumber = 0 // reset question Number to the first one
            destinationVC.finalStyle = LeadershipStyle.G // reset the final winning style to gavel
            // set all
            for currentStyle in destinationVC.answers.keys {
                destinationVC.answers[currentStyle] = 0
            }
        }
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
