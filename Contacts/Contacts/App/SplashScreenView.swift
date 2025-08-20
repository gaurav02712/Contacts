//
//  SplashScreenView.swift
//  Contacts
//
//  Created by Gaurav Pandey on 30/07/25.
//

import SwiftUI

/// Controls how and when the splash screen should be dismissed
enum SplashDismissMode {
    case auto(seconds: Double)
    case manual
}

/// A flexible and reusable Splash Screen component for SwiftUI
///
/// Usage:
/// - For auto dismiss: `dismissMode: .auto(seconds: 2)`
/// - For manual control from parent: `dismissMode: .manual`
struct SplashScreenView: View {
    @Binding var isActive: Bool
    let dismissMode: SplashDismissMode

    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color("LiquidGlassTop"), Color("LiquidGlassBottom")]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            VStack {
                Image(systemName: "person.crop.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 140, height: 140)
                    .foregroundStyle(
                        .white.opacity(0.88),
                        .blue.opacity(0.16)
                    )
                Text("Contacts")
                    .font(.largeTitle)
                    .foregroundStyle(.white.opacity(0.9))
                    .padding(.top, 16)
            }
        }

        .onAppear {
            if case .auto(let delay) = dismissMode {
                DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
                    withAnimation {
                        isActive = false
                    }
                }
            }
        }
    }
}

#Preview {
    SplashScreenView(isActive: .constant(true), dismissMode: .manual)
}
