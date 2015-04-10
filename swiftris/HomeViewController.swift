//
//  HomeViewController.swift
//  swiftris
//
//  Created by RH Blanchfield on 4/9/15.
//  Copyright (c) 2015 artchiteq. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    var gameController: GameViewController!
    //var gamekit: GameKitHelper!
    
    @IBOutlet weak var classicModeButton: UIButton!
    @IBOutlet weak var timedModeButton: UIButton!
    //@IBOutlet weak var gameCenterButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //gamekit = GameKitHelper()
        //gamekit.authenticateLocalPlayer(self)
    }
    
    
    
    //@IBAction func gameCenterPreseed(sender: AnyObject) {
        //gamekit.showLeaderboardAndAchievement(true)
    //}
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        gameController = segue.destinationViewController as GameViewController
        
        switch (segue.identifier!) {
        case "classicMode":
            gameController.gameMode = .Classic;
        case "timedMode":
            gameController.gameMode = .Timed;
        default:
            println("No Identifiable Game Mode \(segue.identifier)")
        }
    }
}