//
//  GFEmpteStateView.swift
//  GHFollowers
//
//  Created by Evgenii Mazrukho on 04.01.2024.
//

import UIKit

final class GFEmpteStateView: UIView {

    //MARK: - UI Elements
    
    let messageLabel = GFTitleLabel(textAlignment: .center, fontSize: 28)
    let logoImageView = UIImageView()
    
    
    //MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureMessageLabel()
        configureLogoImageView()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    convenience init(message: String) {
        self.init(frame: .zero)
        messageLabel.text = message
    }
    

    //MARK: - Private Methods
    
    private func configureLogoImageView() {
        addSubview(logoImageView)
        
        logoImageView.image = Images.emptyStateLogo
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        
        let logoBottomConstant: CGFloat = DeviceTypes.isiPhoneSE || DeviceTypes.isiPhone8Zoomed ? 80 : 40
        let logoImageViewBottomConstraint =  logoImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: logoBottomConstant)
        logoImageViewBottomConstraint.isActive = true

        NSLayoutConstraint.activate([
            logoImageView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1.3),
            logoImageView.heightAnchor.constraint(equalTo: widthAnchor, multiplier: 1.3),
            logoImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 170)
        ])
    }
    
    
    private func configureMessageLabel() {
        addSubview(messageLabel)

        messageLabel.numberOfLines = 3
        messageLabel.textColor = .secondaryLabel

        let labelCenterYConstant: CGFloat = DeviceTypes.isiPhoneSE || DeviceTypes.isiPhone8Zoomed ? -80 : -150
        let messageLabelCenterYConstraint =  messageLabel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: labelCenterYConstant)
        messageLabelCenterYConstraint.isActive = true
        
        NSLayoutConstraint.activate([
            messageLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
            messageLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
            messageLabel.heightAnchor.constraint(equalToConstant: 200)
        ])
    }
}
