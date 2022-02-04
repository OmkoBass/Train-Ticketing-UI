//
//  PickSeatView.swift
//  TrainTicketingUI
//
//  Created by omer on 2/3/22.
//

import SwiftUI

struct PickSeatView: View {
    let name: String
    let travelClass: String
    let travelClassInfo: String
    
    @State var tersediaChecked = false
    @State var terisiChecked = true
    @State var terpilihChecked = true
    
    @Binding var pickSeat: Bool
    
    var body: some View {
        ScrollView{
            VStack(spacing: 12){
                Spacer()
                
                HStack{
                    Text(name)
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(Color("SecondaryText"))
                    
                    Spacer()
                    
                    VStack(alignment: .trailing, spacing: 16){
                        Text(travelClass)
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(Color("SecondaryText"))
                        Text(travelClassInfo)
                            .fontWeight(.bold)
                            .foregroundColor(Color("LightBlue"))
                    }
                }
                
                HStack{
                    HStack{
                        Image(systemName: tersediaChecked ? "checkmark.square.fill" : "square")
                            .foregroundColor(Color.gray)
                            .onTapGesture {
                                tersediaChecked.toggle()
                            }
                        
                        Text("Tersedia")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(Color.gray)
                    }
                    
                    Spacer()
                    
                    HStack{
                        Image(systemName: terisiChecked ? "square.fill" : "square")
                            .foregroundColor(Color("Orange"))
                            .onTapGesture {
                                terisiChecked.toggle()
                            }
                        
                        Text("Terisi")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(Color.gray)
                    }
                    
                    Spacer()
                    
                    HStack{
                        Image(systemName: terpilihChecked ? "square.fill" : "square")
                            .foregroundColor(Color("LightBlue"))
                            .onTapGesture {
                                terpilihChecked.toggle()
                            }
                        
                        Text("Terpilih")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(Color.gray)
                    }
                    
                }.padding()
                
                HStack(spacing: 20){
                    Text("Gerbong")
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .foregroundColor(Color("SecondaryText"))
                    
                    Spacer()
                    
                    Text("A")
                        .fontWeight(.bold)
                        .foregroundColor(Color("SecondaryText"))
                    Text("B")
                        .fontWeight(.bold)
                        .foregroundColor(Color("SecondaryText"))
                    Text("C")
                        .fontWeight(.bold)
                        .foregroundColor(Color("SecondaryText"))
                    
                    Spacer()
                    
                    Text("D")
                        .fontWeight(.bold)
                        .foregroundColor(Color("SecondaryText"))
                    Text("E")
                        .fontWeight(.bold)
                        .foregroundColor(Color("SecondaryText"))
                }.padding()
                
                HStack{
                    VStack(spacing: 52){
                        Text("1")
                            .padding(.horizontal).background(
                                RoundedRectangle(cornerRadius: 8, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                                    .fill(Color.white)
                                    .frame(width: 40, height: 100)
                            )
                            .padding()
                        
                        Text("2")
                            .padding(.horizontal).background(
                                RoundedRectangle(cornerRadius: 8, style: .continuous)
                                    .fill(Color("LightBlue"))
                                    .frame(width: 40, height: 100)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 8)
                                            .strokeBorder(Color.blue, lineWidth: 1)
                                    )
                                    .shadow(color: .blue, radius: 2, x:0, y:2)
                            )
                            .padding()
                        
                        Text("3")
                            .padding(.horizontal).background(
                                RoundedRectangle(cornerRadius: 8, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                                    .fill(Color.white)
                                    .frame(width: 40, height: 100)
                            )
                            .padding()
                    }
                    
                    Spacer()
                    
                    VStack{
                        ForEach(0..<8) { i in
                            if i == 3 {
                                RoundedRectangle(cornerRadius: 6)
                                    .frame(width: 25, height: 25)
                                    .foregroundColor(Color("LightBlue"))
                                    .shadow(color: .blue, radius: 2, x:0, y:2)
                            } else if i == 5 || i == 6 {
                                RoundedRectangle(cornerRadius: 6)
                                    .frame(width: 25, height: 25)
                                    .foregroundColor(Color("Orange"))
                                    .shadow(color: .orange, radius: 2, x:0, y:2)
                            } else {
                                RoundedRectangle(cornerRadius: 6)
                                    .frame(width: 25, height: 25)
                                    .foregroundColor(Color.white)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 8)
                                            .strokeBorder(Color.gray, lineWidth: 1)
                                    )
                            }
                            
                        }
                    }
                    
                    VStack{
                        ForEach(0..<8) { i in
                            if i == 6 {
                                RoundedRectangle(cornerRadius: 6)
                                    .frame(width: 25, height: 25)
                                    .foregroundColor(Color("Orange"))
                                    .shadow(color: .orange, radius: 2, x:0, y:2)
                            } else {
                                RoundedRectangle(cornerRadius: 6)
                                    .frame(width: 25, height: 25)
                                    .foregroundColor(Color.white)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 8)
                                            .strokeBorder(Color.gray, lineWidth: 1)
                                    )
                            }
                        }
                    }
                    
                    VStack{
                        ForEach(0..<8) { i in
                            if i == 6 || i == 4 {
                                RoundedRectangle(cornerRadius: 6)
                                    .frame(width: 25, height: 25)
                                    .foregroundColor(Color("Orange"))
                                    .shadow(color: .orange, radius: 2, x:0, y:2)
                            } else {
                                RoundedRectangle(cornerRadius: 6)
                                    .frame(width: 25, height: 25)
                                    .foregroundColor(Color.white)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 8)
                                            .strokeBorder(Color.gray, lineWidth: 1)
                                    )
                            }
                        }
                    }
                    
                    Spacer()
                    
                    VStack{
                        ForEach(0..<8) { i in
                            RoundedRectangle(cornerRadius: 6)
                                .frame(width: 25, height: 25)
                                .foregroundColor(Color.white)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 8)
                                        .strokeBorder(Color.gray, lineWidth: 1)
                                )
                        }
                    }
                    
                    VStack{
                        ForEach(0..<8) { i in
                            RoundedRectangle(cornerRadius: 6)
                                .frame(width: 25, height: 25)
                                .foregroundColor(Color.white)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 8)
                                        .strokeBorder(Color.gray, lineWidth: 1)
                                )
                        }
                    }
                }.padding()
                
                Spacer()
                
                Button(action: {}, label: {Text("PILIH TEMPAT DUDUK")
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)})
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 18, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                            .fill(
                                LinearGradient(gradient: Gradient(colors: [Color("LightBlue"), .white]), startPoint: .bottom, endPoint: .topTrailing)
                            )
                            .shadow(color: .blue, radius: 2, x:0, y:2)
                    )
                    .onTapGesture {
                        pickSeat = false
                    }
                
                Spacer()
            }.padding()
        }.navigationBarHidden(true)
        .background(Image("Background")
                        .resizable()
                        .edgesIgnoringSafeArea(.all)
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
    }
}

//struct PickSeatView_Previews: PreviewProvider {
//    static var previews: some View {
//        PickSeatView(name: "Pilih tempat dudukmu", travelClass: "Ekonomi (C)", travelClassInfo: "Gerbong 2 - 3A")
//    }
//}
