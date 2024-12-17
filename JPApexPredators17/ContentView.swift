//
//  ContentView.swift
//  JPApexPredators17
//
//  Created by Artur Vasconcelos on 09/12/24.
//

import SwiftUI

struct ContentView: View {
    let predators = Predators()
    
    var body: some View {
        List(predators.apexPredators) { predator in
            HStack{
                
//                Dinosaur image
                Image(predator.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .shadow(color: .white, radius: 0.5)
                
                VStack(alignment: .leading) {
                    
//                    Name
                    Text(predator.name)
                        .fontWeight(.bold)
                    
//                    Type
                    Text(predator.type.rawValue.capitalized)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .padding(.horizontal, 13)
                        .padding(.vertical, 5)
                        .background(predator.type.background)
                        .clipShape(.capsule)
                    
                }
            }
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}
