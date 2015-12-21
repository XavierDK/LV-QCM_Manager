//
//  Router.swift
//  QCM_Manager
//
//  Created by Xavier De Koninck on 20/12/2015.
//  Copyright © 2015 LinkValue. All rights reserved.
//

import Foundation
import UIKit

class QCMRouter {
  
  static let QCMMenuIdentifier = "QCMMenuViewer"
  
  static func showQCMMenuViewerFromVC(vc: UIViewController?) {

    if let vc = vc {
      let storyboard = UIStoryboard(name:"Main", bundle:nil)
      let menuVC = storyboard.instantiateViewControllerWithIdentifier(QCMRouter.QCMMenuIdentifier)
      vc.masterViewController?.pushViewController(menuVC, animated:false)
    }
  }
}