//
//  ParseAccountRouter.swift
//  QCM_Manager
//
//  Created by Xavier De Koninck on 19/12/2015.
//  Copyright © 2015 LinkValue. All rights reserved.
//

import Foundation
import Parse
import ParseUI

class ParseAccountRouter : NSObject, AccountRouter, PFLogInViewControllerDelegate, PFSignUpViewControllerDelegate {
  
  var logInSuccess: AccountSuccess?
  var signUpSuccess: AccountSuccess?
  weak var parentViewController: UIViewController?
  
  override required init() {
    super.init()
  }
  
  func showLogInViewerFromVC(vc: UIViewController, success: AccountSuccess) {
    
    self.parentViewController = vc
    self.logInSuccess = success
    let logInController = ParseAccountLogInViewer()
    logInController.delegate = self
    vc.presentViewController(logInController, animated:true, completion: nil)
  }
  
  func showSignUpViewerFromVC(vc: UIViewController, success: AccountSuccess) {

    self.parentViewController = vc
    self.signUpSuccess = success
    let signUpController = ParseAccountSignUpViewer()
    signUpController.delegate = self
    vc.presentViewController(signUpController, animated: true, completion: nil)
  }
  
  // MARK: PFLogInViewControllerDelegate
  
  func logInViewController(logInController: PFLogInViewController, didLogInUser user: PFUser) {
    
    if let vc = self.parentViewController {
      vc.dismissViewControllerAnimated(true, completion: nil)
    }
    self.logInSuccess?(user)
  }
  
  // MARK: PFSignUpViewControllerDelegate
  
  func signUpViewController(signUpController: PFSignUpViewController, didSignUpUser user: PFUser) {

    if let vc = self.parentViewController {
      vc.dismissViewControllerAnimated(true, completion: nil)
    }
    self.signUpSuccess?(user)
  }
}