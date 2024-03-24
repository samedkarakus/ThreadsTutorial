//
//  ContentViewModel.swift
//  ThreadsTutorial
//
//  Created by Samed Karakuş on 24.03.2024.
//

import Foundation
import Combine
import Firebase

class ContentViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        setupSubsciption()
    }
    
    private func setupSubsciption() {
        AuthService.shared.$userSession.sink { [weak self] userSession in
            self?.userSession = userSession
        } .store(in: &cancellables)
    }
}
