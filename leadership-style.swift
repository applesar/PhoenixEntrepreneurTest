//
//  leadership-style.swift
//  PhoenixEntrepreneurTest
//
//  Created by admin on 2021-07-21.
//

import Foundation

/*
 1. If you scored mostly gavels,
 YOU ARE AN AUTOCRATIC LEADER, TRAVIS KALANICK (UBER)
 Autocratic leaders often make decisions on their own and feel they need to be involved in
 every step of a project. While they tend to get a bad rap, or might be considered a bit cold or
 harsh, this style also famously gets stuff done. Because you’re not taking time to consult with
 others along the way, decisions are made quickly and your organization often reaps the
 rewards from this.
 What you’re typically awesome at:
 • Moving everything along
 • Keeping a clear mind in stressful situations
 • Getting control of a group
 What you need to be careful with:
 • Overlooking the creative solutions and ideas of others
 • Negatively impacting company morale
 2. If you scored mostly scales,
 YOU ARE A DEMOCRATIC LEADER, LIKE MARK ZUCKERBERG (FACEBOOK)
 Democratic leaders often rely on their subordinates to help them make decisions. You invite
 the opinions of experts, the collective thoughts of the leadership team, and often, input from
 the greater organization. This style tends to unearth new ideas from others and helps
 employees feel like valued members of a team.
 What you’re typically awesome at:
 • Bringing the group together to discuss and making everyone feel heard
 • Weighing input and multiple perspectives before making a decision
 What you need to be careful with:
 • Taking too long to make a decision because you feel the need to reach a consensus
 • Appearing like you’re holding back your own thoughts and opinions
 Leadership Assessment 8 Questions
 3. If you scored mostly hands,
 YOU ARE A LAISSEZ-FAIRE LEADER, LIKE LARRY PAGE (GOOGLE)
 French for “allow to do,” laissez-faire is a government policy that involves allowing the free
 market to run its own course without the government’s interference. In terms of a leadership
 style, a laissez-faire leader often delegates tasks to others and grants them the authority to
 make their own decisions. Laissez-faire leaders, typically remaining uninvolved, equip
 subordinates with what they need and then hand over the reins. They are, however, still
 ultimately responsible for the collective actions of the team.
 What you’re typically awesome at:
 • Building a topnotch team of experts
 • Giving subordinates a sense of autonomy
 • Getting involved only when necessary
 What you need to be careful with:
 • Failing to assemble the right team—for example, this style is less effective when
 members can’t self-manage their time
 • Misdirected team members who end up focusing on the wrong areas due to a lack of
 guidance
 • Using your detached style as a scapegoat to avoid responsibility for the group’s actions
 4. If you scored mostly coffee cups,
 YOU ARE AN EMPLOYEE-CENTERED LEADER, JEFF BEZOS (AMAZON)
 Employee-centered leaders are committed to the success of each and every one of their team
 members. They often feel comfortable delegating tasks and are concerned with the personal
 and professional growth of their subordinates. They work hard to make sure employees feel
 they have a path to advance and achieve their individual goals. This type of leader tends to
 thrive at the executive level as their focus on relationship-building and morale propels the team
 forward.
 What you’re typically awesome at:
 • Helping people realize their fullest potential
 • Facilitating relationships across teams
 • Making employees feel respected, trusted, and valued
 What you need to be careful with:
 Leadership Assessment 8 Questions
 • Focusing on your grand vision so much that you miss opportunities to contribute at a
 granular level
 • Keeping key tasks and projects on your radar
 • Sugarcoating difficult news or information
 5. If you scored mostly pens,
 YOU ARE A JOB-CENTERED LEADER, LIKE BILL GATES (MICROSOFT)
 Task-centered leaders will make sure things get done. They’ve got their eye on the prize and
 are great at facilitating subordinates to complete a larger task. While a task-centered leader is
 detail-oriented and precise, they can also tend to keep tabs on their subordinates’ work and
 progress, and be pretty vocal about specifics and deadlines.
 What you’re typically awesome at:
 • Making lists, plans, and schedules
 • Helping the team understand their responsibility
 • Keeping everyone on track and ensuring quality work
 What you need to be careful with:
 • Causing employees to feel micromanaged or not trusted
 • Focusing on the nitty-gritty so much that you lose sight of the larger picture
 • Becoming autocratic
 If you scored mostly smiley faces,
 6. YOU ARE A CHARISMATIC VISIONARY LEADER, LIKE STEVE JOBS (APPLE)
 Charismatic leaders are captivating. They have no trouble gathering a room’s attention. They’re
 confident and have the ability to communicate in a way that can transform their subordinates’
 values and beliefs. They tend to gain their organization’s trust easily and inspire others to get
 on board with whatever decision is on the table.
 What you’re typically awesome at:
 • Getting everyone to understand your vision
 Leadership Assessment 8 Questions
 • Making people feel special and inspired to succeed
 • Taking initiative and confidently moving forward with decisions
 What you need to be careful with:
 • Your followers possibly losing steam and questioning your authenticity
 • Taking advantage of your “powers” to persuade someone to make a bad decision
 */
let lstyles:  [LeadershipStyle] = [.G, .S, .H, .C, .P, .F]
let leadershipStyle = [["gavels",
"YOU ARE AN AUTOCRATIC LEADER, TRAVIS KALANICK (UBER)", "Autocratic leaders often make decisions on their own and feel they need to be involved in every step of a project. While they tend to get a bad rap, or might be considered a bit cold or harsh, this style also famously gets stuff done. Because you’re not taking time to consult with others along the way, decisions are made quickly and your organization often reaps the rewards from this.","travis"],
["scales", "YOU ARE A DEMOCRATIC LEADER, LIKE MARK ZUCKERBERG (FACEBOOK)", "Democratic leaders often rely on their subordinates to help them make decisions. You invite the opinions of experts, the collective thoughts of the leadership team, and often, input from the greater organization. This style tends to unearth new ideas from others and helps employees feel like valued members of a team.","mark"],
["hands", "YOU ARE A LAISSEZ-FAIRE LEADER, LIKE LARRY PAGE (GOOGLE)", "French for “allow to do,” laissez-faire is a government policy that involves allowing the free market to run its own course without the government’s interference. In terms of a leadership style, a laissez-faire leader often delegates tasks to others and grants them the authority to make their own decisions. Laissez-faire leaders, typically remaining uninvolved, equip subordinates with what they need and then hand over the reins. They are, however, still ultimately responsible for the collective actions of the team.","larry"],
["coffee cups", "YOU ARE AN EMPLOYEE-CENTERED LEADER, JEFF BEZOS (AMAZON)", "Employee-centered leaders are committed to the success of each and every one of their team members. They often feel comfortable delegating tasks and are concerned with the personal and professional growth of their subordinates. They work hard to make sure employees feel they have a path to advance and achieve their individual goals. This type of leader tends to thrive at the executive level as their focus on relationship-building and morale propels the team forward.","jeff"],
["pens", "YOU ARE A JOB-CENTERED LEADER, LIKE BILL GATES (MICROSOFT)", "Task-centered leaders will make sure things get done. They’ve got their eye on the prize and are great at facilitating subordinates to complete a larger task. While a task-centered leader is detail-oriented and precise, they can also tend to keep tabs on their subordinates’ work and progress, and be pretty vocal about specifics and deadlines.","bill"],
["faces", "YOU ARE A CHARISMATIC VISIONARY LEADER, LIKE STEVE JOBS (APPLE)", "Charismatic leaders are captivating. They have no trouble gathering a room’s attention. They’re confident and have the ability to communicate in a way that can transform their subordinates’ values and beliefs. They tend to gain their organization’s trust easily and inspire others to get on board with whatever decision is on the table.","steve"]]

let awesome = [["Moving everything along",
"Keeping a clear mind in stressful situations",
"Getting control of a group"],
["Bringing the group together to discuss and making everyone feel heard",
"Weighing input and multiple perspectives before making a decision"],
["Building a topnotch team of experts",
"Giving subordinates a sense of autonomy",
"Getting involved only when necessary"],
["Helping people realize their fullest potential",
"Facilitating relationships across teams",
"Making employees feel respected, trusted, and valued"],
["Making lists, plans, and schedules",
"Helping the team understand their responsibility",
"Keeping everyone on track and ensuring quality work"],
["Getting everyone to understand your vision",
"Making people feel special and inspired to succeed",
"Taking initiative and confidently moving forward with decisions"]]

let pitfalls = [["Overlooking the creative solutions and ideas of others",
"Negatively impacting company morale"],
["Taking too long to make a decision because you feel the need to reach a consensus",
"Appearing like you’re holding back your own thoughts and opinions"],
["Failing to assemble the right team—for example, this style is less effective when members can’t self-manage their time",
"Misdirected team members who end up focusing on the wrong areas due to a lack of guidance",
"Using your detached style as a scapegoat to avoid responsibility for the group’s actions"],
["Focusing on your grand vision so much that you miss opportunities to contribute at a granular level",
"Keeping key tasks and projects on your radar",
"Sugarcoating difficult news or information"],
["Causing employees to feel micromanaged or not trusted",
"Focusing on the nitty-gritty so much that you lose sight of the larger picture",
"Becoming autocratic"],
["Your followers possibly losing steam and questioning your authenticity",
"Taking advantage of your “powers” to persuade someone to make a bad decision"]]

struct StylesStruct {
    var style: LeadershipStyle
    var similarity: String
    var description: String
    var imageName: String
    var awesomeness: [String]
    var pitfalls: [String]
    init(_ style: LeadershipStyle, _ similarity: String, _ description: String, _ awesome: [String], _ pitfalls: [String], _ image: String) {
        self.style = style
        self.similarity = similarity
        self.description = description
        self.awesomeness = awesome
        self.pitfalls = pitfalls
        self.imageName = image
    }
}

class LeadershipStyles {
    var list: [StylesStruct] = []
    init() {
        for (index, value) in lstyles.enumerated() {
            let current = leadershipStyle[index]
            self.append(style: value, sim: current[1], desc: current[2], awes: awesome[index], pits: pitfalls[index], image: current[3])
        }
    }
    
    func append(style: LeadershipStyle, sim: String, desc: String, awes: [String], pits: [String], image: String) {
        list.append(StylesStruct(style, sim, desc, awes, pits, image))
    }
    
    func getStyle(_ style: LeadershipStyle) -> StylesStruct {
        for myStyle in self.list {
            if myStyle.style == style {
               return myStyle
            }
        }
        return self.list[1]
    }
}
