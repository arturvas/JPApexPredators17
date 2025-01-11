//
//  ContentView.swift
//  JPApexPredators17
//
//  Created by Artur Vasconcelos on 09/12/24.
//

import SwiftUI

struct ContentView: View {
    let predators = Predators()
    @State var searchText: String = ""
    @State var alphabetical = false
    
    let tapVibration = UIImpactFeedbackGenerator(style: .light)
    
    var filteredDinos: [ApexPredator] {
        predators.sort(by: alphabetical)
        
        return predators.search(for: searchText)
    }
    
    var body: some View {
        NavigationStack{
            List(filteredDinos) { predator in
                NavigationLink {
                    Image(predator.image)
                        .resizable()
                        .scaledToFit()
                } label: {
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
            }
            .navigationTitle("Apex Predators")
            .searchable(text: $searchText)
            .autocorrectionDisabled()
            .animation(.default, value: searchText)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    HStack {
                        Button {
                            withAnimation{
                                alphabetical.toggle()
                            }
                            tapVibration.impactOccurred()
                        } label: {
                            Image(systemName: alphabetical ? "textformat" : "film")
                                .symbolEffect(.bounce, value: alphabetical)
                        }
                    }
                    .foregroundColor(.secondary)
                }
            }
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}
