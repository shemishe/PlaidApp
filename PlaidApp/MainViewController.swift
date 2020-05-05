//
//  MainViewController.swift
//  PlaidApp
//
//  Created by Sherman Shi on 5/4/20.
//  Copyright © 2020 Sherman Shi. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    // MARK: - Properties
    
    var mainView: MainView { return self.view as! MainView }
    
    // MARK: - Initializiers
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.postButton.addTarget(self, action: #selector(postRequest), for: .touchUpInside)
    }
    
    override func loadView() {
        self.view = MainView(frame: UIScreen.main.bounds)
    }
    
    // MARK: - Helper Functions
    
    
    
    // MARK: - Selectors
    
    @objc func postRequest() {
        
        guard let nameValue = mainView.nameTextField.text else { return }
        guard let emailValue = mainView.emailTextField.text else { return }
        guard let resumeValue = mainView.resumeTextField.text else { return }
        guard let phoneValue = mainView.phoneTextField.text else { return }
        guard let githubValue = mainView.githubTextField.text else { return }
        guard let linkedinValue = mainView.linkedInTextField.text else { return }
        guard let locationValue = mainView.locationTextField.text else { return }
        guard let languagesValue = mainView.languagesTextField.text else { return }
        guard let learnValue = mainView.learnTextField.text else { return }
        guard let repoValue = mainView.repoTextField.text else { return }
        
        if nameValue.isEmpty || emailValue.isEmpty || resumeValue.isEmpty || phoneValue.isEmpty || githubValue.isEmpty || linkedinValue.isEmpty || locationValue.isEmpty || languagesValue.isEmpty || learnValue.isEmpty || repoValue.isEmpty {
            print("EMPTY")
        } else {
            postAPI(name: nameValue, email: emailValue, resume: resumeValue, phone: phoneValue, github: githubValue, linkedin: linkedinValue, location: locationValue, languages: languagesValue, learn: learnValue, repo: repoValue)
            print("NOT EMPTY")
        }
    }
    
    // MARK: - API
    
    func postAPI(name: String, email: String, resume: String, phone: String, github: String, linkedin: String, location: String, languages: String, learn: String, repo: String) {
        guard let url = URL(string: "https://postman-echo.com/post") else { return }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let body: [String: Any] = ["name": name,
                                   "email": email,
                                   "resume": resume,
                                   "phone": phone,
                                   "github": github,
                                   "linkedin": linkedin,
                                   "location": location,
                                   "languages": languages,
                                   "learn": learn,
                                   "repo": repo]
            
        do {
            request.httpBody = try JSONSerialization.data(withJSONObject: body, options: [])
        } catch let error {
            print("Could not parse body into JSON.", error)
        }
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let error = error {
                print("An error occured.", error)
                return
            }
            
            if let response = response {
                print("This is the response!", response)
            }
            
            if let data = data {
                do {
                    if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                        print("json:", json)
                    }
                } catch let error {
                    print("Could not parse data into JSON.", error)
                }
            }
        }.resume()
    }
}
