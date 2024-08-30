//
//  GameScoreState.swift
//
//
//  Created by KoichiroUeki on 2024/08/30.
//

public struct GameScoreState: Equatable, Sendable {
    public init() {}

    public var corrects: Int = 0
    public var wrongs: Int = 0

    public mutating func updateCorrect() {
        corrects += 1
    }

    public mutating func updateWrong() {
        wrongs += 1
    }
}
