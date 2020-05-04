//
//  MainView.swift
//  PlaidApp
//
//  Created by Sherman Shi on 5/4/20.
//  Copyright © 2020 Sherman Shi. All rights reserved.
//

import UIKit

class MainView: UIView {
    
    // MARK: - Properties
    
    /* HEADER */
    lazy var myAppLabel: UILabel = {
        let label           = UILabel()
        label.text          = "My Plaid App"
        label.textAlignment = .center
        label.font          = label.font.withSize(30)
        label.sizeToFit()
        return label
    }()
    
    lazy var byShermanLabel: UILabel = {
        let label           = UILabel()
        label.text          = "by Sherman Shi"
        label.textAlignment = .center
        label.font          = label.font.withSize(20)
        label.sizeToFit()
        return label
    }()
    
    /* TEXTFIELDS */
    lazy var nameView: UIView = {
        let view = UIView()
        return view.textFieldContainerView(view: view, "Name", nameTextField)
    }()
    
    lazy var nameTextField: UITextField = {
        let tf                  = UITextField()
        tf.isSecureTextEntry    = false
        tf.placeholder          = "Ex: The Best Name Ever"
        tf.borderStyle          = .none
        return tf
    }()
    
    lazy var emailView: UIView = {
        let view = UIView()
        return view.textFieldContainerView(view: view, "Email", emailTextField)
    }()
    
    lazy var emailTextField: UITextField = {
        let tf = UITextField()
        tf.isSecureTextEntry    = false
        tf.placeholder          = "Ex: wowcoolemail@gmail.com"
        tf.borderStyle          = .none
        return tf
    }()
    
    /* POST BUTTON */
    lazy var postButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("POST", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font     = UIFont.boldSystemFont(ofSize: 25)
        button.backgroundColor      = .black
        button.layer.cornerRadius   = 5
        return button
    }()
    
    // MARK: - Initializiers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureViewComponents()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Helper Functions
    
    func configureViewComponents() {
        backgroundColor = .white
        
        addSubview(myAppLabel)
        myAppLabel.centerX(inView: self)
        myAppLabel.anchorwithConstant(top: safeAreaLayoutGuide.topAnchor, bottom: nil, leading: nil, trailing: nil, paddingTop: 10, paddingBottom: 0, paddingLeading: 0, paddingTrailing: 0, width: 0, height: 0)
        
        addSubview(byShermanLabel)
        byShermanLabel.centerX(inView: self)
        byShermanLabel.anchorwithConstant(top: myAppLabel.bottomAnchor, bottom: nil, leading: nil, trailing: nil, paddingTop: 0, paddingBottom: 0, paddingLeading: 0, paddingTrailing: 0, width: 0, height: 0)
        
        addSubview(nameView)
        nameView.anchorwithConstant(top: byShermanLabel.bottomAnchor, bottom: nil, leading: leadingAnchor, trailing: trailingAnchor, paddingTop: 20, paddingBottom: 0, paddingLeading: 25, paddingTrailing: 25, width: 0, height: 30)
    
        addSubview(emailView)
        emailView.anchorwithConstant(top: nameView.bottomAnchor, bottom: nil, leading: leadingAnchor, trailing: trailingAnchor, paddingTop: 15, paddingBottom: 0, paddingLeading: 25, paddingTrailing: 25, width: 0, height: 30)
        
        addSubview(postButton)
        postButton.centerX(inView: self)
        postButton.anchorwithConstant(top: nil, bottom: safeAreaLayoutGuide.bottomAnchor, leading: nil, trailing: nil, paddingTop: 0, paddingBottom: 25, paddingLeading: 0, paddingTrailing: 0, width: 100, height: 0)
    }
}
