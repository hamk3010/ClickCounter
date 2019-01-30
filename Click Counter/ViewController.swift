//
//  ViewController.swift
//  Click Counter
//
//  Created by Hamza Khan on 1/29/19.
//  Copyright © 2019 Hamza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    @IBOutlet var label: UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        label
        
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        view.addSubview(label)
        self.label = label

        //button
        let button = UIButton()
        button.frame = CGRect(x: 150, y:250, width:60, height: 60)
        button.setTitle("Click", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button)

        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControl.Event.touchUpInside)

        // decrementButton
        let decrementButton =  UIButton()
        decrementButton.frame = CGRect( x: 150, y: 350, width: 60, height: 60)
        decrementButton.setTitle("Click2", for:.normal )
        decrementButton.setTitleColor(UIColor.red, for: .normal)
        view.addSubview(decrementButton)
        decrementButton.addTarget(self, action: #selector(ViewController.decrementCount), for: UIControl.Event.touchUpInside )

        let power = UIButton()
        power.frame = CGRect( x: 150, y: 450, width: 60, height: 60)
        power.setTitle("Color", for: .normal)
        power.setTitleColor(UIColor.green , for: .normal )
        view.addSubview(power)
        power.addTarget(self, action: #selector(ViewController.changeColor), for: UIControl.Event.touchUpInside)
        
    }
    
    @IBAction func incrementCount(){
        self.count += 1
        self.label.text = "\(self.count)"
    }
    
    @objc func decrementCount(){
        self.count -= 1
        self.label.text = "\(self.count)"
    }
    
    @objc func changeColor(){
        if(self.count%2 == 0 ){
            self.view.backgroundColor = UIColor.orange
        }
        else{
            self.view.backgroundColor = UIColor.purple
        }
    }
    
}

