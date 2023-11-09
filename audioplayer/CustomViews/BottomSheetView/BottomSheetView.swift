import Foundation
import SwiftUI

/**
  BottomSheetView provide show view in form of bottom sheet view with minimum to maximum flexible height.

  # Input Variable: #

  - `isOpen`: variable is wrapped with @Binding to open and close bottomsheet with offset value.

  - `offset`: variable is wrapped with @Binding to open and close bottomsheet with offset value.

  - `size`: variable is wrapped with @Binding to add size of bottomsheet.

  - `staticHeight`: variable for storing the previous height when it is appeared..

  - `content`: provide 'some view' content here.

  - `dragOffset`: for dragGesture animation to hide the bottomsheet.

  - `position`: for position of view with height and width.

  # Example #
 ```

  BottomSheetView(isOpen: $isOpen, content: {
  [YOUR_VIEW_NAME]()
  })

 ```
 */

struct BottomSheetView<Content: View>: View {
    @Binding var isOpen: Bool
    @State var offset: CGFloat = 0.0
    @State var size: CGSize = .zero
    @State var staticHeight: CGFloat = 0.0
    let content: Content
    @GestureState private var dragOffset = CGSize.zero
    @State private var position = CGSize.zero

    init(isOpen: Binding<Bool>, @ViewBuilder content: () -> Content) {
        _isOpen = isOpen
        self.content = content()
    }

    var body: some View {
        VStack(spacing: 0) {
            content
                .padding(.vertical, 50)
        }
        .frame(width: UIScreen.main.bounds.width, alignment: .bottom)
        .background(RoundedCornersforBTS(color: Color.white,
                                         topLeft: 30,
                                         topRight: 30,
                                         bottomLeft: 0,
                                         botttomRight: 0)
                .shadow(color: Color.gray.opacity(0.3), radius: 30))
        .offset(x: 0,
                y: offset < (position.height + dragOffset.height) ?
                    (position.height + dragOffset.height) : offset)
        .getSize {
            size = $0
            offset = $0.height
            self.staticHeight = offset
            offset = 0
        }
        .gesture(DragGesture()
            .updating($dragOffset, body: { value, state, _ in
                state = value.translation
            })
            .onEnded { value in
                offset(value: value.translation.height)
            })
        .onChange(of: isOpen, perform: { value in
            withAnimation(.linear(duration: 0.5)) {
                if value {
                    offset = size.height
                    isOpen.toggle()
                } else {
                    offset = 0
                }
            }
        })
    }

    private func offset(value: CGFloat) {
        if value > (staticHeight / 2) {
            offset = staticHeight
            isOpen.toggle()
        } else {
            offset = 0
        }
    }
}

struct SizePreferenceKey: PreferenceKey {
    struct SizePreferenceData {
        let bounds: Anchor<CGRect>
    }

    static var defaultValue: [SizePreferenceData] = []

    static func reduce(value: inout [SizePreferenceData], nextValue: () -> [SizePreferenceData]) {
        value.append(contentsOf: nextValue())
    }
}

struct SizePreferenceModifier: ViewModifier {
    let onAppear: (CGSize) -> Void

    func body(content: Content) -> some View {
        content
            .anchorPreference(key: SizePreferenceKey.self,
                              value: .bounds,
                              transform: { [SizePreferenceKey.SizePreferenceData(bounds: $0)] })
            .backgroundPreferenceValue(SizePreferenceKey.self) { _ in
                GeometryReader { geo in
                    Color.clear
                        .onAppear {
                            let size = CGSize(width: geo.size.width, height: geo.size.height)
                            onAppear(size)
                        }
                }
            }
    }
}

extension View {
    func getSize(_ onAppear: @escaping (CGSize) -> Void) -> some View {
        return modifier(SizePreferenceModifier(onAppear: onAppear))
    }
}

struct RoundedCornersforBTS: View {
    var color: Color = .blue
    var topLeft: CGFloat = 0.0
    var topRight: CGFloat = 0.0
    var bottomLeft: CGFloat = 0.0
    var botttomRight: CGFloat = 0.0

    var body: some View {
        GeometryReader { geometry in
            Path { path in

                let width = geometry.size.width
                let height = geometry.size.height

                // Make sure we do not exceed the size of the rectangle
                let topRight = min(min(self.topRight, height / 2), width / 2)
                let topLeft = min(min(self.topLeft, height / 2), width / 2)
                let bottomLeft = min(min(self.bottomLeft, height / 2), width / 2)
                let bottomRight = min(min(self.botttomRight, height / 2), width / 2)

                path.move(to: CGPoint(x: width / 2.0, y: 0))
                path.addLine(to: CGPoint(x: width - topRight, y: 0))
                path.addArc(center: CGPoint(x: width - topRight, y: topRight),
                            radius: topRight, startAngle: Angle(degrees: -90),
                            endAngle: Angle(degrees: 0),
                            clockwise: false)
                path.addLine(to: CGPoint(x: width, y: height - bottomRight))
                path.addArc(center: CGPoint(x: width - bottomRight,
                                            y: height - bottomRight),
                            radius: bottomRight,
                            startAngle: Angle(degrees: 0),
                            endAngle: Angle(degrees: 90),
                            clockwise: false)
                path.addLine(to: CGPoint(x: bottomLeft, y: height))
                path.addArc(center: CGPoint(x: bottomLeft, y: height - bottomLeft),
                            radius: bottomLeft,
                            startAngle: Angle(degrees: 90),
                            endAngle: Angle(degrees: 180),
                            clockwise: false)
                path.addLine(to: CGPoint(x: 0, y: topLeft))
                path.addArc(center: CGPoint(x: topLeft, y: topLeft),
                            radius: topLeft,
                            startAngle: Angle(degrees: 180),
                            endAngle: Angle(degrees: 270),
                            clockwise: false)
                path.closeSubpath()
            }
            .fill(self.color)
        }
    }
}

// struct BottomSheetView_Previews: PreviewProvider {
//    static var previews: some View {
//        BottomSheetView(isOpen: .consta, content: {
//                TestBottom()
//        }).edgesIgnoringSafeArea(.all)
//    }
// }
