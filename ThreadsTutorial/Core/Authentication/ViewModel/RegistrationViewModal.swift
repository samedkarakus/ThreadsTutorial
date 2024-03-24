//
//  RegistrationViewModal.swift
//  ThreadsTutorial
//
//  Created by Samed Karakuş on 24.03.2024.
//

import Foundation
import SwiftUI

class RegistrationViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var username = ""
    @Published var fullname = ""
   
    @MainActor
    func createUser() async throws {
        try await AuthService.shared.createUser(
            fullName: fullname,
            userName: username,
            withEmail: email,
            password: password
        )
    }
}
