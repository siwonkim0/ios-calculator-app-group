//
//  Operator.swift
//  Calculator
//
//  Created by 황제하 on 2021/11/11.
//

import Foundation

enum Operator: Character {
    case add = "+"
    case subtract = "-"
    case divide = "/"
    case multiply = "*"
    
    func calculate(lhs: Double, rhs: Double) -> Double {
        switch self {
        case .add:
            return add(lhs: lhs, rhs: rhs)
        case .subtract:
            return subtract(lhs: lhs, rhs: rhs)
        case .divide:
            return divide(lhs: lhs, rhs: rhs)
        case .multiply:
            return multiply(lhs: lhs, rhs: rhs)
        }
    }
    
    func add(lhs: Double, rhs: Double) -> Double {
        return lhs + rhs
    }
    
    func subtract(lhs: Double, rhs: Double) -> Double {
        return lhs - rhs
    }
    
    func divide(lhs: Double, rhs: Double) -> Double {
        return lhs / rhs
    }
    
    func multiply(lhs: Double, rhs: Double) -> Double {
        return lhs * rhs
    }
}

extension Operator: CaseIterable { }

extension Operator: CalculateItem { }