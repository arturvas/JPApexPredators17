//
//  PredatorDetail.swift
//  JPApexPredators17
//
//  Created by Artur Vasconcelos on 12/01/25.
//

import SwiftUI

struct PredatorDetail: View {
    let predator: ApexPredator
    
    var body: some View {
        GeometryReader { geo in
            ScrollView{
                ZStack(alignment: .bottomTrailing){
                    
//                    BackGround image
                    Image(predator.type.rawValue)
                        .resizable()
                        .scaledToFit()
                    
//                    Dino Image
                    Image(predator.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: geo.size.width/1.5, height: geo.size.height/3.7)
                        .scaleEffect(x: -1)
                        .shadow(color: .black, radius: 7)
                        .offset(y: 20)
                    
                    
                }
                
//                    Dino Image
//
//                    Current location
//
//                    Appears in
//
//                    Movie moments
//
//                    Link to webpage
                
            }
        }
        .ignoresSafeArea(.all)
    }
}

#Preview {
    PredatorDetail(predator: Predators().apexPredators[2])
//        .preferredColorScheme(.dark)
}
