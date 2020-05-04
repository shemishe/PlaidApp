//
//  UIKitExtensions.swift
//  PlaidApp
//
//  Created by Sherman Shi on 5/4/20.
//  Copyright © 2020 Sherman Shi. All rights reserved.
//

import UIKit

extension UIView {
    
    func centerXY(inView view: UIView) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        self.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    func centerX(inView view: UIView) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    func centerY(inView view: UIView) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    func anchorwithConstant(top: NSLayoutYAxisAnchor?, bottom: NSLayoutYAxisAnchor?, leading: NSLayoutXAxisAnchor?, trailing: NSLayoutXAxisAnchor?, paddingTop: CGFloat, paddingBottom: CGFloat, paddingLeading: CGFloat, paddingTrailing: CGFloat, width: CGFloat, height: CGFloat) {
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: -paddingBottom).isActive = true
        }
        if let leading = leading {
            leadingAnchor.constraint(equalTo: leading, constant: paddingLeading).isActive = true
        }
        if let trailing = trailing {
            trailingAnchor.constraint(equalTo: trailing, constant: -paddingTrailing).isActive = true
        }
        if width != 0 {
            widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        if height != 0 {
            heightAnchor.constraint(equalToConstant: height).isActive = true
        }
    }
}

extension UIView {
    func textFieldContainerView(view: UIView, _ string: String, _ textField: UITextField) -> UIView {
        view.backgroundColor = .clear
        
        let label = UILabel()
        label.text = string
        view.addSubview(label)
        label.anchorwithConstant(top: nil, bottom: nil, leading: view.leadingAnchor, trailing: nil, paddingTop: 0, paddingBottom: 0, paddingLeading: 8, paddingTrailing: 0, width: 50, height: 24)
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        view.addSubview(textField)
        textField.anchorwithConstant(top: nil, bottom: nil, leading: label.trailingAnchor, trailing: view.trailingAnchor, paddingTop: 0, paddingBottom: 0, paddingLeading: 12, paddingTrailing: 8, width: 0, height: 0)
        textField.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        let separatorView = UIView()
        separatorView.backgroundColor = UIColor.black
        separatorView.alpha = 0.87
        view.addSubview(separatorView)
        separatorView.anchorwithConstant(top: nil, bottom: textField.bottomAnchor, leading: textField.leadingAnchor, trailing: textField.trailingAnchor, paddingTop: 0, paddingBottom: 0, paddingLeading: 0, paddingTrailing: 0, width: 0, height: 0.75)

        return view
    }
}
