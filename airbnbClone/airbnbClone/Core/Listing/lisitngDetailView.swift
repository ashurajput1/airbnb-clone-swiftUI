//
//  lisitngDetailView.swift
//  airbnbClone
//
//  Created by Ashutosh Chauhan on 25/04/24.
//

import SwiftUI
import MapKit

struct lisitngDetailView: View {
    
    @Environment(\.dismiss) var dismiss
    @State private var cameraPosition:MapCameraPosition
    var listing:ListingModel
    
    init(listing:ListingModel){
        self.listing = listing
        let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: listing.latitude!, longitude: listing.longitude!), span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
        self._cameraPosition = State(initialValue: .region(region))
        
    }
    var body: some View {
        ScrollView
        {
            listingImageCarosoulView(images: self.listing.imageUrl!)
                .frame(height: 400)
                .overlay(alignment: .topLeading) {
                    HStack
                    {
                        Button(action: {
                            dismiss()
                        }, label: {
                            Image(systemName: "arrow.backward")
                                .resizable()
                                .scaledToFill()
                                .padding()
                                .background(.white)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                .frame(width:40,height:40)
                                .tint(.black)
                                
                                
                        })
                    }
                    .padding(.top,50)
                    .padding(.horizontal,20)
                }
            VStack(alignment: .leading) {
                Text(listing.title ?? "")
                    .bold()
                    .font(.title)
                VStack(alignment: .leading, spacing: 4) {
                    HStack() {
                        Image(systemName: "star.fill")
                        Text(String(listing.rating ?? 4))
                        Text("-")
                        Text(String(listing.reviews ?? 0) + " reviews")
                            .underline()
                            .bold()
                    }
                    Text("\(listing.city ?? ""),\(listing.state ?? "")")
                }
            }
            .frame(maxWidth:.infinity,alignment: .leading)
            .padding(.leading,5)
            
            Divider()
            
            
            HStack
            {
                
                VStack(alignment:.leading) {
                    Text("Entire \(listing.types.names) is Hosted by \(listing.ownerName ?? "NA")")
                        .frame(alignment: .leading)
                        .font(.title3)
                        .bold()
                    HStack
                    {
                        Text("4 guest-")
                        Text("4 bedrooms-")
                        Text("4 beds-")
                        Text("3 baths")
                    }
                    .font(.caption)
                    
                }
                .frame(width: 300,alignment: .leading)
                Spacer()
                
                Image(uiImage: UIImage(named: "jsmith-apva") ?? UIImage())
                    .resizable()
                    .scaledToFill()
                    .frame(width: 70,height: 70)
                    .clipShape(Circle())
            }
            .padding(.leading,5)
            .padding(.trailing,5)
            
            Divider()
            
            VStack{
                ForEach(0 ... 1,id: \.self){ index in
                    HStack
                    {
                        Image(systemName: "a.book.closed.fill.ko")
                        VStack(alignment:.leading)
                        {
                            Text("Self check-in")
                                .fontWeight(.semibold)
                            Text("superhosts are experienced,highly rated hosts who are committed to provide great stars for guests")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                    }
                }
                .frame(maxWidth:.infinity,alignment: .leading)
                .padding(.leading,5)
                
            }
            
            Divider()
            
            VStack(alignment:.leading) {
                Text("where you will sleep")
                    .padding(.all,10)
                    .bold()
                ScrollView(.horizontal) {
                    HStack(spacing:25)
                    {
                        ForEach(0 ... 4,id: \.self){ listing in
                            VStack
                            {
                                Image(systemName:"bed.double.fill")
                                    .padding(.bottom,5)
                                Text("bedRoom\(listing+1)")
                                
                            }
                            .frame(width: 132,height: 100)
                            .overlay {
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(lineWidth: 1)
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                }.scrollTargetBehavior(.paging)
            }
            
            Divider()
            
            VStack(alignment:.leading,spacing: 18) {
                Text("What this place offers")
                    .bold()
                ForEach( listing.amenities,id: \.self){ listing in
                    HStack(spacing:20)
                    {
                        Image(listing.amenetiesImage)
                            .resizable()
                            .frame(width: 30, height: 30)
                        Text(listing.amenetiesName)
                        
                    }
                    .padding(.leading)
                    
                }
            }
            .frame(maxWidth:.infinity,alignment: .leading)
            .padding()
            
            Divider()
            
            VStack(alignment:.leading,spacing: 15)
            {
                Text("Where you'll be")
                    .bold()
                Map(position: $cameraPosition)
                           .edgesIgnoringSafeArea(.all)
                
            }
            .frame(height: 300)
            .frame(maxWidth: .infinity,alignment: .leading)
            .padding()
            
            
        }
        .ignoresSafeArea()
        .padding(.bottom,70)
        .overlay(alignment: .bottom) {
            HStack
            {
                VStack(alignment:.leading) {
                    Text("$500")
                    Text("Total before taxes")
                    Text("Oct 15 - 20")
                        .underline()
                }
                .bold()
                Spacer()
                Button(action: {
                    print("add Reserve Btn functionality")
                }, label: {
                    Text("Reserve")
                        .frame(width: 100, height: 20)
                        .padding()
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .foregroundStyle(Color(uiColor: .white))
                        .bold()
                })
                
            }
            .padding(EdgeInsets(top: 20, leading: 15, bottom: 0, trailing: 15))
            .background(.white)
            
            
        }
        
    }
}

#Preview {
    lisitngDetailView(listing: DeveloperPreview.shared.listing[0])
}
