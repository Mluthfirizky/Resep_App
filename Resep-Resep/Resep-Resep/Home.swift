//
//  SwiftUIView.swift
//  Resep-Resep
//
//  Created by m.luthfi rizky ginting on 15/04/21.
//

import SwiftUI



struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
       Home()
            
    }
}

struct Home: View {

    var body: some View {
        
        NavigationView{
            List(detailData){ data in
            
                NavigationLink(destination: DetailResep(dataResep: data)){
 

                        HStack{
                            Image(data.gambar)
                                .resizable()
                                .frame(width: 100, height: 100)
                                .cornerRadius(10)
                            VStack(alignment: .leading){
                                HStack{
                                    Text(data.makanan)
                                        .font(.system(size: 13,weight: .semibold))
                                    Spacer()
                                    Text(data.durasi)
                                        .font(.system(size: 13,weight: .light))

                                    
                                    
                                    
                                }
                                HStack{
                                Text(data.desc)
                                    .font(.system(size: 10,weight: .light))
                                    .foregroundColor(.gray)
                                    .frame(width: 120, height: 65)
                                    HStack{
                                    Image(systemName: "star.fill")
                                        
                                    Text(data.rating)
                                    }.padding(.leading, 50)
                            }
                            }
                        }
                        
                        }
            }.listStyle(GroupedListStyle())
            .foregroundColor(.orange)
            .navigationBarTitle(Text("Resep-Resep favorit"))
                }
           
            }
        
    }

