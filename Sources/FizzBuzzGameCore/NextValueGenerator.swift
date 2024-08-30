//
//  NextValueGenerator.swift
//
//
//  Created by KoichiroUeki on 2024/08/30.
//

protocol NextValueGenerator {
    var minScore: Int { get set}
    var maxScore: Int { get set }
    func generateNext(currentValue: Int) -> Int
}

struct SequentialNextValueGenerator: NextValueGenerator {
    var minScore: Int
    var maxScore: Int
    func generateNext(currentValue: Int) -> Int {
        return currentValue + 1
    }
}

struct RandomNextValueGenerator: NextValueGenerator {
    var minScore: Int
    var maxScore: Int
    func generateNext(currentValue: Int) -> Int {
        return Int.random(in: minScore..<(maxScore+1))
    }
}

struct NextValueGeneratorConfig {
    var minScore: Int
    var maxScore: Int
}

struct NextValueGeneratorFactory {
    func config(difficulty: GameDifficulty) -> NextValueGeneratorConfig {
        switch difficulty {
        case .easy, .medium, .hard:
            NextValueGeneratorConfig(minScore: 1, maxScore: 50)
        case .extream:
            NextValueGeneratorConfig(minScore: 1, maxScore: 100)
        }
    }

    func generate(difficulty: GameDifficulty) -> NextValueGenerator {
        let config = self.config(difficulty: difficulty)
        switch difficulty {
        case .easy:
            return SequentialNextValueGenerator(minScore: config.minScore, maxScore: config.maxScore)
        case .medium:
            return RandomNextValueGenerator(minScore: config.minScore, maxScore: config.maxScore)
        case .hard:
            return SequentialNextValueGenerator(minScore: config.minScore, maxScore: config.maxScore)
        case .extream:
            return RandomNextValueGenerator(minScore: config.minScore, maxScore: config.maxScore)
        }
    }
}
