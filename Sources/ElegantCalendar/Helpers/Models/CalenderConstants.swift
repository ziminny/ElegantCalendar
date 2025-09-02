// Kevin Li - 11:00 AM - 6/7/20

import SwiftUI

@MainActor
let screen = UIScreen.main.bounds

struct CalendarConstants {

    @MainActor
    static let cellHeight: CGFloat = screen.height

    static let daysInRow: CGFloat = 7

    struct Monthly {

        nonisolated(unsafe) static var cellWidth: CGFloat!
        static let horizontalPadding: CGFloat = cellWidth * 0.045

        static let outerHorizontalPadding: CGFloat = horizontalPadding + dayWidth/4

        @MainActor
        static let topPadding: CGFloat = cellHeight * 0.078
        static let gridSpacing: CGFloat = cellWidth * 0.038

        static let dayWidth: CGFloat = {
            let totalHorizontalPadding: CGFloat = 2 * horizontalPadding
            let innerGridSpacing: CGFloat = (daysInRow - 1) * gridSpacing
            return (cellWidth - totalHorizontalPadding - innerGridSpacing) / daysInRow
        }()

    }

    struct Yearly {

        @MainActor
        static let cellWidth: CGFloat = screen.width
        @MainActor
        static let horizontalPadding: CGFloat = cellWidth * 0.058
        @MainActor
        static let outerHorizontalPadding: CGFloat = horizontalPadding + monthWidth/7

        @MainActor
        static let topPadding: CGFloat = cellHeight * 0.12

        static let monthsInRow = 3
        static let monthsInColumn = 4
        static let monthsGridSpacing: CGFloat = 4
        @MainActor
        static let monthWidth: CGFloat = {
            let totalHorizontalPadding: CGFloat = 2 * horizontalPadding
            let innerGridSpacing: CGFloat = CGFloat(monthsInRow - 1) * monthsGridSpacing
            return (cellWidth - totalHorizontalPadding - innerGridSpacing) / CGFloat(monthsInRow)
        }()

        static let daysGridVerticalSpacing: CGFloat = 4
        static let daysGridHorizontalSpacing: CGFloat = 2
        @MainActor
        static let dayWidth: CGFloat = {
            let innerGridSpacing: CGFloat = (daysInRow - 1) * daysGridHorizontalSpacing
            return (monthWidth - innerGridSpacing) / daysInRow
        }()
        @MainActor
        static let daysStackHeight: CGFloat = 6*dayWidth + 5*daysGridVerticalSpacing
    }

}
