//
//  DefaultFirebaseAuthService.swift
//  PersonalScheduler
//
//  Created by 이원빈 on 2023/01/12.
//

import FirebaseAuth

final class DefaultFirebaseAuthService: FirebaseAuthService {
    
    func createUser(email: String, password: String) async throws {
        do {
            _ = try await Auth.auth().createUser(
                withEmail: email,
                password: password
            )
        } catch {
            throw FirebaseAuthServiceError.failToCreateUser
        }
    }
    
    func signIn(email: String, password: String) async throws -> String {
        do {
            let authDataResult = try await Auth.auth().signIn(
                withEmail: email,
                password: password
            )
            return authDataResult.user.uid
        } catch {
            throw FirebaseAuthServiceError.failToSignIn
        }
    }
}

enum FirebaseAuthServiceError: LocalizedError {
    case failToCreateUser
    case failToSignIn
}

extension FirebaseAuthServiceError {
    var errorDescription: String? {
        switch self {
        case .failToCreateUser:
            return "FirebaseAuthService 에서 사용자를 생성하는데 실패했습니다."
        case .failToSignIn:
            return "FirebaseAuthService 에 등록되지 않은 정보입니다."
        }
    }
}

