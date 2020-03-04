//
//  ActivitiesViewController.swift
//  MyStudyApp
//
//  Created by Vincent Tourraine on 2/8/16.
//  Copyright © 2016 Shazino. All rights reserved.
//

import UIKit
import ResearchKit


class ActivitiesViewController: UIViewController, ORKTaskViewControllerDelegate {
    
    override func viewDidLoad() {
    
        super.viewDidLoad()
        
    }
    
    func taskViewController(_ taskViewController: ORKTaskViewController,
                    didFinishWith reason: ORKTaskViewControllerFinishReason,
                                        error: Error?) {
        let myStep = ORKInstructionStep(identifier: "intro")
        myStep.title = "Welcome to ResearchKit"
        let task = ORKOrderedTask(identifier: "task", steps: [myStep])
        let taskViewController = ORKTaskViewController(task: task, taskRun: nil)
        taskViewController.delegate = self
        present(taskViewController, animated: true, completion: nil)
        let taskResult = taskViewController.result
        // You could do something with the result here.

        // Then, dismiss the task view controller.
        dismiss(animated: true, completion: nil)
    }
    
    
}

