//
//  ViewController.swift
//  Monsters
//
//  Created by Lawrence Johnson on 12/30/15.
//  Copyright © 2015 Lawrence Johnson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var p1Lbl: UILabel!
    @IBOutlet weak var p2Lbl: UILabel!
    
    @IBOutlet weak var printLbl: UILabel!
    
    @IBOutlet weak var p1AttBtn: UIButton!
    @IBOutlet weak var p2AttBtn: UIButton!
    
    var player1: Character!
    var player2: Character!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player1 = Solider(hp: 200, attPow: 10)
        player2 = Orc(hp: 100, attPow: 20)
        
        p1Lbl.text = "\(player1.hp) HP"
        p2Lbl.text = "\(player2.hp) HP"
    }
    
    @IBAction func onP1AttBtn(sender: AnyObject) {
        if player2.atemptAttack(player1.attPow) {
            printLbl.text = "Attacked \(player2.name) for \(player1.attPow) HP"
            p2Lbl.text = "\(player2.hp) HP"
            p2AttBtn.hidden = true
            NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: "unhideAttackBtnP2", userInfo: nil, repeats: false)
        } else {
            printLbl.text = "Failed Attack!!!!!"
        }
        
        if !player2.isAlive() {
            p2Lbl.text = ""
            printLbl.text = "Killed \(player2.name)"
        }
    }
    
    @IBAction func onP2AttBtn(sender: AnyObject) {
        if player1.atemptAttack(player2.attPow) {
            printLbl.text = "Attacked \(player1.name) for \(player2.attPow) HP"
            p1Lbl.text = "\(player1.hp) HP"
            p1AttBtn.hidden = true
            NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: "unhideAttackBtnP1", userInfo: nil, repeats: false)
        } else {
            printLbl.text = "Failed Attack!!!!!"
        }
        
        if !player1.isAlive() {
            p1Lbl.text = ""
            printLbl.text = "Killed \(player1.name)"
        }
    }
    
    func unhideAttackBtnP1() {
            p1AttBtn.hidden = false
    }
    func unhideAttackBtnP2() {
        p2AttBtn.hidden = false
    }
}

