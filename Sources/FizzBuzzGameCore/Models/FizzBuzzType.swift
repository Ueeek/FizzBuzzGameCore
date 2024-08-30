//
//  FIzzBuzzType.swift
//  FizzBuzz
//
//  Created by KoichiroUeki on 2024/08/17.
//

public enum FizzBuzzType: Sendable {
    case fizz
    case buzz
    case fizzBuzz
    case skip

    public static func getType(gameState: GameState) -> Self {
        let fizzNum = gameState.fizzNum
        let buzzNum = gameState.buzzNum
        let currentNum = gameState.currentNum

        let fizzRemidner = currentNum % fizzNum
        let buzzReminder = currentNum % buzzNum

        switch (fizzRemidner, buzzReminder) {
        case(0, 0):
            return .fizzBuzz
        case(0, _):
            return .fizz
        case(_, 0):
            return .buzz
        default:
            return .skip
        }
    }

    public var title: String {
        switch self {
        case .fizz:
            "Fizz"
        case .buzz:
            "Buzz"
        case .fizzBuzz:
            "FizzBuzz"
        case .skip:
            "Skip"
        }
    }
}
