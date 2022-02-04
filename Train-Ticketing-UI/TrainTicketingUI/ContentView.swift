//
//  ContentView.swift
//  TrainTicketingUI
//
//  Created by omer on 2/2/22.
//

import SwiftUI

struct ContentView: View {
    @State private var isItinerary = false
    
    var body: some View {
        NavigationView{
            ZStack {
                ScrollView{
                    VStack(alignment: .leading) {
                        HStack {
                            Text("Mau pergi ke mana kali ini?")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(Color("SecondaryText"))
                            
                            Image("Hand")
                        }
                        .padding(.horizontal)
                        
                        VStack(spacing: 10){
                            HStack{
                                Text("Keberangkatan")
                                    .font(.footnote)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("LightBlue"))
                                Spacer()
                                    .padding(.horizontal)
                                Text("Tujuan")
                                    .font(.footnote)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("LightBlue"))
                            }
                            
                            
                            HStack{
                                Text("PWT")
                                    .fontWeight(.heavy)
                                    .foregroundColor(Color("SecondaryText"))
                                Spacer()
                                
                                ZStack{
                                    Image(systemName: "arrow.right")
                                        .padding([.leading, .bottom], 12.0)
                                        .foregroundColor(Color("LightBlue"))
                                    Image(systemName: "arrow.left")
                                        .padding([.top, .trailing], 12.0)
                                        .foregroundColor(Color("LightBlue"))
                                }
                                Spacer()
                                Text("SLO")
                                    .fontWeight(.heavy)
                                    .foregroundColor(Color("SecondaryText"))
                            }
                            
                            HStack{
                                NavigationLink(
                                    destination: Itineraries(isItinerary: $isItinerary),
                                    isActive: $isItinerary,
                                    label: {
                                        Text("Stasiun Purwokerto")
                                            .font(.footnote)
                                            .fontWeight(.thin)
                                            .foregroundColor(Color("SecondaryText"))
                                    })
                                
                                Spacer()
                                
                                Text("Stasiun Solo Balapan")
                                    .font(.footnote)
                                    .fontWeight(.thin)
                                    .foregroundColor(Color("SecondaryText"))
                            }
                            
                            Divider()
                            
                            HStack {
                                Text("Tanggal keberangakatan")
                                    .font(.footnote)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("LightBlue"))
                                
                                Spacer()
                            }
                            
                            HStack{
                                Text("Rabu, 12 Agustus 2020")
                                    .fontWeight(.heavy)
                                    .foregroundColor(Color("SecondaryText"))
                                Spacer()
                                Image(systemName: "person")
                                    .background(Color.gray)
                                    .foregroundColor(/*@START_MENU_TOKEN@*/.gray/*@END_MENU_TOKEN@*/)
                                    .cornerRadius(18)
                                Text("Pulang pergi")
                                    .font(.footnote)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("SecondaryText"))
                            }
                            
                            HStack{
                                VStack(spacing: 4){
                                    Text("Jumlah penumpang")
                                        .font(.footnote)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("LightBlue"))
                                    
                                    HStack(spacing: 22){
                                        Image(systemName: "minus.circle")
                                            .foregroundColor(.gray)
                                        Text("1")
                                        Image(systemName: "plus.circle")
                                    }
                                    
                                }
                                
                                Spacer()
                                
                                VStack{
                                    Button(action: {}, label: {Text("CARI TIKET")
                                            .fontWeight(.heavy)
                                            .foregroundColor(Color.white)})
                                        .padding()
                                        .background(
                                            RoundedRectangle(cornerRadius: 18, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                                                .fill(
                                                    Color(red: 0.95, green: 0.60, blue: 0.29)
                                                )
                                        )
                                }
                            }
                        }.padding().background(
                            RoundedRectangle(cornerRadius: 18, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                                .fill(Color.white)
                        )
                        .padding(.horizontal)
                        
                        Text("Tiket saya")
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(Color("SecondaryText"))
                            .padding()
                            .padding(.leading)
                        
                        ScrollView(.horizontal){
                            HStack{
                                HStack{
                                    Button(action: {}, label: {Text("Besok")
                                            .font(.footnote)
                                            .fontWeight(.bold)
                                            .foregroundColor(Color.white)
                                            .multilineTextAlignment(.center)})
                                        .padding(.all, 8.0)
                                        .background(
                                            RoundedRectangle(cornerRadius: 6, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                                                .fill(Color(red: 0.95, green: 0.60, blue: 0.29))
                                        )
                                    
                                    VStack(alignment: .leading){
                                        Text("Bengawan")
                                            .fontWeight(.bold)
                                            .foregroundColor(Color("SecondaryText"))
                                        
                                        Text("PWT-LPY")
                                            .font(.footnote)
                                            .fontWeight(.light)
                                            .foregroundColor(Color("SecondaryText"))
                                    }
                                    
                                    Image(systemName: "arrow.right")
                                        .foregroundColor(.white)
                                        .frame(width: 32.0, height: 32.0)
                                        .background(Color("LightBlue"))
                                        .cornerRadius(6)
                                        .shadow(color: .blue, radius: 2, x:0, y:2)
                                        .padding()
                                }.padding(.leading).background(
                                    RoundedRectangle(cornerRadius: 18, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                                        .fill(Color.white)
                                )
                                
                                VStack{
                                    HStack{
                                        VStack{
                                            Text("7 Hari")
                                                .foregroundColor(Color("LightBlue"))
                                                .padding(.all, 4.0)
                                                .background(
                                                    RoundedRectangle(cornerRadius: 6, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                                                        .fill(Color("LighterBlue"))
                                                        .shadow(color: .blue, radius: 2, x:0, y:2)
                                                )
                                        }
                                        
                                        VStack(alignment: .leading){
                                            Text("Bims")
                                                .fontWeight(.bold)
                                                .foregroundColor(Color("SecondaryText"))
                                            Text("YK - PWT")
                                                .font(.footnote)
                                                .fontWeight(.light)
                                                .foregroundColor(Color("SecondaryText"))
                                        }
                                    }
                                }.padding().background(
                                    RoundedRectangle(cornerRadius: 18, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                                        .fill(Color.white)
                                )
                            }
                            .padding(.leading)
                        }
                        
                        Text("Berita")
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(Color("SecondaryText"))
                            .padding()
                            .padding(.leading)
                        
                        HStack{
                            HStack{
                                VStack(alignment: .leading){
                                    Text("Tips")
                                        .foregroundColor(Color("LightBlue"))
                                        .padding(.all, 4.0)
                                        .background(
                                            RoundedRectangle(cornerRadius: 6, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                                                .fill(Color("LighterBlue"))
                                        )
                                    
                                    Text("Berita")
                                        .font(.headline)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("SecondaryText"))
                                    
                                    Text("komunikasi")
                                        .font(.headline)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("SecondaryText"))
                                    
                                    Text("selama di kereta")
                                        .font(.headline)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("SecondaryText"))
                                }
                                
                                Spacer()
                                
                                ZStack {
                                    RoundedRectangle(cornerRadius: 50)
                                    .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 0.52, green: 0.83, blue: 1), Color(red: 0.14, green: 0.59, blue: 0.84)]), startPoint: .topTrailing, endPoint: .bottomLeading))
                                    .offset(x: 5, y: 0)
                                    .frame(width: 90, height: 100)
                                    .overlay(RoundedRectangle(cornerRadius: 50).stroke(LinearGradient(gradient: Gradient(colors: [Color.white, Color(red: 1, green: 1, blue: 1, opacity: 0)]), startPoint: .leading, endPoint: .trailing), lineWidth: 1))

                                    Ellipse()
                                    .fill(Color(red: 0.08, green: 0.36, blue: 0.48))
                                    .offset(x: 21.50, y: 16.50)
                                    .frame(width: 35, height: 35)
                                    .blur(radius: 48)
                                }
                                .frame(width: 100, height: 100)
                                .background(LinearGradient(gradient: Gradient(colors: [Color(red: 0.34, green: 0.80, blue: 0.95), Color(red: 0.89, green: 0.93, blue: 0.95), Color(red: 0.89, green: 0.97, blue: 1), Color(red: 0.43, green: 0.74, blue: 0.90), Color(red: 0.14, green: 0.59, blue: 0.84)]), startPoint: .top, endPoint: .bottom))
                                .cornerRadius(50)
                                .frame(width: 100, height: 100)
                            }.padding().background(
                                RoundedRectangle(cornerRadius: 18, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                                    .fill(Color.white)
                            )
                        }
                        .padding(.horizontal)
                        
                    }
                    .padding(.top)
                    
                    Spacer()
                }
            }.background(Image("Background")
                            .resizable()
                            .edgesIgnoringSafeArea(.all)
                            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
            .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
