//
//  ViewController.swift
//  user interface
//
//  Created by Asama Hayder on 07/04/2020.
//  Copyright © 2020 Asama Hayder. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    @IBOutlet weak var leftScoreLable: UILabel!
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    
    @IBAction func dealTapped(_ sender: Any) {
        
        let leftNumber = Int.random(in: 2...14)
        //print(leftNumber)
        
        let rightNumber = Int.random(in: 2...14)
        //print (rightNumber)
        
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        if leftNumber > rightNumber {
            //left wins
            leftScore += 1
            leftScoreLable.text = String(leftScore)
            
        }else if leftNumber < rightNumber{
            //right wins
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }else{
            //they are equal
        }
        
    }
    
}

