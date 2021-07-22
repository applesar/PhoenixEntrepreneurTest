//
//  ChoicesViewController.swift
//  PhoenixEntrepreneurTest
//
//  Created by jeazous on 7/21/21.
//

import UIKit

class ChoicesViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    @IBOutlet weak var choice3Button: UIButton!
    @IBOutlet weak var choice4Button: UIButton!
    @IBOutlet weak var choice5Button: UIButton!
    @IBOutlet weak var choice6Button: UIButton!
    
    @IBOutlet weak var questionTracking: UILabel!
    
    var allQuestions = Questions()
    var answers:  [LeadershipStyle: Int] = [.G: 0, .S: 0, .H: 0, .C: 0, .P: 0, .F: 0]
    var questionNumber = 0
    var leaderStyles = LeadershipStyles()
    var maxQuestions = 0
    var finalStyle = LeadershipStyle.G
    
    override func viewDidAppear(_ animated: Bool) {
        questionNumber = 0
        finalStyle = LeadershipStyle.G
        answers = [.G: 0, .S: 0, .H: 0, .C: 0, .P: 0, .F: 0]
print("Start: \(questionNumber)")
        updateView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let inset = 8.0
        // Do any additional setup after loading the view.
        self.choice1Button.layer.cornerRadius = 12
        self.choice2Button.layer.cornerRadius = 12
        self.choice3Button.layer.cornerRadius = 12
        self.choice4Button.layer.cornerRadius = 12
        self.choice5Button.layer.cornerRadius = 12
        self.choice6Button.layer.cornerRadius = 12
        self.choice1Button.contentEdgeInsets.left = CGFloat(inset)
        self.choice2Button.contentEdgeInsets.left = CGFloat(inset)
        self.choice3Button.contentEdgeInsets.left = CGFloat(inset)
        self.choice4Button.contentEdgeInsets.left = CGFloat(inset)
        self.choice5Button.contentEdgeInsets.left = CGFloat(inset)
        self.choice6Button.contentEdgeInsets.left = CGFloat(inset)
        self.choice1Button.contentEdgeInsets.right = CGFloat(inset)
        self.choice2Button.contentEdgeInsets.right = CGFloat(inset)
        self.choice3Button.contentEdgeInsets.right = CGFloat(inset)
        self.choice4Button.contentEdgeInsets.right = CGFloat(inset)
        self.choice5Button.contentEdgeInsets.right = CGFloat(inset)
        self.choice6Button.contentEdgeInsets.right = CGFloat(inset)

        maxQuestions = allQuestions.choices.count
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    func updateView() {
        let qN = questionNumber;
print("MAX: \(self.maxQuestions) ... QN : \(qN)")
       
        if qN < self.maxQuestions {
            let qN2 = qN + 1
            questionTracking.text = "\(qN2)/\(self.maxQuestions)"
            let choices = allQuestions.choices[qN]
            // display the question
            self.questionLabel.text =  allQuestions.list[qN]
            self.choice1Button.setTitle(choices[0], for: .normal)
            self.choice2Button.setTitle(choices[1], for: .normal)
            self.choice3Button.setTitle(choices[2], for: .normal)
            self.choice4Button.setTitle(choices[3], for: .normal)
            self.choice5Button.setTitle(choices[4], for: .normal)
            self.choice6Button.setTitle(choices[5], for: .normal)

        } else {
            // segue to final tally if
            // qestionNumber >= maxQuestions then we are finished
            for currentScore in answers.keys {
                if answers[currentScore]! > answers[finalStyle]! {
                    finalStyle = currentScore
                }
            }
            
            //dismiss(animated: true, completion: nil)
            
            performSegue(withIdentifier: "goToResult", sender: nil)
            
        }
    }
    
    @IBAction func choiceClicked(sender: UIButton) {
        let qN = questionNumber;
        let currentKey = allQuestions.keys[qN];
        let tag = sender.tag;
        let style = currentKey[tag];
        self.answers[style] = self.answers[style]! + 1;
        
        questionNumber = questionNumber + 1;
        updateView();
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.leaderStyle = leaderStyles.getStyle(finalStyle)
        }
    }
}
