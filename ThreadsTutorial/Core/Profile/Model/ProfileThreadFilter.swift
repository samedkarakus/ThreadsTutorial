//
//  ProfileThreadFilter.swift
//  ThreadsTutorial
//
//  Created by Samed Karakuş on 22.03.2024.
//

import Foundation

enum ProfileThreadFilter: Int, CaseIterable, Identifiable{
    case threads
    case replies
    case reposts
    
    var title: String {
        switch self {
        case .threads: return "Threads"
        case .replies: return "Replies"
        case .reposts: return "Reposts"
        }
    }
    
    var id: Int {return rawValue.self}
}
