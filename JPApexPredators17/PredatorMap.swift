//
//  PredatorMap.swift
//  JPApexPredators17
//
//  Created by Artur Vasconcelos on 18/01/25.
//

import SwiftUI
import MapKit

struct PredatorMap: View {
//    this is how we access the array of all the apex predators
    let predators = Predators()
    private let initialPosition: MapCameraPosition
    
    @State var position: MapCameraPosition
    @State var satellite: Bool = false
    
    @State private var isResetButtonTriggered: Bool = false
    @State private var isSatelliteButtonTriggered: Bool = false
    
    @State private var isMapMoving: Bool = false
    
    var shouldShowResetButton: Bool {
        position != initialPosition
    }
    
//    custom init receive the position
//    and also hold the initial position in
    init(position: MapCameraPosition) {
        self._position = State(initialValue: position)
        self.initialPosition = position
    }
    
    var body: some View {
        Map(position: $position) {
            ForEach(predators.apexPredators) { predator in
                Annotation(predator.name, coordinate: predator.location) {
                    Image(predator.image)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 100)
                        .shadow(color: .white, radius: 3)
                        .scaleEffect(x: -1)
                }
            }
        }
        .mapStyle(satellite ? .imagery(elevation: .realistic) : .standard(elevation: .realistic))
        .overlay(alignment: .bottomTrailing) {
            VStack(spacing: 20){
                if shouldShowResetButton {
                    Button {
                        withAnimation {
                            position = initialPosition
                            isResetButtonTriggered.toggle()
                        }
                        HapticManager.lightTap()
                    } label: {
                        Image(systemName: "location.fill.viewfinder")
                            .symbolEffect(.bounce, value: isResetButtonTriggered)
                    }
                    .shadow(radius: 3)
                }
                Button {
                    satellite.toggle()
                    HapticManager.lightTap()
                } label: {
                    Image(systemName: satellite ? "globe.americas.fill" : "globe.americas")
                }
            }
            .font(.largeTitle)
            .imageScale(.large)
            .padding(3)
            .clipShape(.rect(cornerRadius: 7))
            .shadow(radius: 3)
            .padding()
        }
        .toolbarBackground(.automatic)
    }
}

#Preview {
    PredatorMap(position: .camera(MapCamera(
        centerCoordinate:
            Predators().apexPredators[2].location,
        distance: 1000,
        heading: 250,
        pitch: 80))
    )
    .preferredColorScheme(.dark)
}
