//
//  ManageProfileViewController.swift
//  KreamCloneCoding
//
//  Created by 김승원 on 9/28/24.
//

// 워크북 2주차

import UIKit

class ManageProfileViewController: UIViewController {
    // MARK: - Properties
    let manageProfileView = ManageProfileView()
    
    // MARK: - Life Cycle
    override func loadView() {
        self.view = manageProfileView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setNavigationController()
    }
    
    // MARK: - Set NavigationController
    private func setNavigationController() {
        self.title = "프로필 관리"
    }
}
