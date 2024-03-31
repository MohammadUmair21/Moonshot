//
//  AstronautView.swift
//  Moonshot
//
//  Created by Umair on 31/03/24.
//

import SwiftUI

struct AstronautView: View {
    
    let astronaut : Astronaut
    
    var body: some View {
        
        ScrollView {
            VStack {
                Image(astronaut.id)
                    .resizable()
                    .scaledToFit()
                
                Text(astronaut.description)
                    .padding()
            }
        }
        .background(.darlBackground)
        .navigationTitle(astronaut.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    let astronauts : [String:Astronaut] = Bundle.main.decode("astronauts.json")
    
    return AstronautView(astronaut: astronauts["aldring"]!)
        .preferredColorScheme(.dark)
}
