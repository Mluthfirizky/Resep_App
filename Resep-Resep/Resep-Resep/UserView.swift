//
//  UserView.swift
//  Resep-Resep
//
//  Created by m.luthfi rizky ginting on 14/04/21.
//

import SwiftUI

struct UserView: View {
    var body: some View {
        NavigationView{
        VStack{
            Image("pp")
                .resizable()
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.gray, lineWidth: 4))
                .frame(width: 150, height: 150)
            Text("M.luthfi rizky ginting")
                .font(.system(size: 20, weight: .bold))
                .foregroundColor(.gray)
            Text("Bogor, Indonesia")
                .font(.system(size: 15, weight: .semibold))
            HStack{
                VStack{
                    HStack{
                    Text("Recepies")
                        .font(.system(size: 20, weight: .semibold))
                        .foregroundColor(.gray)
                        Image(systemName: "map.fill")
                            .foregroundColor(.orange)
                    }
                    Text("4")
                        .padding(.top, 1)
                        .font(.system(size: 20, weight: .semibold))
                }
                .padding(.trailing, 100)
                VStack{
                    HStack{
                    Text("Likes")
                        .font(.system(size: 20, weight: .semibold))
                        .foregroundColor(.gray)
                        Image(systemName: "heart.fill")
                            .foregroundColor(.orange)
                    }
                    Text("356")
                        .padding(.top, 1)
                        .font(.system(size: 20, weight: .semibold))
                }
            }
            .padding(.top, 20)
            Form{
                Section{
                    HStack{
                        Text("Account")
                            .font(.system(size: 18, weight: .semibold))
                        Spacer()
                            Text("luthfi.ginting@icloud.com")
                                .font(.system(size: 15, weight: .light))
                            
                    }
                    HStack{
                        Text("Phone")
                            .font(.system(size: 18, weight: .semibold))
                        Spacer()
                        Text("085714811327")
                            .font(.system(size: 15, weight: .light))
                            .padding(.leading, 84)
                        
                    }
                }
            }
        }.navigationBarHidden(true)
        }
    }
}

struct User_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
