//
//  Account.swift
//  QCM_Manager
//
//  Created by Xavier De Koninck on 19/12/2015.
//  Copyright © 2015 LinkValue. All rights reserved.
//

import Foundation

protocol Account {
  
  static func currentUser() -> Self?
  
  var username: String? {get set}
  var password: String? {get set}
  var email: String? {get set}
}