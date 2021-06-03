//
//  MainViewController.swift
//  DrawGrid
//
//  Created by Mihaela Mihaljevic Jakic on 03.06.2021..
//

import Foundation
import UniteKit
import GridProperties
import GridView

#if os(iOS) || os(tvOS)
import UIKit
#endif

#if os(OSX)
import Cocoa
#endif

open class MainViewController: UKViewController {
  
  // MARK: -
  // MARK: Properties -
  
  private(set) public lazy var gridView: CenteredGridView = {
    let gv = CenteredGridView()
    return gv
  }()
  
  // MARK: -
  // MARK: View Lifecycle -
  
  open override func loadView() {
    view = gridView
  }
  
  open override func viewDidLoad() {
    super.viewDidLoad()
    // INFO: Need to typecast our view to the appropriate `View` type, which will be resolved at compile time
    #if os(OSX)
    // INFO: Views created this way have a `.zero` frame on `macOS`. -
    let side:CGFloat = 400.0
    view.frame = CGRect(x: 0, y: 0, width: side, height: side)
    inspectViewOnMacOS()
    #endif
  }
  
  
  #if os(OSX)
  func inspectViewOnMacOS() {
    debugPrint("view.frame = \(view.frame.stringRepresentation)")
    debugPrint("layer? = \(view.layer != nil)")
    debugPrint("wantsLayer = \(view.wantsLayer)")
    debugPrint("wantsUpdateLayer = \(view.wantsUpdateLayer)")
    debugPrint("isFlipped = \(view.isFlipped)")
    debugPrint("canDrawSubviewsIntoLayer= \(view.canDrawSubviewsIntoLayer)")
    debugPrint("layerContentsRedrawPolicy = \(view.layerContentsRedrawPolicy.toString())")
  }
  #endif
  
}
