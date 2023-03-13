//
//  Background.swift
//  Apollo_Alpha
//
//  Created by Jacob Franco on 3/3/23.
//

import SwiftUI

struct Background: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        let primaryColor = Color("Primary")
        let gradientColors = colorScheme == .dark ?
            [Color.black.opacity(0.9), Color.black.opacity(0.5), Color.clear] :
            [primaryColor.opacity(0.6), primaryColor.opacity(0.9), Color.white.opacity(0.1)]
        
        ZStack {
            RadialGradient(gradient: Gradient(colors: [primaryColor.opacity(1.0), primaryColor.opacity(1.0), Color.clear]), center: .center, startRadius: 0, endRadius: UIScreen.main.bounds.width + 500)
                .scaleEffect(1.2)
                .edgesIgnoringSafeArea(.all)
            
            LinearGradient(gradient: Gradient(colors: gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VisualEffectView(effect: UIBlurEffect(style: .systemUltraThinMaterial))
                            .ignoresSafeArea()
        }
    }
}

struct Background_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Background()
                .previewDisplayName("Light mode")
                .environment(\.colorScheme, .light)
            
            Background()
                .previewDisplayName("Dark mode")
                .environment(\.colorScheme, .dark)
        }
    }
}

// View that adds the blur effect
struct VisualEffectView: UIViewRepresentable {
    let effect: UIVisualEffect
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: effect)
        return view
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {}
}

extension UIView {
    func addSubviews(_ subviews: [UIView]) {
        subviews.forEach { addSubview($0) }
    }
}
