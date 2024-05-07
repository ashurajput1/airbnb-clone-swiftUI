//
//  destinationSearchView.swift
//  airbnbClone
//
//  Created by FuturesoftM2 on 27/04/24.
//

import SwiftUI
enum destinationSearchOptions
{
    case location
    case dates
    case guest
}
struct destinationSearchView: View {
    @Binding var show:Bool
    @State var destination = ""
    @State var chooseDestination:destinationSearchOptions = .dates
    @State var states = 0
    @State var steps = 0
    var body: some View {
        VStack
        {
            VStack
            {
              
                Button(action: {
                    print("lkmlmlk")
                    show.toggle()
                }, label: {
                    HStack
                    {
                        Image(systemName: "multiply")
                            .padding(.all,30)
                            .frame(width: 30,height: 100)
                            .tint(.black)
                            .overlay {
                                Circle()
                                    .stroke(lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.black)
                            }
                        Spacer()
                        Button(action: {
                            destination = ""
                            
                        }, label: {
                            Text("Clear")
                                .bold()
                        })
                    }
                    .padding(.horizontal)
                })
            }
            VStack
            {
                if chooseDestination == .location
                {
                    VStack(alignment:.leading)
                    {
                        Text("Where to?")
                            .font(.title2)
                            .padding()
                        Spacer()
                        HStack
                        {
                            Image(systemName: "magnifyingglass")
                            TextField("Search Destination", text: $destination)
                        }
                        .frame(height: 40)
                        .frame(maxWidth:.infinity)
                        
                        
                        .overlay {
                            RoundedRectangle(cornerRadius: 15.0)
                                .stroke(lineWidth: 0.5)
                        }
                        .padding()
                        
                       
                        
                        
                    }
                    .frame(height: 150)
                    .frame(maxWidth: .infinity)
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .padding()
                   
                   
                    
                }
                else
                {
                    ExtractedView(title: "Where", description: "Add Destination")
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                        .padding()
                }
            }
            .onTapGesture {
                withAnimation(.snappy) {
                    chooseDestination = .location
                }
              
            }
            
            
            
            
            
            
            
            VStack
            {
                if chooseDestination == .dates
                {
                    VStack(alignment:.leading)
                    {
                        Text("When's your trip?")
                            .bold()
                        DatePicker("From", selection: .constant(Date()), displayedComponents: .date)
                        Divider()
                        DatePicker("end", selection: .constant(Date()), displayedComponents: .date)
                       
                    }
                    .padding()
                }
                else
                {
                    ExtractedView(title: "When", description: "Add Dates")
                       
                }
            }
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 5)
            .padding()
            .onTapGesture {
                withAnimation(.snappy) {
                    chooseDestination = .dates
                }
                
            }
           VStack
            {
                if chooseDestination == .guest
                {
                    VStack(alignment:.leading) {
                        Text("Who's Coming")
                            .font(.title)
                            .fontWeight(.bold)
                            .padding()
                        HStack
                        {
                            Stepper("\(steps)") {
                                steps  += 1
                            } onDecrement: {
                                steps -= 1
                            }
                            .padding()
                        }
                    }
                    .background(.white)
                    .cornerRadius(25)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .padding()
                    
                } else
                {
                    ExtractedView(title: "Who", description: "Add Guest")
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                        .padding()
                        .onTapGesture {
                            withAnimation(.snappy) {
                                chooseDestination = .guest
                            }
                           
                        }
                }
            }

            


            

        }
        Spacer()
        .background(.red)

        
    }
    
}
#Preview {
    destinationSearchView(show: .constant(false),chooseDestination: .location)
}

struct ExtractedView: View {
    var title:String
    var description:String
    var body: some View {
        VStack
        {
            HStack
            {
                Text(title)
                    .padding()
                Spacer()
                Text(description)
                    .padding()
                    .bold()
            }
        }
    }
}