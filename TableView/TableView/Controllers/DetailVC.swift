//
//  DetailVC.swift
//  TableView
//
//  Created by Igor Baidak on 16.08.22.
//

import UIKit

class DetailVC: UIViewController {

    var user: Users!
    
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    

    @IBOutlet weak var phone: UILabel! { didSet { phone.text = phoneUnicode }}
    @IBOutlet weak var email: UILabel! { didSet { email.text = emailUnicode }}
    
    private let phoneUnicode = "\u{1F4F1}"
    private let emailUnicode = "\u{40}"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userDetail()
        // Do any additional setup after loading the view.
    }
    
    private func userDetail() {
        title = user.firstName + " " + user.secondName
        phoneLabel.text = user.numberPhone
        emailLabel.text = user.email
    }

}
