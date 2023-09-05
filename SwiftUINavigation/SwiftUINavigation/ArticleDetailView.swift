//
//  ArticleDetailView.swift
//  SwiftUINavigation
//
//  Created by andres jaramillo on 26/05/23.
//

import SwiftUI

struct ArticleDetailView: View {
    @Environment(\.dismiss) var dismiss
    var article: Article
    var body: some View {
        ZStack {
            ScrollView{
                VStack(alignment: .leading){
                    Image(article.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                    Group{
                        Text(article.title)
                            .font(.system(.title, design: .rounded))
                            .fontWeight(.black)
                            .lineLimit(3)
                        
                        Text("By \(article.author.uppercased())")
                            .font(.system(.subheadline))
                            .foregroundColor(.secondary)
                        
                    }
                    .padding(.bottom, 0)
                    .padding(.horizontal)
                    
                    Text(article.content)
                        .font(.body)
                        .padding()
                        .lineLimit(1000)
                        .multilineTextAlignment(.leading)
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .ignoresSafeArea(.all, edges: .top)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem (placement: .navigationBarLeading){
                Button (action:{
                    dismiss()
                }){
                    Image(systemName: "chevron.left.circle.fill")
                        .font(.title)
                        .foregroundColor(.white)
                }

            }
        }
    }
}

struct ArticleDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleDetailView(article: articles[0])
    }
}
