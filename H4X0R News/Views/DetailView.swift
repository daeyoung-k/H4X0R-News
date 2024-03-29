//
//  DetailView.swift
//  H4X0R News
//
//  Created by 권대영 on 2023/04/05.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.naver.com")
    }
}

