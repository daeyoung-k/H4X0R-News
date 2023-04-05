//
//  ContentView.swift
//  H4X0R News
//
//  Created by 권대영 on 2023/04/04.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
            }
            .navigationTitle("H4X0R NEWS")
        }
        .onAppear {
            networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//let posts = [
//    Post(objectID: "1", points: 1, title: "안녕", url: ""),
//    Post(objectID: "2", points: 2, title: "Hi", url: ""),
//    Post(objectID: "3", points: 3, title: "Hello", url: ""),
//    Post(objectID: "4", points: 4, title: "Bonjour", url: ""),
//]
