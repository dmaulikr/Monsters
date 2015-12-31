//
//  Orc.swift
//  Monsters
//
//  Created by Lawrence Johnson on 12/30/15.
//  Copyright © 2015 Lawrence Johnson. All rights reserved.
//

import Foundation

class Orc: Character {
    
    private var HIT_MIN = 0
    private var HIT_MAX = 49
    
    private var CRIT_MIN = 95
    private var CRIT_MAX = 99
    
    convenience init(hp: Int, attPow: Int){
        self.init(name: "Orc", hp: hp, attPow: attPow)
    }
    
    override func atemptAttack(attPow: Int) -> Bool {
        let rand = randomNum(100)
        
        if rand >= CRIT_MIN && rand <= CRIT_MAX {
            return super.atemptAttack(attPow * 2)
        }
        else if rand >= HIT_MIN && rand <= HIT_MAX {
            return super.atemptAttack(attPow)
        }
        
        return false
    }
    
}