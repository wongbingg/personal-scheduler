//
//  LoginWithFirebaseUseCase.swift
//  PersonalScheduler
//
//  Created by 이원빈 on 2023/02/22.
//

protocol LoginWithFirebaseUseCase {
    func execute(with loginInfo: LoginInfo) async throws
}

struct DefaultLoginWithFirebaseUseCase: LoginWithFirebaseUseCase {
    
    private let firebaseAuthService: FirebaseAuthService
    
    init(firebaseAuthService: FirebaseAuthService) {
        self.firebaseAuthService = firebaseAuthService
    }
    
    func execute(with loginInfo: LoginInfo) async throws {
        try await firebaseAuthService.signIn(
            email: loginInfo.id,
            password: loginInfo.password
        )
    }
    
}
