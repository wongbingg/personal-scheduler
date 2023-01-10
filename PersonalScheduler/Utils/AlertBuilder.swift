//
//  AlertBuilder.swift
//  PersonalScheduler
//
//  Created by 이원빈 on 2023/01/10.
//

import UIKit

protocol AlertBuilder {
    var alertController: UIAlertController { get }
    
    func setButton(name: String, style: UIAlertAction.Style, _ completion: (() -> Void)?) -> Self
}

final class DefaultAlertBuilder: AlertBuilder {
    var alertController: UIAlertController
    
    init(title: String? = nil, message: String? = nil, preferredStyle: UIAlertController.Style) {
        alertController = UIAlertController(title: title, message: message, preferredStyle: preferredStyle)
    }
    
    func setButton(name: String, style: UIAlertAction.Style, _ completion: (() -> Void)? = nil) -> DefaultAlertBuilder {
        let button = UIAlertAction(title: name, style: style) { alertAction in
            completion?()
        }
        alertController.addAction(button)
        return self
    }
    
    func showAlert(on viewController: UIViewController) {
        viewController.present(alertController, animated: true)
    }
}