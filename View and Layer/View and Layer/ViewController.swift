//
//  ViewController.swift
//  View and Layer
//
//  Created by Mazharul Huq on 1/7/19.
//  Copyright © 2019 Mazharul Huq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redView: UIView!
    @IBOutlet var cornerRadiusLabel: UILabel!
    @IBOutlet var borderWidthLabel: UILabel!
    
    var layer:CALayer{
        return self.redView.layer
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.layer.borderColor = UIColor.green.cgColor
    }
    @IBAction func changeBackgroundColorOn(_ sender: Any) {
        let sw = sender as! UISwitch
        if sw.isOn {
            self.layer.backgroundColor = UIColor.blue.cgColor
        }
        else{
            self.layer.backgroundColor = UIColor.red.cgColor
        }
    }
    
    @IBAction func displayContentOn(_ sender: Any) {
        let sw = sender as! UISwitch
        if sw.isOn {
            self.layer.contents = UIImage(named: "star")?.cgImage
        }
        else{
            self.layer.contents = nil
        }
    }
    
    @IBAction func changeBorderWidth(_ sender: Any) {
        let slider = sender as! UISlider
        self.layer.borderWidth = CGFloat(slider.value)
        self.borderWidthLabel.text = String(format: "%0.2f", slider.value)
    }
    
    @IBAction func changeCornerRadius(_ sender: Any) {
        let slider = sender as! UISlider
        self.layer.cornerRadius = CGFloat(slider.value)
        self.cornerRadiusLabel.text = String(format: "%0.2f", slider.value)
    }
}




