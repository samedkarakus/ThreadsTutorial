//
//  AuthService.swift
//  ThreadsTutorial
//
//  Created by Samed Karakuş on 24.03.2024.
//

import Firebase

class AuthService {
    
    @Published var userSession:  FirebaseAuth.User?
    
    static let shared = AuthService()
    
    init() {
        self.userSession = Auth.auth().currentUser
    }
    
    func login(withEmail email: String, password: String) async throws {
        
    }
    
    func createUser(fullName: String, userName : String, withEmail email: String, password: String) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            print("DEBUG: Created user: \(result.user.uid)")
        } catch  {
            print("DEGUB: Failed to create user with error \(error.localizedDescription)")
        }
        
    }
    
    func signOut() {
        try? Auth.auth().signOut()
        self.userSession = nil
    }
}
