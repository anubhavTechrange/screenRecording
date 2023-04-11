//
//  ContentView.swift
//  screenRecording
//
//  Created by Anubhav Rawat on 24/03/23.
//

import SwiftUI
import SwiftUIViewRecorder

struct ContentView: View {
    var body: some View {
        VStack {
            MyViewWithAnimation(recordingViewModel: ViewRecordingSessionViewModel())
//            SomeView()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
