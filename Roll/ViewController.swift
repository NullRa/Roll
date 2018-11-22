//
//  ViewController.swift
//  Roll
//
//  Created by Jay on 2018/9/4.
//  Copyright © 2018年 Radiance Team. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    let array = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var dice1ImageView: UIImageView!
    @IBOutlet weak var dice2ImageView: UIImageView!
    
    @IBAction func rollAction(_ sender: UIButton) {
        updateDiceImage()
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImage()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func updateDiceImage(){
        randomDiceIndex1 = Int(arc4random_uniform(UInt32(array.count)))
        //print(randomDiceIndex1)
        randomDiceIndex2 = Int(arc4random_uniform(UInt32(array.count)))
        
        dice1ImageView.image = UIImage(named: array[randomDiceIndex1])
        dice2ImageView.image = UIImage(named: array[randomDiceIndex2])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == UIEvent.EventSubtype.motionShake{
            updateDiceImage()
        }
    }
}

