//
//  ContentView.swift
//  Custom Sheet
//
//  Created by Parker Ehret on 7/10/23.
//

import SwiftUI

struct ContentView: View {
    @State private var onTheDay = false
    @State private var oneDayBefore = false
    @State private var oneWeekBefore = false
    @State private var oneMonthBefore = false
    
    @State var showSheetView = false
    
    // This is for dragging action
        @GestureState private var dragState = DragState.inactive

        // An enum that represents current drag state
    private enum DragState {
        case inactive
        case dragging(translation: CGSize)
        
        var translation: CGSize {
            switch self {
            case .inactive:
                return .zero
            case .dragging(let translation):
                return translation
            }
        }
        
        var isDragging: Bool {
            switch self {
            case .inactive:
                return false
            case .dragging:
                return true
            }
        }
    }
    
    var body: some View {
        ZStack{
            HStack {
                ZStack {
                    Rectangle()
                        .fill(Color(red: 0.97, green: 0.145, blue: 0.52).opacity(1.0))
                        .frame(width: 44, height: 44)
                        .cornerRadius(18)
                    
                    Text("13")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                }
                .padding(.leading, 16)
                .padding(.vertical, 16)
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Willow's 4th Birthday")
                            .font(.headline)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(red: 0.97, green: 0.145, blue: 0.52).opacity(1.0))
                    }
                    HStack {
                        Text("Willow will turn 4 this year")
                            .font(.footnote)
                            .fontWeight(.medium)
                            .foregroundColor(Color(red: 0.97, green: 0.145, blue: 0.52).opacity(0.5))
                    }
                    .padding(.top, -8)
                }
                .padding(.leading, 8)
                Spacer()
            
            }
            .background(Color(red: 0.97, green: 0.145, blue: 0.52).opacity(0.05))
            .cornerRadius(28)
            .padding (16)
            
            
            if showSheetView {
                Rectangle()
                    .foregroundColor(Color.black.opacity(0.2))
                    .ignoresSafeArea(.all)
                    .onTapGesture {
                        withAnimation{
                            showSheetView = false
                        }
                    }
            }
            
            sheet
            
        }
        .onTapGesture {
            withAnimation{
                showSheetView = true
            }
        }
        
    }
    
    var sheet: some View {
        SheetView()
            .offset(y: showSheetView ? 16 + dragState.translation.height : 1000)
            .animation(.interpolatingSpring(stiffness: 300.0, damping: 30.0, initialVelocity: 10.0), value: dragState.translation.height)
            .gesture(
                DragGesture().updating($dragState) { (value, state, _) in
                    state = .dragging(translation: value.translation)
                }
                .onEnded(onDragEnded)
            )
    }
    private func onDragEnded(drag: DragGesture.Value) {
        let dragThreshold: CGFloat = 200.0
        if drag.predictedEndTranslation.height > dragThreshold || drag.translation.height > dragThreshold {
            withAnimation {
                self.showSheetView = false
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
