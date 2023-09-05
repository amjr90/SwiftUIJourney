//
//  RestaurantDetailView.swift
//  SwiftUINavigationList
//
//  Created by andres jaramillo on 26/05/23.
//

import SwiftUI

struct RestaurantDetailView: View {
    var restaurant: Restaurant
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack{
            Image(restaurant.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Text(restaurant.name)
                .font(.system(.title, design: .rounded))
                .fontWeight(.black)
            
            Spacer()
        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button{
                    dismiss()
                }label: {
                    Text("\(Image(systemName: "chevron.left")) \(restaurant.name)")
                        .foregroundColor(.black)
                }
            }
        }
    }
}

struct RestaurantDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantDetailView(restaurant: Restaurant(name: "Cafe Deadend", image: "cafedeadend"))
    }
}
