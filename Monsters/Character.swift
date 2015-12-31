//
//  Character.swift
//  Monsters
//
//  Created by Lawrence Johnson on 12/30/15.
//  Copyright © 2015 Lawrence Johnson. All rights reserved.
//

import Foundation

class Character {
    private var _hp = 100
    
    var hp: Int {
        get {
            return _hp
        }
        set {
            _hp = newValue
        }
    }
    
    private var _MAXATTPOW = 10
    
    var attPow: Int {
        get {
            return _MAXATTPOW
        }
    }
    
    private var _name = "Stinky Joe"
    
    var name: String {
        get {
            return _name
        }
    }
    
    init(name: String, hp: Int, attPow: Int) {
        self._name = name
        self._hp = hp
        self._MAXATTPOW = attPow
    }
    
    func atemptAttack(attPow: Int) -> Bool {
        _hp -= attPow
        return true
    }
    
    func isAlive() -> Bool {
        if _hp <= 0 {
            return false
        }
        
        return true
    }
    
    func randomNum(base: Int) -> Int {
        let num: UInt32 = UInt32(base)
        let numInt: Int = Int(arc4random_uniform(num))
        print(numInt)
        return numInt
    }
}