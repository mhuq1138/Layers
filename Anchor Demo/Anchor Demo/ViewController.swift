//
//  ViewController.swift
//  Anchor Demo
//
//  Created by Mazharul Huq on 1/8/19.
//  Copyright © 2019 Mazharul Huq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UIView!
    @IBOutlet weak var anchorX: UILabel!
    @IBOutlet weak var anchorY: UILabel!
    
    @IBOutlet var boundsSize: UILabel!
    
    var boundsDirection = 1
    var layer = CALayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        drawLayer()
    }
    
    func drawLayer(){
        layer.backgroundColor = UIColor(red: 0.3, green: 0.7, blue: 0.6, alpha: 1.0).cgColor
        layer.frame = CGRect(x: 100, y: 100, width: 50, height: 80)
        display.layer.addSublayer(layer)
        anchorX.text = String(format: "%0.2f", layer.anchorPoint.x)
        anchorY.text = String(format: "%0.2f", layer.anchorPoint.y)
    }
    
    @IBAction func anchorXChanged(_ sender: Any) {
        let slider = sender as! UISlider
        layer.anchorPoint.x = CGFloat(slider.value)
        anchorX.text = String(format: "%0.2f", layer.anchorPoint.x)
        layer.transform = CATransform3DIdentity
    }
    
    @IBAction func anchorYChanged(_ sender: Any) {
        let slider = sender as! UISlider
        layer.anchorPoint.y = CGFloat(slider.value)
        anchorY.text = String(format: "%0.2f", layer.anchorPoint.y)
        layer.transform = CATransform3DIdentity
    }
    
    @IBAction func changeBoundSize(_ sender: Any) {
        let size = layer.bounds.size
        if size.width == 120.0{
            boundsDirection = -1
        }
        if size.width == 50.0{
            boundsDirection = 1
        }
        let delta:CGFloat = 10.0*CGFloat(boundsDirection)
        layer.bounds.size = CGSize(width: layer.bounds.size.width + delta, height: layer.bounds.size.height + 2.0*delta)
        boundsSize.text = "Bounds Size: (\(layer.bounds.size.width), \(layer.bounds.size.height))"
        
    }
    
    
    @IBAction func rotateLayer(_ sender: Any) {
        layer.transform = CATransform3DMakeRotation(1.5, 0, 0, 1)
    }
    
}


