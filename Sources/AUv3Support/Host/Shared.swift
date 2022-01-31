// Copyright © 2022 Brad Howes. All rights reserved.

import Foundation
import CoreAudioKit
import os.log

public enum Shared {}

extension Shared {

  /// The top-level identifier to use for logging
  public static var loggingSubsystem: String!

  /**
   Create a new logger for a subsystem

   - parameter category: the subsystem to log under
   - returns: OSLog instance to use for subsystem logging
   */
  public static func logger(_ category: String) -> OSLog { .init(subsystem: loggingSubsystem, category: category) }
}
