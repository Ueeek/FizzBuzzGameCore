//
//  GameDIfficulty.swift
//  FizzBuzz
//
//  Created by KoichiroUeki on 2024/08/17.
//

public enum GameDifficulty: Int, CaseIterable, Codable, Sendable {
    case easy
    case medium
    case hard
    case extream

    public var title: String {
        switch self {
        case .easy: "easy"
        case .medium: "medium"
        case .hard: "hard"
        case .extream: "extream"
        }
    }

    var description: String {
        switch self {
        case .easy: "Order: Increasing, FizzNum: Fixed, BuzzNum: Fized"
        case .medium: "Order: Random, FizzNum: Fixed, BuzzNum: Fized"
        case .hard: "Order: Increasing, FizzNum: Random, BuzzNum: Random"
        case .extream: "Order: Random, FizzNum: Random, BuzzNum: Random"
        }
    }

    public var dbKey: String {
        switch self {
        case .easy: "easy"
        case .medium: "medium"
        case .hard: "hard"
        case .extream: "extream"
        }

    }
}
