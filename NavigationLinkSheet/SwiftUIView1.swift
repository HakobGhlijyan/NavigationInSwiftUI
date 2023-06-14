//
//  SwiftUIView1.swift
//  NavigationLinkSheet
//
//  Created by Hakob Ghlijyan on 13.06.2023.
//

import SwiftUI

struct SwiftUIView1: View {
    
    @State var showSheet = false
    
    var body: some View {
        
        NavigationStack {
            
            VStack(spacing: 20) {
                
                Image(systemName: "heart")
                    .font(.largeTitle)
                
                NavigationLink(destination: View3in1(), label: {
                    Text("Go link to view 3.1")
                })
                
                Button {
                    self.showSheet.toggle()
                } label: {
                    Text("Go button sheet to view 3.2")
                }.sheet(isPresented: $showSheet) {
                    View3in2()
                }

                
            }
            
                .navigationTitle("View 3")
        }
    }
}

struct SwiftUIView1_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView1()
    }
}

struct View3in1: View {
    var body: some View {
        VStack {
            Image(systemName: "heart")
                .font(.largeTitle)
            Text("View 3.1")
                .navigationTitle("View 3.1")
        }
    }
}

struct View3in2: View {
    
    @Environment(\.presentationMode) var presentationMode
    
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
                                .foregroundColor(.blue)
                        }
                    }
                }
            
                .navigationTitle("View 3.2")
        }
    }
}
