//
//  ViewController.swift
//  CurlAnimation
//
//  Created by 黄海燕 on 16/4/24.
//  Copyright © 2016年 huanghy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let rect = CGRectMake(50, 50, 200, 200)
        let imageView = UIImageView(frame:rect)
        let image = UIImage(named: "1.jpg")
        
        imageView.image = image
        //设置图像的标识值，以便后期对图像视图的调用
        imageView.tag = 1
        self.view.addSubview(imageView)
        //初始化一个按钮对象，当点击按钮是开始播放动画
        let button = UIButton(type:UIButtonType.System)
        button.frame = CGRectMake(50, 400, 220, 44)
        button.backgroundColor = UIColor.lightGrayColor()
        button.setTitle("tap", forState: UIControlState.Normal)
        //给按钮对象，绑定点击事件
       button.addTarget(self, action: #selector(ViewController.playAnimation), forControlEvents: UIControlEvents.TouchUpInside)
       
        self.view.addSubview(button)
        
    }
    
    func playAnimation()
    {
        //发出开始视图动画的请求，标志着视图动画块的开始。在它和提交动画请求之间，可以定义动画的各种展现方式
        UIView.beginAnimations(nil, context: nil)
        //设置动画的播放速度为淡入淡出
        UIView.setAnimationCurve(.EaseInOut)
        //设置动画的时长为5秒
        UIView.setAnimationDuration(2)
        //设置动画从视图当前状态开始播放
        UIView.setAnimationBeginsFromCurrentState(true)
        let view = self.view.viewWithTag(1)
        //设置动画为卷曲动画
        UIView.setAnimationTransition(.CurlUp, forView: view!, cache: true)
        
        UIView.commitAnimations()
        
    }

}

