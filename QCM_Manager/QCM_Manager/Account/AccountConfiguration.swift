//
//  AccountConfiguration.swift
//  QCM_Manager
//
//  Created by Xavier De Koninck on 19/12/2015.
//  Copyright © 2015 LinkValue. All rights reserved.
//

import Foundation
import Parse

struct AccountConfiguration {
  
  static let accountRouteurClass: AccountRouter.Type = ParseAccountRouter.self
  static let accountClass: Account.Type = PFUser.self
}