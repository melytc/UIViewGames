//
//  ViewController.swift
//  UIViewGame
//
//  Created by alumno on 22/08/16.
//  Copyright © 2016 alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slPacman: UISlider!
    @IBOutlet weak var imaGhost: UIImageView!
    @IBOutlet weak var viewPacman: UIView!
    @IBOutlet weak var pvLine: UIProgressView!
    @IBOutlet weak var stepModifyLine: UIStepper!
    @IBOutlet weak var viewColors: UIView!
    @IBOutlet weak var segColor: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func progressBarMove(sender: UIStepper) {
        pvLine.setProgress(Float(stepModifyLine.value/10), animated: true)
    }
    
    @IBAction func moveGhost(sender: UISlider) {
        let coordX = slPacman.value * Float(viewPacman.frame.size.width - 50)
        imaGhost.frame.origin.x = CGFloat(coordX)
    }
    
    @IBAction func segcColors(sender: UISegmentedControl) {
        switch segColor.selectedSegmentIndex{
        case 0:
            viewColors.backgroundColor = UIColor.init(colorLiteralRed: (97/255), green: (208/255), blue: (242/255), alpha: 1)
        case 1:
            viewColors.backgroundColor = UIColor.init(colorLiteralRed: (203/255), green: (97/255), blue: (242/255), alpha: 1)
        default:
            break
        }
        
    }
}

