//
//  SheetView.swift
//  Custom Sheet
//
//  Created by Parker Ehret on 7/10/23.
//

import Foundation
import SwiftUI

struct SheetView: View {
    
    @State private var onTheDay = false
    @State private var oneDayBefore = false
    @State private var oneWeekBefore = false
    @State private var oneMonthBefore = false
    
    @State var showSheetView = false

    var body: some View {
        

                
                
                ZStack {
                    VStack{
                        
                        HStack {
                            Rectangle()
                                .foregroundColor(Color(.gray))
                                .frame(width: 32, height: 4, alignment: .center)
                                .cornerRadius(4)
                        }
                        .padding(.top, 12)
                        
                        HStack {
                            Spacer()
                            
                            VStack {
                                Spacer()
                                HStack {
                                    Spacer()
                                    
                                    Image(systemName: "ellipsis")
                                        .font(.title2)
                                        .foregroundColor(Color(red: 0.97, green: 0.145, blue: 0.52).opacity(0.5))
                                        .fontWeight(.medium)
                                        .frame(width: 28, height: 28, alignment: .center)
                                        .background(Color.white.opacity(0))
                                        .cornerRadius(4)
                                        .padding(.top, -12)
                                        .padding(.trailing, 12)
                                }
                                
                                
                                HStack {
                                    Text("Image")
                                        .foregroundColor(.gray)
                                        .font(.system(size: 15, weight: .semibold, design: .rounded))
                                        .frame(width: 84, height: 84, alignment: .center)
                                        .background(Color(.white))
                                        .cornerRadius(12)
                                        .padding(.bottom, 12)
                                        .padding(.top, -28)
                                    
                                }
                                
                                VStack {
                                    Text("Willow's 4th Birthday")
                                        .foregroundColor(Color(red: 0.97, green: 0.145, blue: 0.52).opacity(1.0))
                                        .font(.system(size: 22, weight: .semibold, design: .rounded))
                                        .frame(height: 24, alignment: .center)
                                    
                                    Text("February 13th, 2024")
                                        .foregroundColor(.black)
                                        .font(.system(size: 20, weight: .medium, design: .rounded))
                                        .frame(height: 20, alignment: .center)
                                    
                                }
                                Spacer()
                                
                            }
                            Spacer()
                            
                        }
                        .frame(height: 214, alignment: .center)
                        .background(Color(red: 0.97, green: 0.145, blue: 0.52).opacity(0.05))
                        .cornerRadius(20)
                        .padding(.top, 2)
                        
                        HStack {
                            Text("NOTIFICATIONS FOR THIS EVENT")
                                .foregroundColor(.gray)
                                .font(.system(size: 13, weight: .medium, design: .rounded))
                                .padding(.top, 32)
                                .padding(.bottom, 0)
                                .padding(.leading, 8)
                            
                            Spacer()
                        }
                        
                        
                        HStack {
                            Toggle("On the day", isOn: $onTheDay)
                                .foregroundColor(.black)
                                .font(.system(size: 17, weight: .semibold, design: .rounded))
                                .tint(Color(red: 0.97, green: 0.145, blue: 0.52).opacity(1.0))
                        }
                        .padding(.top, 12)
                        .padding(.horizontal, 8)
                        
                        
                        HStack {
                            Toggle("One day before", isOn: $oneDayBefore)
                                .foregroundColor(.black)
                                .font(.system(size: 17, weight: .semibold, design: .rounded))
                                .tint(Color(red: 0.97, green: 0.145, blue: 0.52).opacity(1.0))
                        }
                        .padding(.top, 8)
                        .padding(.horizontal, 8)
                        
                        
                        HStack {
                            Toggle("One week before", isOn: $oneWeekBefore)
                                .foregroundColor(.black)
                                .font(.system(size: 17, weight: .semibold, design: .rounded))
                                .tint(Color(red: 0.97, green: 0.145, blue: 0.52).opacity(1.0))
                        }
                        .padding(.top, 8)
                        .padding(.horizontal, 8)
                        
                        
                        HStack {
                            Toggle("One month before", isOn: $oneMonthBefore)
                                .foregroundColor(.black)
                                .font(.system(size: 17, weight: .semibold, design: .rounded))
                                .tint(Color(red: 0.97, green: 0.145, blue: 0.52).opacity(1.0))
                        }
                        .padding(.top, 8)
                        .padding(.horizontal, 8)
                        
                    }
                    .frame(width: 310, alignment: .center)
                    .padding(.horizontal, 24)
                    .padding(.bottom, 40)
                    .background(Color(.white))
                    .cornerRadius(36)
                    .shadow(color: Color.black.opacity(0.10), radius: 24, x: 0, y: 4)
                    .padding(.top, 168)
                    
                }
//                .frame(width: 794, height: 794, alignment: .center)
//                .background(Color(.black).opacity(0))
                


    
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView()
    }
}
