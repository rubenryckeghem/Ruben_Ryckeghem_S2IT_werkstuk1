//
//  item.swift
//  Ruben_Ryckeghem_S2IT_werkstuk1
//
//  Created by Ruben Ryckeghem on 7/05/18.
//  Copyright © 2018 Ruben Ryckeghem. All rights reserved.
//

import Foundation
class Item {
    var voornaam:String
    var achternaam:String
    var image:String
    
    init() {
        voornaam = ""
        achternaam = ""
        image = ""
    }
    
    init(voornaam: String,achternaam:String, image:String){
        self.voornaam = voornaam
        self.achternaam = achternaam
        self.image = image
    }
}
