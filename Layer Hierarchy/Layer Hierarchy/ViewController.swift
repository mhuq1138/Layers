//
//  ViewController.swift
//  Layer Hierarchy
//
//  Created by Mazharul Huq on 1/8/19.
//  Copyright © 2019 Mazharul Huq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var displayView: UIView!
    let layer1:CALayer = CALayer()
    let layer2:CALayer = CALayer()
    let layer3:CALayer = CALayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadLayers()
    }
    
    func loadLayers()
    {
        self.layer1.frame = CGRect(x: 10, y: 10, width: 150, height: 75)
        self.layer1.backgroundColor = UIColor.red.cgColor
        self.layer1.cornerRadius = 10.0;// Gives a rounded corner to layer
        displayView.layer.addSublayer(self.layer1)
        
        self.layer2.frame = CGRect(x: 20, y: 20, width: 150, height: 75)
        self.layer2.backgroundColor = UIColor.blue.cgColor
        displayView.layer.addSublayer(self.layer2)
        let iv = UIImageView(frame: CGRect(x: 5, y: 5, width: 50, height: 50))
        iv.image = UIImage(named: "star")
        self.layer2.addSublayer(iv.layer)
        self.layer3.frame = CGRect(x: 50, y: 50, width: 150, height: 75)
        self.layer3.backgroundColor = UIColor.green.cgColor
        self.layer3.cornerRadius = 5.0;// Gives a rounded corner to layer
        displayView.layer.addSublayer(self.layer3)
        
    }
    
    @IBAction func createHierarchyTapped(_ sender: Any) {
        self.layer2.removeFromSuperlayer()
        self.layer3.removeFromSuperlayer()
        self.layer2.addSublayer(self.layer3)
        self.layer1.addSublayer(self.layer2)
        
    }
    @IBAction func moveRedLayerTapped(_ sender: Any) {
        self.layer1.frame.origin.x += 30
    }
    
    @IBAction func changeHierarchyTapped(_ sender: Any) {
        self.layer2.removeFromSuperlayer()
        self.layer3.removeFromSuperlayer()
        self.layer3.addSublayer(self.layer2)
        self.layer1.addSublayer(self.layer3)
    }
    
    @IBAction func moveBlueLayerTapped(_ sender: Any) {
        self.layer2.frame.origin.x += 20
        self.layer2.frame.origin.y += 20
    }
    
    @IBAction func resetTapped(_ sender: Any) {
        self.layer1.removeFromSuperlayer()
        self.layer2.removeFromSuperlayer()
        self.layer3.removeFromSuperlayer()
        self.loadLayers()
    }
    
    
}


