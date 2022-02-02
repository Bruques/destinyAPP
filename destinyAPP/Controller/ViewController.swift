//
//  ViewController.swift
//  destinyAPP
//
//  Created by Bruno Nascimento Marques on 01/02/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1: UIButton!
    @IBOutlet weak var choice2: UIButton!
    
    var storyBrain = StoryBrain()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func choiceButtonPressed(_ sender: UIButton) {
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        updateUI()
        
    }
    
    @IBAction func changeLanguage(_ sender: UISegmentedControl) {
        storyBrain.selectedLanguage(language: sender.selectedSegmentIndex)
        updateUI()
    }
    
    
    func updateUI() {
        storyLabel.text = storyBrain.translation[storyBrain.storyNumber].title
        choice1.setTitle(storyBrain.translation[storyBrain.storyNumber].choice1, for: .normal)
        choice2.setTitle(storyBrain.translation[storyBrain.storyNumber].choice2, for: .normal)
    }
    
    func updateUIPT() {
        
    }
    
}

