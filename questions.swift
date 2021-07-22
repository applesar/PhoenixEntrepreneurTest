//
//  questions.swift
//  PhoenixEntrepreneurTest
//
//  Created by admin on 2021-07-21.
//
/*
 [
 ["Make it on your own", 
 "Use it as an opportunity to train a subordinate", 
 "Delegate it to an appropriate team member", 
 "Consult your subordinates for their expertise", 
 "Try to help everyone get behind your idea for moving forward", 
 "First question how the decision will affect tasks at hand"],
["Seek to understand the circumstances that led to the action", 
 "Help your employee understand how they could improve next time", 
 "Let them know their action has a negative consequence", 
 "Calmly explain to your subordinate what the best course of action was", 
 "Investigate how the action will impact larger projects", 
 "Tend to ignore it—it will work itself out"],
 ["You believe in a “let it lie” policy and know a hands-off approach is best", 
 B. You pride yourself on being a great listener and communicator 
 C. You’re personally invested in the success of your individual employees 
 D. You like to have a hand in everything and need to have the final say 
 E. You only hire all-stars. You’re pretty sure they’re all smarter than you and that’s a-okay 
 F. You’re all about goals, deadlines, and doing what it takes to get the job done
 4. WHEN SOMEONE DOES SOMETHING THAT PLEASES YOU, YOU:
 A. Listen to what they thought went well and congratulate them 
 B. Are ready to move on to the next job 
 C. Hold off on congratulating them and let your incentive structure speak for itself 
 D. Reinforce the behavior through acknowledgment and encouragement 
 E. Let them know that their contribution is important to the team 
 F. Tend to not acknowledge behavior, good or bad
 5. WHEN IT COMES TO YOUR EMPLOYEES, YOU FEEL THAT:
 A. As long as they’re getting the job done, you’re happy 
 B. They must be held to the highest standard 
 C. They know what’s best for the organization 
 D. Each has an opportunity to grow personally and professionally within their role 
 E. Their input is extremely important to the organization’s success 
 F. They can be persuaded to see your side, if needed
 Leadership Assessment 8 Questions
 6. YOUR PERFECT DAY IS A DAY:
 A. You get to help someone realize their professional goals 
 B. You get to work as part of the team and collect input from others 
 C. Everyone does their job correctly 
 D. You get to spend conversing with others 
 E. You don’t have to intervene with anyone’s work 
 F. A big project crosses the finish line
 7. IF YOU HAD TO CHOOSE ONE PHRASE TO SUMMARIZE YOUR ORGANIZATIONAL
 CULTURE, YOU’D SAY:
 A. Open and communal 
 B. Warm and inviting 
 C. Unrestrained and empowered 
 D. Connected and family-oriented 
 E. Results-driven and process-oriented 
 F. Orderly and efficient
 8. IF YOU HAD TO CHOOSE ONE ROLE MODEL FROM THOSE BELOW, IT WOULD BE:
 A. Howard Schult, CEO of Starbucks 
 B. Indra Nooyi, CEO of PepsiCo 
 C. Ridley Scott, film director 
 D. Bill Gates, co-founder of Microsoft and the Bill and Melinda Gates Foundation 
 E. Ronald Reagan, former president of the United States 
 F. Warren Buffet, business mogul and philanthropist
 */


import Foundation
// put questions in an array
let questions = ["WHEN YOU NEED TO MAKE A DECISION, YOU TYPICALLY:",
                 "WHEN A SUBORDINATE TAKES AN ACTION THAT IS LESS THAN SATISFACTORY, YOU:",
                 "WHICH OF THESE STATEMENTS RINGS THE MOST TRUE FOR YOU?",
                 "WHEN SOMEONE DOES SOMETHING THAT PLEASES YOU, YOU:",
                 "WHEN IT COMES TO YOUR EMPLOYEES, YOU FEEL THAT:",
                 "YOUR PERFECT DAY IS A DAY:",
                 "IF YOU HAD TO CHOOSE ONE PHRASE TO SUMMARIZE YOUR ORGANIZATIONAL",
                 "IF YOU HAD TO CHOOSE ONE ROLE MODEL FROM THOSE BELOW, IT WOULD BE:"
                 ]
// choices array of array of String
let choicesArray = [["Make it on your own",
    "Use it as an opportunity to train a subordinate",
    "Delegate it to an appropriate team member",
    "Consult your subordinates for their expertise",
    "Try to help everyone get behind your idea for moving forward",
    "First question how the decision will affect tasks at hand"],
               ["Seek to understand the circumstances that led to the action",
     "Help your employee understand how they could improve next time",
     "Let them know their action has a negative consequence",
    "Calmly explain to your subordinate what the best course of action was",
    "Investigate how the action will impact larger projects",
    "Tend to ignore it—it will work itself out"],
               ["You believe in a “let it lie” policy and know a hands-off approach is best",
     "You pride yourself on being a great listener and communicator",
     "You’re personally invested in the success of your individual employees",
     "You like to have a hand in everything and need to have the final say",
     "You only hire all-stars. You’re pretty sure they’re all smarter than you and that’s a-okay",
    "You’re all about goals, deadlines, and doing what it takes to get the job done"],
               ["Listen to what they thought went well and congratulate them",
     "Are ready to move on to the next job",
     "Hold off on congratulating them and let your incentive structure speak for itself",
     "Reinforce the behavior through acknowledgment and encouragement",
     "Let them know that their contribution is important to the team",
    "Tend to not acknowledge behavior, good or bad"],
               ["As long as they’re getting the job done, you’re happy",
     "They must be held to the highest standard",
     "They know what’s best for the organization",
     "Each has an opportunity to grow personally and professionally within their role",
     "Their input is extremely important to the organization’s success",
    "They can be persuaded to see your side, if needed"],
               ["You get to help someone realize their professional goals",
     "You get to work as part of the team and collect input from others",
     "Everyone does their job correctly",
     "You get to spend conversing with others",
     "You don’t have to intervene with anyone’s work",
    "A big project crosses the finish line"],
               ["Open and communal",
     "Warm and inviting",
     "Unrestrained and empowered",
     "Connected and family-oriented",
     "Results-driven and process-oriented",
    "Orderly and efficient"],
               ["Howard Schult, CEO of Starbucks",
     "Indra Nooyi, CEO of PepsiCo",
     "Ridley Scott, film director",
     "Bill Gates, co-founder of Microsoft and the Bill and Melinda Gates Foundation",
     "Ronald Reagan, former president of the United States",
    "Warren Buffet, business mogul and philanthropist"]]

// put answer key in an array
// G = hammer, C = coffee, H = kamay, S = scale, F = face, P = pencil
enum LeadershipStyle: String {
    case G = "gavel"
    case C = "coffee"
    case H = "hand"
    case S = "scales"
    case F = "face"
    case P = "pencil"
}

let answers:  [[LeadershipStyle]] = [
    [.G,.C,.H,.S,.F,.P],
    [.S,.C,.G,.F,.P,.H],
    [.H,.F,.C,.G,.S,.P],
    [.F,.P,.G,.C,.S,.H],
    [.P,.G,.H,.C,.S,.F],
    [.C,.S,.G,.F,.H,.P],
    [.S,.F,.H,.C,.P,.G],
    [.C,.S,.G,.P,.F,.H]
]

class Questions {
    var list:  [String]
    var choices:  [[String]]
    var keys: [[LeadershipStyle]]
    init() {
        self.list = questions;
        self.choices = choicesArray;
        self.keys = answers;
    }
}
