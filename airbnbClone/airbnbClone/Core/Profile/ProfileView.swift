//
//  ProfileView.swift
//  airbnbClone
//
//  Created by Ashutosh Chauhan on 30/04/24.
//

import SwiftUI

struct ProfileView: View {
    var profileOptions = ["Settings","Accessibility","Visit the Help Center"]
    var profileRowsImage = ["gear","questionmark.app.fill","person.circle"]
    var body: some View {
        NavigationStack
        {
            VStack
            {
                VStack(alignment:.leading, spacing: 32){
                    VStack(alignment:.leading,spacing: 12)
                    {
                        Text("Profile")
                            .font(.system(size: 40))
                            .bold()
                        Text("Login to start planning your next trip")
                            .font(.title3)
                    }

                    
                        Button(action: {
                            
                        }, label: {
                            Text("Log in")
                                .frame(width: 360,height: 40)
                                .background(.pink)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .foregroundStyle(.white)
                                .bold()
                                
                        })
                    
                    HStack{
                        Text("Don't have an account?")
                        Text("Sign up")
                            .underline()
                            .bold()
                    }
                }
                VStack(spacing:12){
                    ForEach(0 ... 2,id: \.self){ listing in
                        NavigationLink(value: listing) {
                            HStack
                            {
                                profileViewRow(rowLabel:profileOptions[listing],rowImage: profileRowsImage[listing])
                            }
                        }
                        .foregroundStyle(.black)
                       
                    }
                }
                .navigationDestination(for: Int.self) { listing in
                    settingView()
                }
                
                
            }
        }
            
    }
}

#Preview {
    ProfileView()
}
