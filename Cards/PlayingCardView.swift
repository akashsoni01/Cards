//
//  PlayingCardView.swift
//  Cards
//
//  Created by Akash Soni on 12/08/18.
//  Copyright © 2018 Akash Soni. All rights reserved.
//

import UIKit

class PlayingCardView: UIView {

    override func draw(_ rect: CGRect) {
//        if let context = UIGraphicsGetCurrentContext(){
//            context.addArc(center: CGPoint(x:bounds.midX, y: bounds.midY),
//                           radius: 100.0, startAngle: 0, endAngle: 2*CGFloat.pi, clockwise: false)
//            context.setLineWidth(5.0)
//            UIColor.red.setStroke()
//            UIColor.green.setFill()
//            context.strokePath()
//            context.fillPath()
//        }
        let path = UIBezierPath(arcCenter: CGPoint(x: bounds.midX, y: bounds.midY), radius: 100.0 , startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: false)
        path.lineWidth = (10.0)
        UIColor.red.setStroke()
        UIColor.green.setFill()
        path.stroke()
        path.fill()
    }

}
