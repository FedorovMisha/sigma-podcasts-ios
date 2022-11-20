//
//  OnboardingCurvePath.swift
//  sigma-podcasts-ios
//
//  Created by Misha Fedorov on 18.11.2022.
//

import SwiftUI

struct OnboardingCurvePath: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(
            to: CGPoint(
                x: 0.05867*width,
                y: 0.71833*height
            )
        )
        path.addCurve(
            to: CGPoint(
                x: 0.30117*width,
                y: 0.56674*height
            ),
            control1: CGPoint(
                x: 0.10365*width,
                y: 0.30176*height
            ),
            control2: CGPoint(
                x: 0.16144*width,
                y: 0.0474*height
            )
        )
        path.addCurve(
            to: CGPoint(
                x: 0.71667*width,
                y: 0.32713*height
            ),
            control1: CGPoint(
                x: 0.4409*width,
                y: 1.08608*height
            ),
            control2: CGPoint(
                x: 0.66013*width,
                y: 0.77456*height
            )
        )
        path.addCurve(to: CGPoint(x: 0.94133*width, y: 0.75011*height), control1: CGPoint(x: 0.7732*width, y: -0.1203*height), control2: CGPoint(x: 0.94133*width, y: 0.46282*height))
        return path
    }
}
