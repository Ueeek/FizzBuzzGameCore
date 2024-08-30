//
//  GameState.swift
//
//
//  Created by KoichiroUeki on 2024/08/30.
//

public struct GameState: Equatable, Sendable {
    public init() {}

    public init(fizzNum: Int, buzzNum: Int, currentNum: Int) {
        self.fizzNum = fizzNum
        self.buzzNum = buzzNum
        self.currentNum = currentNum
    }

    public var fizzNum: Int = 3
    public var buzzNum: Int = 5
    public var currentNum: Int = 1
}
