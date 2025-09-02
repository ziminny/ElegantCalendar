// Kevin Li - 3:24 PM - 7/13/20

import SwiftUI

extension Image {

    nonisolated(unsafe) static var uTurnLeft: Image = {
        let image = UIImage(systemName: "arrowtriangle.left.fill")!
        return Image(uiImage: image)
    }()

}
