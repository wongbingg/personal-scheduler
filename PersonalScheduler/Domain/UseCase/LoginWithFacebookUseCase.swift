//
//  LoginWithFacebookUseCase.swift
//  PersonalScheduler
//
//  Created by 이원빈 on 2023/02/21.
//

import FacebookLogin

protocol LoginWithFacebookUseCase {
    func execute()
}

struct DefaultLoginWithFacebookUseCase: LoginWithFacebookUseCase {
    
    private let facebookLoginService: FacebookLoginService
    
    init(facebookLoginService: FacebookLoginService) {
        self.facebookLoginService = facebookLoginService
    }
    
    func execute() {
        facebookLoginService.login()
    }
}
