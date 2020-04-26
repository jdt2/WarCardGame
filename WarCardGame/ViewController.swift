//
//  ViewController.swift
//  WarCardGame
//
//  Created by Jesse Du on 4/26/20.
//  Copyright © 2020 Jesse Du. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    @IBAction func dealTapped(_ sender: Any) {
        
        // Randomize numbers
        let leftNumber = Int.random(in: 2...14);
        let rightNumber = Int.random(in: 2...14);
        
        // Update image views
        leftImageView.image = UIImage(named: "card\(leftNumber)");
        rightImageView.image = UIImage(named: "card\(rightNumber)");
        
        // Compare numbers
        if leftNumber > rightNumber {
            // Left wins
            leftScore += 1
            leftScoreLabel.text = String(leftScore);
        } else if leftNumber < rightNumber {
            // Right wins
            rightScore += 1
            rightScoreLabel.text = String(rightScore);
        } else {
            // Tie
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


}

