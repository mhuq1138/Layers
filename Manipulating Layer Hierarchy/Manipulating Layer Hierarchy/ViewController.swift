//
//  ViewController.swift
//  Manipulating Layer Hierarchy
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
    let layer4:CALayer = CALayer()
    let layer:CALayer = CALayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadLayers()
    }
    func loadLayers(){
        self.layer1.frame = CGRect(x: 20, y: 20, width: 100, height: 75)
        self.layer1.backgroundColor = UIColor.red.cgColor
        
        self.layer2.frame = CGRect(x: 40, y: 40, width: 100, height: 75)
        self.layer2.backgroundColor = UIColor.blue.cgColor
        
        self.layer3.frame = CGRect(x: 70, y: 70, width: 100, height: 75)
        self.layer3.backgroundColor = UIColor.green.cgColor
        
        self.layer4.frame = CGRect(x: 90, y: 90, width: 100, height: 75)
        self.layer4.backgroundColor = UIColor.brown.cgColor
        
        self.displayView.layer.sublayers = [self.layer1,self.layer2,self.layer3,self.layer4]
    }
    
    @IBAction func addSublayerTapped(_ sender: Any) {
        self.layer.frame = CGRect(x: 50, y: 50, width: 100, height: 75)
        self.layer.backgroundColor = UIColor.orange.cgColor
        self.displayView.layer.insertSublayer(self.layer, above: self.layer2)
    }
    
    @IBAction func replaceSublayerTapped(_ sender: Any) {
        if(self.displayView.layer.sublayers?.contains(self.layer2))!{
            self.displayView.layer.replaceSublayer(self.layer2, with: self.layer4)
        }
    }
    
    @IBAction func changezPositionTapped(_ sender: Any) {
        if self.layer2.zPosition == 0{
            self.layer2.zPosition = 1
        }
        else{
            self.layer2.zPosition = 0
        }
    }
    
    @IBAction func resetTapped(_ sender: Any) {
        self.displayView.layer.sublayers = nil
        self.loadLayers()
    }
    
}



