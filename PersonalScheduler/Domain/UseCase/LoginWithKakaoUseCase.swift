//
//  LoginWithKakaoUseCase.swift
//  PersonalScheduler
//
//  Created by 이원빈 on 2023/02/21.
//

import KakaoSDKAuth
import KakaoSDKUser
import KakaoSDKCommon

protocol LoginWithKakaoUseCase {
    func execute()
}

struct DefaultLoginWithKakaoUseCase: LoginWithKakaoUseCase {
    
    private let kakaoLoginService: KakaoLoginService
    
    init(kakaoLoginService: KakaoLoginService) {
        self.kakaoLoginService = kakaoLoginService
    }
    
    func execute() {
        kakaoLoginService.login { token in
            // TODO: token 값으로 전달할 타입 정해
            print(token)
        }
    }
}
