//
//  ItemViewController.swift
//  Ruben_Ryckeghem_S2IT_werkstuk1
//
//  Created by Ruben Ryckeghem on 7/05/18.
//  Copyright © 2018 Ruben Ryckeghem. All rights reserved.
//

import UIKit

class ItemViewController: UIViewController {
    var item = Item()
    
    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var myAn: UILabel!
    @IBOutlet weak var myImageView: UIImageView!
    
    @IBAction func transformImage(_ sender: UIPinchGestureRecognizer) {
        self.myImageView.transform =  CGAffineTransform(scaleX: sender.scale, y: sender.scale)
        
        
        
        print("ok")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.myLabel.text = item.voornaam
        self.myAn.text = item.achternaam
        self.myImageView.image = UIImage(named: item.image)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
