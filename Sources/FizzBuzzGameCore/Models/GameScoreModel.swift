//
//  GameScoreModel.swift
//  FizzBuzz
//
//  Created by KoichiroUeki on 2024/07/28.
//

import Foundation

public struct GameScoreModel: Codable, Equatable, Identifiable, Sendable {
    public var id: UUID
    public let userId: String?
    public let userName: String
    public let score: Int
    public let mode: GameDifficulty
    public let date: Date
    public let time: Double
    public let wrongs: Int

    public func getDisplayName() -> String {
        if userName == "" {
            return "No Name"
        }
        return userName
    }
}

extension GameScoreModel: CustomDebugStringConvertible {
    public var debugDescription: String {
        "name: \(userName) mode: \(mode) score: \(score)"
    }
}
