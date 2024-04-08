//
//  ContentView.swift
//  Moonshot
//
//  Created by Umair on 28/03/24.
//

import SwiftUI

struct ContentView: View {
    
    let astronauts : [String : Astronaut] = Bundle.main.decode("astronauts.json")
    
    let missions : [Mission] = Bundle.main.decode("missions.json")
    
    @AppStorage("showingGrid") private var showingGrid = true
    
    var body: some View {
        NavigationStack{
            Group {
                if showingGrid {
                    GridLayout(missions: missions, astronauts: astronauts)
                } else {
                    ListLayout(missions: missions, astronauts: astronauts)
                            }
                        }
                        .toolbar {
                            Button {
                                showingGrid.toggle()
                            } label: {
                                if showingGrid {
                                    Label("Show as table", systemImage: "list.dash")
                                } else {
                                    Label("Show as grid", systemImage: "square.grid.2x2")
                                }
                            }
                        }
                        
                        .navigationTitle("Moonshot")
                        .background(.darlBackground)
                        .preferredColorScheme(.dark)
                    }
                }
            }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
