//
//  ATSurveyTask.swift
//  CRP_App
//
//  Created by Neha Nagabothu on 3/2/20.
//  Copyright © 2020 Neha Nagabothu. All rights reserved.
//

import Foundation
import ResearchKit

class ATSurveyTask: ORKTaskFactory {
    func makeTask() -> ORKTask {
        
        let instructions = ORKInstructionStep(identifier: "surveyInsteuctions")
        instructions.title = "We'll ask you a few questions"
        instructions.text = "Here are the instructions on how to answer them"
        
        let heightQuestion = ORKQuestionStep(identifier: "heightQuestionStep",
                                             title: "Your Height",
                                             question: "How tall are  you",
                                             answer: ORKHeightAnswerFormat(measurementSystem: .metric))
        
        let happyQuestion = ORKQuestionStep(identifier: "happyQuestionStep",
                                            title: "Stay Positive",
                                            question: "Are you happy about that?",
                                            answer: ORKTextChoiceAnswerFormat(style: .singleChoice,
                                                                              textChoices: [
                                                                                ORKTextChoice(text: "Yes", value: NSNumber(integerLiteral: 0)),
                                                                                ORKTextChoice(text: "Not really", value: NSNumber(integerLiteral: 1))]))
        
        let explanationStep = ORKQuestionStep(identifier: "explanationStep",
                                              title: "Why?",
                                              question: "Explain why in a few words...",
                                              answer: ORKTextAnswerFormat(maxLength: 288, multiLine: true))
        
        let completion = ORKCompletionStep(identifier: "completionStep",
                                           title: "Thanks",
                                           text: "Thanks for taking part in this really important survey.")
        
        return ORKOrderedTask.init(identifier: "surveyTaskID",
                                   steps: [
                                    instructions,
                                    heightQuestion,
                                    happyQuestion,
                                    explanationStep,
                                    completion])
    }
}

extension ORKTextAnswerFormat {
    public convenience init(maxLength: Int, multiLine: Bool) {
        self.init(maximumLength: maxLength)
        self.multipleLines = multiLine
    }
}

extension ORKCompletionStep {
    public convenience init(identifier: String, title: String, text: String) {
        self.init(identifier: identifier)
        self.title = title
        self.text = text
    }
}
