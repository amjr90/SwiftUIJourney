//
//  Challenge.swift
//  SwiftUIList
//
//  Created by andres jaramillo on 2/05/23.
//

import SwiftUI

struct Challenge: View {
    let articles = Article.mockArticles()
    var body: some View {
        List(articles){ article in
            ArticleView(article: article)
        }
        .listStyle(.plain)
    }
}

struct Challenge_Previews: PreviewProvider {
    static var previews: some View {
        Challenge()
    }
}

struct ArticleView: View {
    let article: Article
    
    var body: some View{
        VStack(alignment: .leading, spacing: 3){
            Image(article.image)
                .resizable()
                .scaledToFill()
                .frame(height: 200)
                .cornerRadius(5)
            Text(article.title)
                .font(.system(.title, design: .rounded))
                .bold()
            Text(article.author.uppercased())
                .font(.system(.footnote))
                .foregroundColor(.gray)
            HStack{
                ForEach(0...article.rating, id: \.self) { index in
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                }
            }
            Text(article.content)
                .font(.system(.footnote))
                .foregroundColor(.gray)
        }
        .padding(.horizontal)
    }
}

struct Article: Identifiable {
    let id = UUID()
    let image: String
    let title: String
    let author: String
    let rating: Int
    let content: String
    
    static func mockArticle()-> Article{
        return Article(image: "flutter-app", title: "This is a title", author: "Andres Jaramillo", rating: 3, content: "asdfasfasfsadfasklasdfjkannafkjsadfnasdfasdfasfasfsadfasklasdfjkannafkjsadfnasdfasdfasfasfsadfasklasdfjkannafkjsadfnasdfasdfasfasfsadfasklasdfjkannafkjsadfnasdf")
    }
    
    static func mockArticles()-> [Article]{
        return [Article.mockArticle(), Article.mockArticle(), Article.mockArticle(), Article.mockArticle()]
    }
}
