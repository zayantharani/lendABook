//
//  Core.swift
//  LendABook
//
//  Created by Zayan Tharani on 21/08/2020.
//  Copyright © 2020 folio3. All rights reserved.
//

import Foundation

class Core {
    static let shared = Core()
    
    func isNewUser() -> Bool {
        return !UserDefaults.standard.bool(forKey: K.StorageKeys.isNewUser)
    }
    
    func newUserToOld() {
        UserDefaults.standard.set(true, forKey: K.StorageKeys.isNewUser)
    }
}
