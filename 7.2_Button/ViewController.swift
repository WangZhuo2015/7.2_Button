//
//  ViewController.swift
//  7.2_Button
//
//  Created by 王卓 on 15/4/13.
//  Copyright (c) 2015年 王卓. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        var button:UIButton=UIButton.buttonWithType(UIButtonType.ContactAdd) as UIButton
        button.frame=CGRectMake(10,150,300,50)
        
        button.setTitle("Normal", forState: UIControlState.Normal)
        button.setTitleColor(UIColor.whiteColor(), forState: .Normal)//此参数是结构体，可以省略UIControlState
        button.setTitleShadowColor(UIColor.grayColor(), forState:UIControlState.Normal)
        button.setTitle("Highlighted", forState: UIControlState.Highlighted)
        button.setTitle("Disabled", forState: UIControlState.Disabled)
        button.backgroundColor=UIColor.blackColor()
        self.view.addSubview(button)
        
        
        
        
        
        var buttonIMG:UIButton=UIButton.buttonWithType(UIButtonType.Custom) as UIButton
        buttonIMG.frame=CGRectMake(10, 70, 300, 50)
        buttonIMG.setImage(UIImage(named:"Image"), forState: UIControlState.Normal)
        buttonIMG.setTitle("buttonIMG", forState: .Normal)
        buttonIMG.setTitleColor(UIColor.blueColor(), forState: .Normal)
        buttonIMG.adjustsImageWhenHighlighted=false
        buttonIMG.setImage(UIImage(named:"Image-1"), forState: UIControlState.Highlighted)
        self.view.addSubview(buttonIMG)
        
        button.addTarget(self,action: Selector("tapped:"), forControlEvents:UIControlEvents.TouchUpInside)

        }
        
        func tapped(button:UIButton){
            println(button.titleForState(.Normal))
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

