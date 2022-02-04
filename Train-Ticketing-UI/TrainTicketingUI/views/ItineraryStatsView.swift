//
//  ItineraryStatsView.swift
//  TrainTicketingUI
//
//  Created by omer on 2/2/22.
//

import SwiftUI

enum Identification: String, CaseIterable, Identifiable {
    case Paspor, Drivers
    var id: Self { self }
}

struct ItineraryStatsView: View {
    let title: String
    let cost: String
    let sisa: String
    let from: String
    let to: String
    let fromTime: String
    let toTime: String
    let travelClass: String
    let travelClassInfo: String
    
    @State private var idField = "A 38910381"
    @State private var fullName = "Ibnu Batutah"
    
    static var uniqueKey: String {
        UUID().uuidString
    }

    static let options: [DropdownOption] = [
        DropdownOption(key: uniqueKey, value: "Paspor"),
        DropdownOption(key: uniqueKey, value: "ID"),
        DropdownOption(key: uniqueKey, value: "Driver")
    ]
    
    @Binding var singleItinerary: Bool
    @State var pickSeat = false
    
    var body: some View {
        ZStack{
            ScrollView{
                VStack(alignment: .leading){
                    Group {
                        HStack{
                            Image(systemName: "arrow.left")
                            
                            Text("Ringkasan pemesanan")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(Color("SecondaryText"))
                        }
                        .padding(.top)
                        .onTapGesture {
                            singleItinerary = false
                        }
                        
                        ItineraryInfoCard(title: title, cost: cost, sisa: sisa, from: from, to: to, fromTime: fromTime, toTime: toTime, travelClass: travelClass, travelClassInfo: travelClassInfo
                        )
                    }.padding(.top)
                    
                    HStack{
                        Image(systemName: "heart.fill")
                            .foregroundColor(Color("Orange"))
                        Text("Penumpang tersimpan")
                            .foregroundColor(Color("SecondaryText"))
                            .fontWeight(.bold)
                        
                        Spacer()
                    }.padding(.horizontal)
                    
                    ScrollView(.horizontal){
                        HStack{
                            HStack{
                                VStack(alignment: .leading){
                                    Text("Chiko Armani")
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("SecondaryText"))
                                    Text("chiko@armani.com")
                                        .font(.footnote)
                                        .fontWeight(.light)
                                        .foregroundColor(Color.gray)
                                }
                                
                                Text("Tambakhan penumpang")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .padding(.all, 6.0)
                                    .background(
                                        RoundedRectangle(cornerRadius: 18, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                                            .fill(Color("Orange"))
                                    )
                            }.padding().background(
                                RoundedRectangle(cornerRadius: 6, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                                    .fill(Color.white)
                            )
                            
                            HStack{
                                VStack(alignment: .leading){
                                    Text("Samsung Armani")
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("SecondaryText"))
                                    Text("samsung@sony.com")
                                        .font(.footnote)
                                        .fontWeight(.light)
                                        .foregroundColor(Color.gray)
                                }
                                
                                Text("Tambakhan penumpang")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .padding(.all, 6.0)
                                    .background(
                                        RoundedRectangle(cornerRadius: 18, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                                            .fill(Color("Orange"))
                                    )
                            }.padding().background(
                                RoundedRectangle(cornerRadius: 6, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                                    .fill(Color.white)
                            )
                        }
                    }
                    
                    HStack{
                        Image(systemName: "person.2.fill")
                            .foregroundColor(Color("Orange"))
                        Text("Detail penumpang")
                            .foregroundColor(Color("SecondaryText"))
                            .fontWeight(.bold)
                        
                        Spacer()
                        
                        Text("+ Tambah penumpang")
                            .font(.caption2)
                            .fontWeight(.bold)
                            .foregroundColor(Color("Orange"))
                    }.padding(.horizontal)
                    
                    HStack{
                        ZStack{
                            Circle()
                                .frame(width: 50, height: 50)
                                .foregroundColor(Color("Orange"))
                                .shadow(color: Color("Orange"), radius: 2, x:0, y:4)
                            Image(systemName: "smiley.fill")
                                .foregroundColor(.white)
                                .scaleEffect(1.75)
                        }
                        
                        Text("Penumpang 1")
                            .foregroundColor(Color("SecondaryText"))
                            .fontWeight(.heavy)
                        
                        Spacer()
                        
                        Image(systemName: "arrow.up")
                            .foregroundColor(.gray)
                    }.padding()
                    
                    HStack{
                        Text("Jenis Identitas")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(Color.gray)
                        Text("Nomor identitas")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(Color.gray)
                        Spacer()
                    }.padding(.horizontal)
                    
                    HStack{
                        DropdownSelector(
                            placeholder: "Paspor",
                            options: ItineraryStatsView.options,
                            onOptionSelected: { option in
                                print(option)
                        })
                        .frame(width: 100)
                        .overlay(
                            Rectangle().frame(height: 2)
                                .padding(.horizontal, 24)
                                .foregroundColor(Color("LightBlue"))
                                .background(Color("LightBlue"))
                                .offset(y: 22)
                                .frame(width: 100)
                        )
                        
                        TextField("ID", text: $idField)
                            .padding(12)
                            .background(
                                RoundedRectangle(cornerRadius: 5).fill(Color(red: 0.87, green: 0.87, blue: 0.87))
                            )
                            .foregroundColor(Color("SecondaryText"))
                            .overlay(
                                Rectangle().frame(height: 2)
                                    .padding(.horizontal, 24)
                                    .foregroundColor(.gray)
                                    .background(Color.gray)
                                    .offset(y: 22)
                            )
                        Spacer()
                    }.padding([.leading, .bottom, .trailing])
                    
                    HStack{
                        Text("Nama lengkap")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(Color.gray)
                        
                        Spacer()
                    }.padding(.horizontal)
                    
                    VStack(alignment: .leading) {
                        TextField("Nama lengkap", text: $fullName)
                            .padding(12)
                            .background(
                                RoundedRectangle(cornerRadius: 5).fill(Color(red: 0.87, green: 0.87, blue: 0.87))
                            )
                            .foregroundColor(Color("SecondaryText"))
                            .overlay(
                                Rectangle().frame(height: 2)
                                    .padding(.horizontal, 24)
                                    .foregroundColor(.gray)
                                    .background(Color.gray)
                                    .offset(y: 22)
                            )
                        
                        Text("Penumpang bayi tidak mendapat kursi sendiri. Penumpang dibawah 18 dapat mengisi dengan nomor tanda penegal")
                            .font(.footnote)
                            .foregroundColor(Color.gray)
                    }.padding(.horizontal)
                    
                    HStack{
                        Spacer()
                        
                        Button(action: {}, label: {Text("PIHIL KURSI")
                                .fontWeight(.heavy)
                                .foregroundColor(Color.gray)})
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 18, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                                    .fill(Color.white)
                                    .frame(width: 150)
                            )
                            .frame(width: 150)
                        
                        Spacer()
                        
                        
                        NavigationLink(
                            destination: PickSeatView(name: title, travelClass: travelClass, travelClassInfo: travelClassInfo, pickSeat: $pickSeat),
                            isActive: $pickSeat,
                            label: {
                                Button(action: {}, label: {Text("LANJUT")
                                        .font(.body)
                                        .fontWeight(.heavy)
                                        .foregroundColor(Color.white)})
                                    .padding()
                                    .background(
                                        RoundedRectangle(cornerRadius: 18, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                                            .fill(
                                                Color(red: 0.95, green: 0.60, blue: 0.29)
                                            )
                                            .frame(width: 150)
                                    )
                                    .frame(width: 150)
                                    
                            })
                        
                        Spacer()
                    }.padding(.vertical)
                }.padding()
            }
        }.navigationBarHidden(true)
        .background(Image("Background")
                        .resizable()
                        .edgesIgnoringSafeArea(.all)
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
    }
}

//struct ItineraryStatsView_Previews: PreviewProvider {
//    static var previews: some View {
//        ItineraryStatsView(
//            title: "Joglosemarkerto", cost: "Rp149.000", sisa: "Sisa2", from: "PWT", to: "SLO", fromTime: "14:00", toTime: "18:35", travelClass: "Ekonomi - A", travelClassInfo: "6 jam 35 menit"
//        )
//    }
//}
