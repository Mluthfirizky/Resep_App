//
//  DetailResep.swift
//  Resep-Resep
//
//  Created by m.luthfi rizky ginting on 14/04/21.
//

import SwiftUI

struct DetailResep: View {
    let dataResep : dataAll
    var body: some View {
        
        
        
        ZStack{
            Image("bg")
                .resizable()
                .ignoresSafeArea()
                .padding(.bottom, 1)
                .opacity(0.6)
            ScrollView(showsIndicators: false){
                VStack(alignment:.leading){
                    HStack(alignment: .top){
                        Image(dataResep.gambar)
                            .resizable()
                            .frame(width: 180, height: 220)
                            .cornerRadius(20)
                        VStack(alignment: .leading){
                            Text(dataResep.makanan)
                                .foregroundColor(.orange)
                                .font(.system(size: 20, weight: .bold))
                            Text(dataResep.penulis)
                                .font(.system(size: 16))
                                .foregroundColor(.gray)
                            Text("Deskripsi:")
                                .padding(.top, 6.0)
                            
                            Text(dataResep.desc)
                                .font(.system(size: 17, weight: .light))
                                .padding(.top, 1)
                                .frame(width: 190, alignment: .leading)
                        }
                    }
                    VStack(alignment: .leading){
                        Text("Resep lainnya:")
                            .foregroundColor(.orange)
                            .font(.system(size: 18, weight: .semibold))
                        
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack{
                                VStack{
                                    Image("sate")
                                        .resizable()
                                        .frame(width: 100, height: 100)
                                        .cornerRadius(10)
                                    
                                    Text("Sate bumbu kacang")
                                        .font(.system(size: 17))
                                        .frame(width: 100)
                                }
                                .padding(.trailing, 20)
                                VStack{
                                    Image("batagor")
                                        .resizable()
                                        .frame(width: 100, height: 100)
                                        .cornerRadius(10)
                                    
                                    Text("batagor ikan tenggiri")
                                        .font(.system(size: 17))
                                        .frame(width: 100)
                                }
                                .padding(.trailing, 20)
                                VStack{
                                    Image("baso")
                                        .resizable()
                                        .frame(width: 100, height: 100)
                                        .cornerRadius(10)
                                    
                                    Text("Baso sapi kuah")
                                        .font(.system(size: 17))
                                        .frame(width: 100)
                                }
                                
                            }
                            
                        }
                        .padding(.top, -2)
                        .padding(.leading, 15)
                        Spacer()
                        Spacer()
                        Text("Bahan-Bahan")
                            .foregroundColor(.orange)
                            .underline()
                            .font(.system(size: 25, weight: .bold))
                        Spacer()
                        Text(dataResep.bahan)
                        
                        Text("Langkah")
                            .foregroundColor(.orange)
                            .underline()
                            .font(.system(size: 25, weight: .bold))
                            .padding(.top, 20)
                            .padding(.bottom, 10)
                        
                        Text(dataResep.langkah)
                            .frame(width: 350)
                    }
                    
                    
                }
                .padding(.vertical, 10)
                .padding(.leading, 10)
                
                
            }
            .navigationBarTitle(dataResep.makanan, displayMode: .inline)
            
            
            
        }
        
        
    }
}
struct DetailResep_Previews: PreviewProvider {
    static var previews: some View {
        DetailResep(dataResep: dataAll(id: 0, makanan: "", gambar: "", desc: "", rating: "", durasi: "", bahan: "", langkah: "", lainnya: "", penulis: ""))
    }
}
