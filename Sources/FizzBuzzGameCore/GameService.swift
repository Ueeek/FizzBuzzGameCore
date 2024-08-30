//
//  GameService.swift
//  FizzBuzz
//
//  Created by KoichiroUeki on 2024/08/30.
//

import Foundation

public struct GameService {
    public init() {}

    public func getNextGameState(currentState: GameState, difficulty: GameDifficulty) -> GameState {
        let currentNum = currentState.currentNum
        let fizzNum = currentState.fizzNum
        let buzzNum = currentState.buzzNum

        // swiftlint:disable:next line_length
        let nextNum = NextValueGeneratorFactory().generate(difficulty: difficulty).generateNext(currentValue: currentNum)
        let nextFizzNum = nextFizzBuzzNum(currentNum: fizzNum, difficulty: difficulty)
        let nextBuzzNum = nextFizzBuzzNum(currentNum: buzzNum, difficulty: difficulty)

        return GameState(fizzNum: nextFizzNum, buzzNum: nextBuzzNum, currentNum: nextNum)
    }

    private func nextFizzBuzzNum(currentNum: Int, difficulty: GameDifficulty) -> Int {
        switch difficulty {
        case .easy, .medium:
            return currentNum
        case .hard, .extream:
            if Int.random(in: 0..<3)%3 == 0 {
                return Int.random(in: 1..<8)
            }
            return currentNum
        }
    }

    // swiftlint:disable:next line_length
    public func getGameResult(userId: String?, userName: String, scoreState: GameScoreState, mode: GameDifficulty, time: TimeInterval) -> GameScoreModel {
        let gameResult = GameScoreModel(
            id: UUID(),
            userId: userId,
            userName: userName,
            score: scoreState.corrects,
            mode: mode,
            date: Date.now,
            time: time,
            wrongs: scoreState.wrongs
        )
        return gameResult
    }

    public func isGameEnd(gameScoreState: GameScoreState, gameConfig: GameConfig) -> Bool {
        return gameScoreState.corrects == gameConfig.totalRound
    }
}
