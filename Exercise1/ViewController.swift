//
//  ViewController.swift
//  Exercise1
//
//  Created by Tommy Boy on 3/13/16.
//  Copyright © 2016 Tomboy Apps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redBomb: UIImageView!
    @IBOutlet weak var blueBomb: UIImageView!
    
    @IBOutlet weak var buttonRed: UIButton!
    @IBOutlet weak var buttonBlue: UIButton!
    
    private var blueBombShown = true
    private var redBombShown = true

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        blueBombShown = blueBomb.hidden
        redBombShown = redBomb.hidden
        setButtonTitles()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    private func setButtonTitles() {
        if blueBombShown {
            buttonBlue.setTitle("Show Blue Bomb",forState: UIControlState.Normal)
        } else {
            buttonBlue.setTitle("Hide Blue Bomb",forState: UIControlState.Normal)
        }
        
        if redBombShown {
            buttonRed.setTitle("Show Red Bomb",forState: UIControlState.Normal)
        } else {
            buttonRed.setTitle("Hide Red Bomb",forState: UIControlState.Normal)
        }
    }

    @IBAction func blueButtonAction(sender: AnyObject) {
        //Toggle Button State
        blueBomb.hidden = !blueBombShown
        blueBombShown = blueBomb.hidden
        setButtonTitles()
        
    }
    
    @IBAction func redButtonAction(sender: AnyObject) {
        //Toggle Button State
        redBomb.hidden = !redBombShown
        redBombShown = redBomb.hidden
        setButtonTitles()
        
    }

}

