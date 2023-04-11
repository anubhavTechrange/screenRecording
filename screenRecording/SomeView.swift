//
//  SomeView.swift
//  screenRecording
//
//  Created by Anubhav Rawat on 24/03/23.
//

import Foundation
import SwiftUI

struct SomeView: View{
    
    @State var timer = Timer.publish(every: 2, on: .current, in: .default).autoconnect()
    @State var curValue: Int = 0
    
    var body: some View{
        VStack{
            if curValue > 5{
                Color.blue
            }else if curValue > 4{
                Color.red
            }else if curValue > 3{
                Color.black
            }else if curValue > 2{
                Color.brown
            }else{
                Color.orange
            }
        }.frame(width: 30, height: 30)
            .onReceive(timer) { _ in
                curValue += 1
            }
        
    }
}


