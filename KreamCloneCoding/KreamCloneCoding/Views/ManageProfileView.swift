//
//  ManageProfileView.swift
//  KreamCloneCoding
//
//  Created by 김승원 on 9/28/24.
//

// 워크북 2주차

import UIKit

class ManageProfileView: UIView {

    // MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Set up UI
    private func setupUI() {
        self.backgroundColor = .yellow
        
        setupConstraints()
    }
    
    // MARK: - Set up Constraints
    private func setupConstraints() {
        
    }
}
