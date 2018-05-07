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
    var straat:String
    var huisnummer:String
    var postcode:String
    var gemeente:String
    var image:String
    
    init() {
        voornaam = ""
        achternaam = ""
        straat = ""
        huisnummer = ""
        gemeente = ""
        postcode = ""
        image = ""
    }
    
    init(voornaam: String,achternaam:String,straat:String,huisnummer:String,gemeente:String,postcode:String, image:String){
        self.voornaam = voornaam
        self.achternaam = achternaam
        self.straat = straat
        self.gemeente = gemeente
        self.huisnummer = huisnummer
        self.postcode = postcode
        self.image = image
    }
}
