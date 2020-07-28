//
//  UserManager.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 27.07.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import Foundation
import Combine

final class UserManager: ObservableObject {
    
    @Published var isRegister: Bool {
        didSet {
            UserDefaults.standard.set(isRegister, forKey: "isRegister")
        }
    }
    
    var name: String {
        didSet {
            UserDefaults.standard.set(name, forKey: "name")
        }
    }
    
    init() {
        self.isRegister = UserDefaults.standard.object(forKey: "isRegister") as? Bool ?? false
        self.name = UserDefaults.standard.object(forKey: "name") as? String ?? "default name"
    }
    
//    init(name: String) {
//        self.name = name
//        self.isRegister = UserDefaults.standard.object(forKey: "isRegister") as? Bool ?? false
//    }
}
