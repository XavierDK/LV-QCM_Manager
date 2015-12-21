//
//  AccountRouter.swift
//  QCM_Manager
//
//  Created by Xavier De Koninck on 19/12/2015.
//  Copyright © 2015 LinkValue. All rights reserved.
//

import Foundation
import UIKit

typealias AccountSuccess = ((Account) -> ())

protocol AccountRouter {
  
  init()
  
  func showLogInViewerFromVC(vc: UIViewController, success: AccountSuccess)
  func showSignUpViewerFromVC(vc: UIViewController, success: AccountSuccess)
}