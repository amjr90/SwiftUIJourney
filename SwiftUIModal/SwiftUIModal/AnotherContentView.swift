//
//  ContentView.swift
//  SwiftUIModal
//
//  Created by andres jaramillo on 29/05/23.
//

import SwiftUI

struct AnotherContentView: View {
    
    @State var selectedArticle: Article?
    
    var body: some View {
        
        NavigationStack {
            List(articles) { article in
                ZStack{
                    EmptyView()
                        .opacity(0)
                    
                    ArticleRow(article: article)
                        .onTapGesture {
                            selectedArticle = article
                        }
                }
                .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
            .sheet(item: $selectedArticle, content: { article in
                ArticleDetailView(article: article)
            })
//            .fullScreenCover(item: $selectedArticle, content: { article in
//                ArticleDetailView(article: article)
//            })
            
            .navigationTitle("Your reading")
        }
    }
}

struct AnotherContentView_Previews: PreviewProvider {
    static var previews: some View {
        AnotherContentView()
    }
}
