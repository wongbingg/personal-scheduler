//
//  FacebookLoginService.swift
//  PersonalScheduler
//
//  Created by 이원빈 on 2023/02/21.
//

import FacebookLogin

protocol FacebookLoginService {
//    func login(in viewController: UIViewController, _ completion: @escaping () -> Void)
    func login()
    func logOut()
    func fetchAccessToken() -> AccessToken?
    func fetchProfile(_ completion: @escaping (Profile?) -> Void)
}
