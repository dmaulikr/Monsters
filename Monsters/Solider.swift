//
//  Solider.swift
//  Monsters
//
//  Created by Lawrence Johnson on 12/30/15.
//  Copyright © 2015 Lawrence Johnson. All rights reserved.
//

import Foundation

class Solider: Character {
    
    private var HIT_MIN = 50
    private var HIT_MAX = 99
    
    private var CRIT_MIN = 48
    private var CRIT_MAX = 52
    
    convenience init(hp: Int, attPow: Int){
        self.init(name: "Solider", hp: hp, attPow: attPow)
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