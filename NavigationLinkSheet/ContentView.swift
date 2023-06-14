//
//  ContentView.swift
//  NavigationLinkSheet
//
//  Created by Hakob Ghlijyan on 13.06.2023.
//

import SwiftUI

// MARK: Sheey Nav for class Published and ObservedObject
class Item: ObservableObject {
    @Published var itemForSheet = 0
}

struct ContentView: View {
    
 @ObservedObject var item = Item()
 @State private var showView = false
    
    var body: some View {
        
        NavigationStack {
            
            Circle()
                .frame(width: 150, height: 150)
            
            Spacer()
                .frame(height: 40)
            
            Button {
                self.showView.toggle()
            } label: {
                Text("Button Sheet -> View 2")
            }
            // MARK: Sheet Navigation
            .sheet(isPresented: $showView, content: {
                SwiftUIView(item: self.item)
            })
            
            Spacer()
                .frame(height: 40)
            
            // MARK: Navigation Link
            NavigationLink(destination: SwiftUIView1(), label: {
                Text("NavLink -> View 3")
            })
            
            .navigationTitle("View 1")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
