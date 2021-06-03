//
//  MainView.swift
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

open class MainView: BaseView {
  
  // MARK: -
  // MARK: Properties -
  
  private(set) public lazy var gridView: CenteredGridView = {
    let gv = CenteredGridView()
    gv.frame = .zero
    return gv
  }()
  // MARK: -
  // MARK: Template Overrides -
  
  override public func customInit() {
    super.customInit()
    forcedLayer.borderWidth = 20.0
//    forcedLayer.borderColor = UKColor.systemGray.cgColor
    forcedLayer.cornerRadius = 20.0
  }
}
