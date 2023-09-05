//
//  ArticleDetailView.swift
//  SwiftUINavigation
//
//  Created by andres jaramillo on 26/05/23.
//

import SwiftUI

struct ArticleDetailView: View {
    @Environment(\.dismiss) var dismiss
    @State var showAlert = false
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
            .overlay {
                HStack{
                    Spacer()
                    VStack{
                        Button {
                            showAlert.toggle()
                        } label: {
                            Image(systemName: "chevron.down.circle.fill")
                                .font(.title)
                                .foregroundColor(.white)
                        }
                        .padding()

                        Spacer()
                    }
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .ignoresSafeArea(.all, edges: .top)
        .navigationBarBackButtonHidden(true)
        .alert("Reminder", isPresented: $showAlert, actions: {
            Button {
                dismiss()
            } label: {
                Text("Yes")
            }
            
            Button(role: .cancel, action:{}){
                Text("No")
            }
        }) {
            Text("Are you sure you are finished reading the article?")
        }
    }
}

struct ArticleDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleDetailView(article: articles[0])
    }
}
