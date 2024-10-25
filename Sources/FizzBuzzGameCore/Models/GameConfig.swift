//
//  GameConfig.swift
//
//
//  Created by KoichiroUeki on 2024/08/30.
//

public struct GameConfig: Equatable, Sendable {
    public init(difficulty: GameDifficulty) {
        self.difficulty = difficulty
    }

    public let difficulty: GameDifficulty
    public let totalRound = 15
}
