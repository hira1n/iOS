//
//  EditProfileViewController.swift
//  KREAM
//
//  Created by 류한비 on 9/30/24.
//

import UIKit
import SnapKit

class EditProfileViewController: UIViewController {
    
    // 프로필 관리 Label
    let editProfileLabel: UILabel = {
        let ep = UILabel()
        ep.text = "프로필 관리"
        ep.textColor = .black
        ep.textAlignment = .center
        ep.font = .systemFont(ofSize: 16, weight: .regular)
        return ep
    }()
    
    // 프로필 사진
    let profileImage: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "SesameImage")
        iv.contentMode = .scaleAspectFill // 이미지 비율 유지
        iv.clipsToBounds = true
        return iv
        }()
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        profileImage.layer.cornerRadius = profileImage.frame.width / 2
    }
    
    // 프로필 정보 Label
    let infoProfileLabel: UILabel = {
        let info = UILabel()
        info.text = "프로필 정보"
        info.textColor = .black
        info.textAlignment = .left
        info.font = .systemFont(ofSize: 18, weight: .regular)
        return info
    }()
    
    // 유저 이메일 Label
    let userEmailLabel: UILabel = {
        let ue = UILabel()
        ue.text = "유저 이메일"
        ue.textColor = .black
        ue.textAlignment = .left
        ue.font = .systemFont(ofSize: 14, weight: .regular)
        return ue
    }()
    
    // 유저 이메일 TextField
    lazy var emailTextField: UITextField = {
        let et = UITextField()
        et.attributedPlaceholder = NSAttributedString(string: "example@naver.com", attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        et.font = .systemFont(ofSize: 14, weight: .regular)
        et.layer.cornerRadius = 10
        et.layer.borderWidth = 1
        et.layer.borderColor = UIColor.lightGray.cgColor
        et.layer.masksToBounds = true
        return et
    }()
    
    // 유저 비밀번호 Label
    let userPwLabel: UILabel = {
        let up = UILabel()
        up.text = "유저 비밀번호"
        up.textColor = .black
        up.textAlignment = .left
        up.font = .systemFont(ofSize: 14, weight: .regular)
        return up
    }()
    
    // 유저 비밀번호 TextField
    lazy var pwTextField: UITextField = {
        let pt = UITextField()
        pt.attributedPlaceholder = NSAttributedString(string: "************", attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        pt.font = .systemFont(ofSize: 14, weight: .regular)
        pt.layer.cornerRadius = 10
        pt.layer.borderWidth = 1
        pt.layer.borderColor = UIColor.lightGray.cgColor
        pt.layer.masksToBounds = true
        return pt
    }()
    
    // 변경 Button
    lazy var editButton1 : UIButton = {
        let eb = UIButton()
        eb.setTitle("변경", for: .normal)
        eb.titleLabel?.font = .systemFont(ofSize: 14, weight: .regular)
        eb.setTitleColor(.black, for: .normal)
        eb.backgroundColor = .white
        eb.layer.borderColor = UIColor.black.cgColor
        eb.layer.cornerRadius = 6
        eb.layer.borderWidth = 1
        eb.layer.masksToBounds = true
        return eb
    }()
    
    lazy var editButton2 : UIButton = {
        let eb = UIButton()
        eb.setTitle("변경", for: .normal)
        eb.titleLabel?.font = .systemFont(ofSize: 14, weight: .regular)
        eb.setTitleColor(.black, for: .normal)
        eb.backgroundColor = .white
        eb.layer.borderColor = UIColor.black.cgColor
        eb.layer.cornerRadius = 6
        eb.layer.borderWidth = 1
        eb.layer.masksToBounds = true
        return eb
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    //MARK: UI setup
    private func setupUI(){
        view.backgroundColor = .white
        
        // 프로필 관리 Label
        view.addSubview(editProfileLabel)
        editProfileLabel.snp.makeConstraints{make in
            make.top.equalToSuperview().offset(66)
            make.leading.equalToSuperview().offset(152)
            make.height.equalTo(26)
        }
        
        // 프로필 사진
        view.addSubview(profileImage)
        profileImage.snp.makeConstraints{make in
            make.top.equalTo(editProfileLabel.snp.bottom).offset(52)
            make.leading.equalToSuperview().offset(151)
            make.height.width.equalTo(90)
        }
        
        // 프로필 정보 Label
        view.addSubview(infoProfileLabel)
        infoProfileLabel.snp.makeConstraints{make in
            make.top.equalTo(profileImage.snp.bottom).offset(20)
            make.leading.equalToSuperview().offset(27)
            //make.trailing.equalToSuperview().inset(17)
            make.height.equalTo(29)
        }
        
        // 유저 이메일 Label
        view.addSubview(userEmailLabel)
        userEmailLabel.snp.makeConstraints{make in
            make.top.equalTo(infoProfileLabel.snp.bottom).offset(23)
            make.leading.equalTo(infoProfileLabel)
            make.height.equalTo(22)
        }
        
        // 유저 비밀번호 Label
        view.addSubview(userPwLabel)
        userPwLabel.snp.makeConstraints{make in
            make.top.equalTo(userEmailLabel.snp.bottom).offset(59)
            make.leading.equalTo(infoProfileLabel)
            make.height.equalTo(22)
        }
        
        // 유저 이메일 TextField
        view.addSubview(emailTextField)
        emailTextField.snp.makeConstraints{make in
            make.top.equalTo(userEmailLabel.snp.bottom).offset(4)
            make.leading.equalTo(infoProfileLabel)
            make.trailing.equalToSuperview().inset(84)
            make.height.equalTo(32)
            make.width.equalTo(282)
        }
        
        // 유저 비밀번호 TextField
        view.addSubview(pwTextField)
        pwTextField.snp.makeConstraints{make in
            make.top.equalTo(userPwLabel.snp.bottom).offset(4)
            make.leading.equalTo(infoProfileLabel)
            make.trailing.equalToSuperview().inset(84)
            make.height.equalTo(32)
            make.width.equalTo(282)
        }
        
        // 변경 Button
        view.addSubview(editButton1)
        editButton1.snp.makeConstraints{make in
            make.top.equalTo(emailTextField)
            make.leading.equalTo(emailTextField.snp.trailing).offset(9)
            make.trailing.equalToSuperview().inset(17)
            make.height.equalTo(32)
            make.width.equalTo(58)
        }
        
        view.addSubview(editButton2)
        editButton2.snp.makeConstraints{make in
            make.top.equalTo(pwTextField)
            make.leading.equalTo(emailTextField.snp.trailing).offset(9)
            make.trailing.equalToSuperview().inset(17)
            make.height.equalTo(32)
            make.width.equalTo(58)
        }
    }
}
