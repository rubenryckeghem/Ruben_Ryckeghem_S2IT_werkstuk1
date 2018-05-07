//
//  item.swift
//  Ruben_Ryckeghem_S2IT_werkstuk1
//
//  Created by Ruben Ryckeghem on 7/05/18.
//  Copyright © 2018 Ruben Ryckeghem. All rights reserved.
//

import Foundation
class Item {
    var title:String
    var image:String
    
    init() {
        title = ""
        image = ""
    }
    
    init(title: String, image:String){
        self.title = title
        self.image = image
    }
}
