//
//  Body.swift
//  PlaidApp
//
//  Created by Sherman Shi on 5/4/20.
//  Copyright © 2020 Sherman Shi. All rights reserved.
//

import Foundation

struct Body: Codable {
    var name: String
    var email: String
    var resume: String
    var phone: String
    var github: String
    var linkedin: String
    var location: String
    var languages: String
    var learn: String
    var repo: String
        
    init(name: String, email: String, resume: String, phone: String, github: String, linkedin: String, location: String, languages: String, learn: String, repo: String) {
        self.name = name
        self.email = email
        self.resume = resume
        self.phone = phone
        self.github = github
        self.linkedin = linkedin
        self.location = location
        self.languages = languages
        self.learn = learn
        self.repo = repo
    }
}
