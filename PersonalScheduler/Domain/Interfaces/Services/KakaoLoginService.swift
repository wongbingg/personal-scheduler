//
//  KakaoLoginService.swift
//  PersonalScheduler
//
//  Created by 이원빈 on 2023/02/21.
//
import KakaoSDKAuth
import KakaoSDKUser
import KakaoSDKCommon

protocol KakaoLoginService {
    func login(_ completion: @escaping (OAuthToken?) -> Void)
    func logout()
    func searchUserAccessToken(_ completion: @escaping (AccessTokenInfo?) -> Void)
    func searchUserInfo(_ completion: @escaping (User?) -> Void)
}
