//
//  GameStreamApp.swift
//  GameStream
//
//  Created by Ian Pedraza on 12/01/22.
//

import SwiftUI

@main
struct GameStreamApp: App {
    
    @Environment(\.scenePhase) var scenePhase;
    
    init() {
        // Do something
    }
    
    var body: some Scene {
        
        WindowGroup {
            
            ContentView()
                .onAppear {
                    print("The view will appear")
                }
            //  .onChange()
                .onDisappear {
                    print("The view vill disappear")
                }
            
        }.onChange(of: scenePhase) { phase in
            
            // 1. Active
            // 2. Inactive
            // 3. Background (removed from recents stack, about to finished)
            
            switch phase {
                
            case .active:
                print("App is on foreground")
                
            case .inactive:
                print("App is running but not on foregound")
                
            case .background:
                print("The App is about to be closed")
                
            default:
                print("Any unknow Value")
                
            }
            
        }
        
    }
    
}
