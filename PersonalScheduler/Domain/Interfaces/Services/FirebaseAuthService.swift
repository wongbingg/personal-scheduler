//
//  FirebaseAuthService.swift
//  PersonalScheduler
//
//  Created by 이원빈 on 2023/02/21.
//

protocol FirebaseAuthService {
    func createUser(email: String, password: String) async throws
    func signIn(email: String, password: String) async throws -> String
}
