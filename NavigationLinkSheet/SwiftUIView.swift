//
//  SwiftUIView.swift
//  NavigationLinkSheet
//
//  Created by Hakob Ghlijyan on 13.06.2023.
//

import SwiftUI

//MARK: - Sheet View

struct SwiftUIView: View {
    
    //MARK: - For Exit View in Button
    @Environment(\.presentationMode) var presentationMode
    
    //MARK: - Observed Var in first View class
    @ObservedObject var item:Item
    
    var body: some View {
        
        NavigationStack {
            
            Image(systemName: "heart.fill")
                .font(.largeTitle)
            
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            self.presentationMode.wrappedValue.dismiss()
                        } label: {
                            Image(systemName: "arrowshape.turn.up.backward.fill")
                                .foregroundColor(.red)
                        }
                    }
                }
            
            .navigationTitle("View 2")
        }
        
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView(item: Item())
        // SwiftUIView() -> SwiftUIView(item: Item())
    }
}
