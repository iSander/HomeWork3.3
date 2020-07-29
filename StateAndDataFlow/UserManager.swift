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
        isRegister = UserDefaults.standard.bool(forKey: "isRegister")
        name = UserDefaults.standard.value(forKey: "name") as? String ?? ""
    }
    
}
