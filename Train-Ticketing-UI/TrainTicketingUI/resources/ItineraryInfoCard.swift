//
//  ItineraryInfoCard.swift
//  TrainTicketingUI
//
//  Created by omer on 2/2/22.
//

import SwiftUI

struct ItineraryInfoCard: View {
    let title: String
    let cost: String
    let sisa: String
    let from: String
    let to: String
    let fromTime: String
    let toTime: String
    let travelClass: String
    let travelClassInfo: String
    
    var body: some View {
        VStack{
            HStack{
                Text(title)
                    .font(.footnote)
                    .fontWeight(.heavy)
                    .foregroundColor(Color("SecondaryText"))
                Spacer()
                
                VStack(alignment: .trailing){
                    Text(cost)
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("SecondaryText"))
                    
                    Text(sisa)
                        .font(.footnote)
                        .fontWeight(.light)
                        .foregroundColor(Color.red)
                }
            }
            
            HStack{
                VStack(alignment: .leading){
                    Text(from)
                        .font(.footnote)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.gray)
                    Text(fromTime)
                        .font(.footnote)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.gray)
                }
                
                HStack{
                    Circle()
                        .frame(width: 10, height: 10)
                        .foregroundColor(.gray)
                    
                    RoundedRectangle(cornerRadius: 18)
                        .frame(width: 10, height: 2)
                        .foregroundColor(.gray)
                    
                    RoundedRectangle(cornerRadius: 18)
                        .frame(width: 10, height: 2)
                        .foregroundColor(.gray)
                    
                    RoundedRectangle(cornerRadius: 18)
                        .frame(width: 10, height: 2)
                        .foregroundColor(.gray)
                    
                    Circle()
                        .frame(width: 10, height: 10)
                        .foregroundColor(Color("LightBlue"))
                }
                
                VStack(alignment: .trailing){
                    Text(to)
                        .font(.footnote)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.gray)
                    Text(toTime)
                        .font(.footnote)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.gray)
                }
                
                Spacer()
            }
            
            HStack{
                Text(travelClass)
                    .font(.footnote)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.all, 4.0)
                    .background(
                        RoundedRectangle(cornerRadius: 6, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                            .fill(Color("Orange"))
                    )
                
                Text(travelClassInfo)
                    .font(.footnote)
                    .fontWeight(.bold)
                    .foregroundColor(Color.gray)
                
                Spacer()
                
                Image(systemName: "arrow.right")
                    .foregroundColor(.white)
                    .frame(width: 32.0, height: 32.0)
                    .background(Color("LightBlue"))
                    .cornerRadius(6)
                    .padding()
                    .shadow(color: .blue, radius: 2, x:0, y:6)
            }
        }.padding().background(
            RoundedRectangle(cornerRadius: 6, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                .fill(Color.white)
        )
    }
}
