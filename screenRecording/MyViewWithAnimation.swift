import SwiftUI
import SwiftUIViewRecorder

struct MyViewWithAnimation: View {
    
    // observe changes using built-in recording view model
    @ObservedObject var recordingViewModel: ViewRecordingSessionViewModel<URL>
    
    private var viewToRecord: some View {
        // some view with animation which we'd like to record as a video
        return SomeView()
    }
    
    var body: some View {
        ZStack {
            if (recordingViewModel.asset != nil) {
                Text("Video URL \(recordingViewModel.asset!)")
            } else {
                Text("Recording video...")
            }
        }
        .onAppear {
            recordingViewModel.handleRecording(session: try! viewToRecord.recordVideo(duration: 20, useSnapshots: true))
        }
    }
    
}


