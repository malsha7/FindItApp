//
//  SplashView.swift
//  FindItApp
//
//  Created by Malsha Bopage on 2026-07-27.
//

import SwiftUI


struct SplashView: View {

    @State private var isActive = false

    var body: some View {

        Group {

            if isActive {

                LoginView()

            } else {

                ZStack {

                    Color.blue
                        .ignoresSafeArea()

                    VStack(spacing: 20) {

                        Image(systemName: "magnifyingglass.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 120, height: 120)
                            .foregroundColor(.white)

                        Text("FindIt")
                            .font(.system(size: 40, weight: .bold))
                            .foregroundColor(.white)

                        Text("Lost & Found System")
                            .foregroundColor(.white.opacity(0.9))
                            .font(.headline)

                    }

                }
                .onAppear {

                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {

                        isActive = true

                    }

                }

            }

        }

    }

}

#Preview {
    SplashView()
}
