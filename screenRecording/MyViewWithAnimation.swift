import SwiftUI
import AVFoundation
//import SwiftUIViewRecorder
import AVKit

struct MyViewWithAnimation: View {
    
    // observe changes using built-in recording view model
    @ObservedObject var recordingViewModel: ViewRecordingSessionViewModel<URL>
//    @State var player = AVPlayer()
    
    private var viewToRecord: some View {
        // some view with animation which we'd like to record as a video
        return SomeView()
    }
    
    var body: some View {
        VStack{
//            SomeView() 
            ZStack {
                if (recordingViewModel.asset != nil) {
                    Text("Video URL \(recordingViewModel.asset!)")
                    VideoPlayer(player: AVPlayer(url: recordingViewModel.asset!))
                        .frame(height: 400)
                } else {
                    Text("Recording video...")
                }
            }
            .onAppear {
                recordingViewModel.handleRecording(session: try! viewToRecord.recordVideo(duration: 10, framesPerSecond: 30, useSnapshots: true))
            }
        }
        
    }
    
}


