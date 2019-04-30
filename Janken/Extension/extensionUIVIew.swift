//
//  extensionUIVIew.swift
//  Janken
//
//  Created by kobayashi ikki on 2019/03/26.
//  Copyright © 2019 Ikki. All rights reserved.
//

import Foundation
import UIKit

extension UIView {

    func centering( width: CGFloat ) {
        self.frame.origin.x = (width - self.frame.size.width) / 2
    }
    func getPosition() -> CGPoint {
        return CGPoint(x: self.frame.origin.x, y: self.frame.origin.y )
    }
    func getWidth() -> CGFloat {
        return self.frame.size.width
    }
    func getHeight() -> CGFloat {
        return self.frame.size.height
    }
    func getLeft() -> CGFloat {
        return self.frame.origin.x
    }
    func getTop() -> CGFloat {
        return self.frame.origin.y
    }
    func getRight() -> CGFloat {
        return self.frame.origin.x + self.frame.size.width
    }
    func getBottom() -> CGFloat {
        return self.frame.origin.y + self.frame.size.height
    }
    func setPosition(_ pos: CGPoint ) {
        self.frame.origin = pos
    }
    func setX(_ setX: CGFloat) {
        self.frame.origin.x = setX
    }
    func setY(_ setY: CGFloat) {
        self.frame.origin.y = setY
    }
    func setWidth(_ width: CGFloat) {
        self.frame.size.width = width
    }
    func setHeight(_ height: CGFloat) {
        self.frame.size.height = height
    }
    func setBackgroundColor(_ color: UIColor) {
        self.backgroundColor = color
    }

    func setAutoLayout( width: CGFloat ) {
        let expansion = width / 375
        let option: CGFloat = 1
        setX( self.getLeft() * expansion )
        setY( self.getTop() * expansion * option)
        setWidth( self.getWidth() * expansion )
        setHeight( self.getHeight() * expansion )
    }
}
