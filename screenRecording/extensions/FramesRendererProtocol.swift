////
////  FramesRendererProtocol.swift
////  screenRecording
////
////  Created by Anubhav Rawat on 26/03/23.
////
//
//import Foundation
//import UIKit
//import Combine
//import UIImageExtensions
//
//// protocol with render function requirement.
//public protocol FramesRenderer {
//    associatedtype Asset
//    
//    func render(frames: [UIImage], framesPerSecond: Double) -> Future<Asset?, Error>
//}
//
//// video renderer with frames rendrer protocol.
//class VideoRenderer: FramesRenderer {
//    func render(frames: [UIImage], framesPerSecond: Double) -> Future<URL?, Error> {
////        frames.toVideo(framesPerSecond: framesPerSecond)
//    }
//}
