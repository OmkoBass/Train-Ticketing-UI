//
//  Itineraries.swift
//  TrainTicketingUI
//
//  Created by omer on 2/2/22.
//

import SwiftUI

struct Itineraries: View {
    @Binding var isItinerary: Bool
    
    @State var singleItinerary = false
    
    var body: some View {
        ZStack{
            ScrollView{
                VStack(alignment: .leading){
                    Spacer()
                    
                    HStack{
                        Image(systemName: "arrow.left")
                        
                        Text("Purwokerto - Solo Balapan")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(Color("SecondaryText"))
                    }
                    .padding(.vertical)
                    .onTapGesture {
                        isItinerary.toggle()
                    }
                    
                    HStack(){
                        VStack{
                            Text("15")
                                .fontWeight(.bold)
                                .foregroundColor(Color.gray)
                            
                            Text("SAB")
                                .fontWeight(.bold)
                                .foregroundColor(Color.gray)
                        }.padding(.all, 14.0).background(
                            RoundedRectangle(cornerRadius: 6, style: .continuous)
                                .fill(Color.white)
                        )
                        
                        VStack{
                            Text("16")
                                .fontWeight(.bold)
                                .foregroundColor(Color.gray)
                                
                            Text("MIN")
                                .fontWeight(.bold)
                                .foregroundColor(Color.gray)
                        }.padding(.all, 14.0).background(
                            RoundedRectangle(cornerRadius: 6, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                                .fill(Color.white)
                        )
                        
                        VStack{
                            Text("17")
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                
                            Text("SEN")
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                        }.padding(.all, 14.0).background(
                            RoundedRectangle(cornerRadius: 6, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                                .fill(
                                    LinearGradient(gradient: Gradient(colors: [Color("LightBlue"), .blue]), startPoint: .top, endPoint: .bottomTrailing)
                                )
                        )
                        
                        VStack{
                            Text("18")
                                .fontWeight(.bold)
                                .foregroundColor(Color.gray)
                                
                            Text("SEL")
                                .fontWeight(.bold)
                                .foregroundColor(Color.gray)
                        }.padding(.all, 14).background(
                            RoundedRectangle(cornerRadius: 6, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                                .fill(Color.white)
                        )
                        
                        VStack{
                            Text("19")
                                .fontWeight(.bold)
                                .foregroundColor(Color.gray)
                                
                            Text("RAB")
                                .fontWeight(.bold)
                                .foregroundColor(Color.gray)
                        }.padding(.all, 14).background(
                            RoundedRectangle(cornerRadius: 6, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                                .fill(Color.white)
                        )
                    }
                    
                    VStack{
                        NavigationLink(
                            destination: ItineraryStatsView(title: "Joglosemarkerto", cost: "Rp149.000", sisa: "Sisa2", from: "PWT", to: "SLO", fromTime: "14:00", toTime: "18:35", travelClass: "Ekonomi - A", travelClassInfo: "6 jam 35 menit", singleItinerary: $singleItinerary),
                            isActive: $singleItinerary,
                            label: {
                                ItineraryInfoCard(title: "Joglosemarkerto", cost: "Rp149.000", sisa: "Sisa2", from: "PWT", to: "SLO", fromTime: "14:00", toTime: "18:35", travelClass: "Ekonomi - A", travelClassInfo: "6 jam 35 menit")
                            })
                        
                        ItineraryInfoCard(title: "Joglosemarkerto", cost: "Rp74.000", sisa: "Sisa24", from: "PWT", to: "SLO", fromTime: "06:30", toTime: "11:35", travelClass: "Ekonomi - C", travelClassInfo: "5 jam 5 menit")
                        
                        ItineraryInfoCard(title: "Bima", cost: "Rp335.000", sisa: "", from: "PWT", to: "SLO", fromTime: "03:00", toTime: "06:35", travelClass: "Ekonomi - A", travelClassInfo: "3 jam 35 menit")
                        
                        ItineraryInfoCard(title: "Joglosemarkerto", cost: "Rp149.000", sisa: "Sisa2", from: "PWT", to: "SLO", fromTime: "14:00", toTime: "18:35", travelClass: "Ekonomi - A", travelClassInfo: "6 jam 35 menit")
                        
                        ItineraryInfoCard(title: "Joglosemarkerto", cost: "Rp149.000", sisa: "Sisa2", from: "PWT", to: "SLO", fromTime: "14:00", toTime: "18:35", travelClass: "Ekonomi - A", travelClassInfo: "6 jam 35 menit")
                        
                        ItineraryInfoCard(title: "Joglosemarkerto", cost: "Rp149.000", sisa: "Sisa2", from: "PWT", to: "SLO", fromTime: "14:00", toTime: "18:35", travelClass: "Ekonomi - A", travelClassInfo: "6 jam 35 menit")
                        
                        ItineraryInfoCard(title: "Joglosemarkerto", cost: "Rp149.000", sisa: "Sisa2", from: "PWT", to: "SLO", fromTime: "14:00", toTime: "18:35", travelClass: "Ekonomi - A", travelClassInfo: "6 jam 35 menit")
                    }
                }.padding()
            }
            .padding(.top)
            
            VStack{
                Spacer()

                BlurView(effect: .systemMaterial)
                .frame(width: 380, height: 100)
                .ignoresSafeArea(.all)
                .overlay(
                    Button(action: {}, label: {Text("FILTER")
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)})
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 18, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                            .fill(
                                Color(red: 0.95, green: 0.60, blue: 0.29)
                            )
                            .frame(width: 180, height: 55)
                    )
                )
            }
        }
        .navigationBarHidden(true)
        .background(Image("Background")
                        .resizable()
                        .edgesIgnoringSafeArea(.all)
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
    }
}

struct BlurView : UIViewRepresentable {
    var effect : UIBlurEffect.Style
    
    func makeUIView(context: UIViewRepresentableContext<BlurView>) -> some UIVisualEffectView {
        let blurEffect = UIBlurEffect(style: effect)
        let blurview = UIVisualEffectView(effect: blurEffect)
        
        return blurview
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}

//struct Itineraries_Previews: PreviewProvider {
//    static var previews: some View {
//        Itineraries(isItinerary: true)
//    }
//}
