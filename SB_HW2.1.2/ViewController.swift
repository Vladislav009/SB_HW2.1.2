//
//  ViewController.swift
//  SB_HW2.1.2
//
//  Created by Vladislav Kulak on 06.07.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var middleView: UIView!
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var collectionView: UIStackView!
    @IBOutlet weak var actionButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topView.layer.cornerRadius = 100
        topView.alpha = 0.3
        middleView.layer.cornerRadius = 100
        middleView.alpha = 0.3
        bottomView.layer.cornerRadius = 100
        bottomView.alpha = 0.3
        actionButton.layer.cornerRadius = 10
        
    }

   
    @IBAction func actionButtonPressed() {
        actionButton.setTitle("Next", for: .normal)
      
        
        if topView.alpha < 1 && middleView.alpha < 1 {
            topView.alpha = 1
            bottomView.alpha = 0.3
        }else if topView.alpha == 1 && middleView.alpha < 1 && bottomView.alpha < 1 {
            topView.alpha = 0.3
            middleView.alpha = 1
        }else if middleView.alpha == 1 && bottomView.alpha < 1 {
            middleView.alpha = 0.3
            bottomView.alpha = 1
        }
        
    }
    
}

