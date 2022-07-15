//
//  ProfileView.swift
//  Netology_IB_Instruments
//
//  Created by Darya on 14.07.2022.
//

import UIKit

class ProfileView: UIView {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var DescriptionTextView: UITextView!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var dateOfBirthLabel: UILabel!
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.setup()
    }
    
    private func setup() {
        let view = self.loadViewFromXib()
        self.addSubview(view)
        view.bounds = self.bounds
    }
    
    private func loadViewFromXib() -> UIView {
        guard let view = Bundle.main.loadNibNamed("ProfileView", owner: self)?.first as? UIView else {
            return UIView()
        }
        return view
    }
}
