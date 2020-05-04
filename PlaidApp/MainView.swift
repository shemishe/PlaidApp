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
    
    /// NAME
    lazy var nameView: UIView = {
        let view = UIView()
        return view.textFieldContainerView(view: view, "Name", nameTextField)
    }()
    
    lazy var nameTextField: UITextField = {
        let tf                  = UITextField()
        return tf.textField(withPlaceholder: "The Best Name Ever")
    }()
    
    /// EMAIL
    lazy var emailView: UIView = {
        let view = UIView()
        return view.textFieldContainerView(view: view, "Email", emailTextField)
    }()
    
    lazy var emailTextField: UITextField = {
        let tf = UITextField()
        return tf.textField(withPlaceholder: "wowcoolemail@gmail.com")
    }()

    /// RESUME
    lazy var resumeView: UIView = {
        let view = UIView()
        return view.textFieldContainerView(view: view, "Resume", resumeTextField)
    }()
    
    lazy var resumeTextField: UITextField = {
        let tf = UITextField()
        return tf.textField(withPlaceholder: "Ready, set, resume!")
    }()
    
    /// PHONE
    lazy var phoneView: UIView = {
        let view = UIView()
        return view.textFieldContainerView(view: view, "Phone", phoneTextField)
    }()
    
    lazy var phoneTextField: UITextField = {
        let tf = UITextField()
        return tf.textField(withPlaceholder: "Hotling Bling")
    }()
    
    /// GITHUB
    lazy var githubView: UIView = {
        let view = UIView()
        return view.textFieldContainerView(view: view, "GitHub", githubTextField)
    }()
    
    lazy var githubTextField: UITextField = {
        let tf = UITextField()
        return tf.textField(withPlaceholder: "The Repository")
    }()
    
    /// LINKEDIN
    lazy var linkedInView: UIView = {
        let view = UIView()
        return view.textFieldContainerView(view: view, "LinkedIn", linkedInTextField)
    }()
    
    lazy var linkedInTextField: UITextField = {
        let tf = UITextField()
        return tf.textField(withPlaceholder: "Hit me with the link!")
    }()
    
    /// LOCATION
    lazy var locationView: UIView = {
        let view = UIView()
        return view.textFieldContainerView(view: view, "Location", locationTextField)
    }()
    
    lazy var locationTextField: UITextField = {
        let tf = UITextField()
        return tf.textField(withPlaceholder: "My GPS")
    }()
    
    /// LANGUAGES
    lazy var languagesView: UIView = {
        let view = UIView()
        return view.textFieldContainerView(view: view, "Languages", languagesTextField)
    }()
    
    lazy var languagesTextField: UITextField = {
        let tf = UITextField()
        return tf.textField(withPlaceholder: "Audentes fortuna iuvat")
    }()
    
    /// WANT TO LEARN NEXT
    lazy var learnView: UIView = {
        let view = UIView()
        return view.textFieldContainerView(view: view, "Want to learn next", learnTextField)
    }()
    
    lazy var learnTextField: UITextField = {
        let tf = UITextField()
        return tf.textField(withPlaceholder: "ABL--Always be learning")
    }()
    
    /// PLAIDAPP REPO
    lazy var repoView: UIView = {
        let view = UIView()
        return view.textFieldContainerView(view: view, "Repo to this App", repoTextField)
    }()
    
    lazy var repoTextField: UITextField = {
        let tf = UITextField()
        return tf.textField(withPlaceholder: "Show me the money!")
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
        nameView.anchorwithConstant(top: byShermanLabel.bottomAnchor, bottom: nil, leading: leadingAnchor, trailing: trailingAnchor, paddingTop: 20, paddingBottom: 0, paddingLeading: 15, paddingTrailing: 15, width: 0, height: 30)
    
        addSubview(emailView)
        emailView.anchorwithConstant(top: nameView.bottomAnchor, bottom: nil, leading: leadingAnchor, trailing: trailingAnchor, paddingTop: 15, paddingBottom: 0, paddingLeading: 15, paddingTrailing: 15, width: 0, height: 30)
        
        addSubview(resumeView)
        resumeView.anchorwithConstant(top: emailView.bottomAnchor, bottom: nil, leading: leadingAnchor, trailing: trailingAnchor, paddingTop: 15, paddingBottom: 0, paddingLeading: 15, paddingTrailing: 15, width: 0, height: 30)
        
        addSubview(phoneView)
        phoneView.anchorwithConstant(top: resumeView.bottomAnchor, bottom: nil, leading: leadingAnchor, trailing: trailingAnchor, paddingTop: 15, paddingBottom: 0, paddingLeading: 15, paddingTrailing: 15, width: 0, height: 30)
        
        addSubview(githubView)
        githubView.anchorwithConstant(top: phoneView.bottomAnchor, bottom: nil, leading: leadingAnchor, trailing: trailingAnchor, paddingTop: 15, paddingBottom: 0, paddingLeading: 15, paddingTrailing: 15, width: 0, height: 30)
        
        addSubview(linkedInView)
        linkedInView.anchorwithConstant(top: githubView.bottomAnchor, bottom: nil, leading: leadingAnchor, trailing: trailingAnchor, paddingTop: 15, paddingBottom: 0, paddingLeading: 15, paddingTrailing: 15, width: 0, height: 30)
        
        addSubview(locationView)
        locationView.anchorwithConstant(top: linkedInView.bottomAnchor, bottom: nil, leading: leadingAnchor, trailing: trailingAnchor, paddingTop: 15, paddingBottom: 0, paddingLeading: 15, paddingTrailing: 15, width: 0, height: 30)
        
        addSubview(languagesView)
        languagesView.anchorwithConstant(top: locationView.bottomAnchor, bottom: nil, leading: leadingAnchor, trailing: trailingAnchor, paddingTop: 15, paddingBottom: 0, paddingLeading: 15, paddingTrailing: 15, width: 0, height: 30)
        
        addSubview(learnView)
        learnView.anchorwithConstant(top: languagesView.bottomAnchor, bottom: nil, leading: leadingAnchor, trailing: trailingAnchor, paddingTop: 15, paddingBottom: 0, paddingLeading: 15, paddingTrailing: 15, width: 0, height: 40)
        
        addSubview(repoView)
        repoView.anchorwithConstant(top: learnView.bottomAnchor, bottom: nil, leading: leadingAnchor, trailing: trailingAnchor, paddingTop: 15, paddingBottom: 0, paddingLeading: 15, paddingTrailing: 15, width: 0, height: 40)
        
        addSubview(postButton)
        postButton.centerX(inView: self)
        postButton.anchorwithConstant(top: nil, bottom: safeAreaLayoutGuide.bottomAnchor, leading: nil, trailing: nil, paddingTop: 0, paddingBottom: 25, paddingLeading: 0, paddingTrailing: 0, width: 100, height: 0)
    }
}
