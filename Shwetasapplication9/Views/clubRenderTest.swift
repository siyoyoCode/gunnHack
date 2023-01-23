//
//  clubRenderTest.swift
//  Shwetasapplication9
//
//  Created by Emma Cao on 1/22/23.
//

import SwiftUI

struct clubListView : View {
    //typealias Body = <#type#>
    private var clubs : [Club] = Club.allClubs
    var body: some View {
        NavigationView {
            List {
                ForEach(clubs, id: \.name) { club in
                    Text("\(club.name)")
                }
            }
        }
    }
    
}
