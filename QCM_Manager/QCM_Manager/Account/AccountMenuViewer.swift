//
//  AccountMenuViewer.swift
//  QCM_Manager
//
//  Created by Xavier De Koninck on 19/12/2015.
//  Copyright © 2015 LinkValue. All rights reserved.
//

import Foundation
import UIKit
import RxSwift
import RxCocoa

class AccountMenuViewer : UITableViewController {
  
  private let disposeBag: DisposeBag = DisposeBag()
  
  private static let routeur : AccountRouter = AccountConfiguration.accountRouteurClass.init()
  
  private let accountMenuCell = "AccountMenuCell"
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.setupTableView()
  }
  
  override func viewWillAppear(animated: Bool) {
    self.checkConnected()
  }
  
  func checkConnected() {
    
    if AccountConfiguration.accountClass.currentUser() != nil {
      QCMRouter.showQCMMenuViewerFromVC(self)
    }
  }
  
  func setupTableView() {
    
    self.tableView.dataSource = nil
    self.tableView.delegate = nil
    
    let items = just([
      "Connexion",
      "Inscription"
      ])
    
    items
      .bindTo(tableView.rx_itemsWithCellIdentifier(accountMenuCell)) { (row, element, cell) in
        if let c = cell as? LabelCell {
          c.label?.text = element
        }
      }
      .addDisposableTo(disposeBag)
    
    tableView.rx_itemSelected
      .subscribeNext { [unowned self] indexPath in
        
        switch indexPath.row {
        case 0:
          AccountMenuViewer.routeur.showLogInViewerFromVC(self, success: { [weak self] (account) -> () in            
            QCMRouter.showQCMMenuViewerFromVC(self)
            })
        case 1:
          AccountMenuViewer.routeur.showSignUpViewerFromVC(self, success: { [weak self] (account) -> () in
            QCMRouter.showQCMMenuViewerFromVC(self)
            })
        default:
          break
        }
      }
      .addDisposableTo(disposeBag)
  }  
}