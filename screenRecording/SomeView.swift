//
//  SomeView.swift
//  screenRecording
//
//  Created by Anubhav Rawat on 24/03/23.
//

import Foundation
import SwiftUI

struct SomeView: View{
    
    @State var timer = Timer.publish(every: 1, on: .current, in: .default).autoconnect()
    @State var progress: CGFloat = 0.0
    @State var curValue: Int = 0
    
    var body: some View{
        ZStack{
            Color.black.ignoresSafeArea()
//            VStack{
//                if curValue > 5{
//                    Color.blue
//                }else if curValue > 4{
//                    Color.red
//                }else if curValue > 3{
//                    Color.black
//                }else if curValue > 2{
//                    Color.brown
//                }else{
//                    Color.orange
//                }
//            }.frame(width: 30, height: 30)
            CircularProgressView(progress: $progress)
                .onReceive(timer) { _ in
//                    curValue += 1
                    progress += 0.1
                }
        }
        
        
    }
}


struct CircularProgressView: View {
    
    @Binding var progress: CGFloat
    
    var body: some View {
        ZStack {
            Circle()
                .trim(from: 0.0, to: progress)
                .stroke(Color.red, style: StrokeStyle(lineWidth: 15, lineCap: .round, lineJoin: .round))
                .rotationEffect(.degrees(-90))
                .animation(.linear)
                .frame(width: 330)
        }
    }
}
