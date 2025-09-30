import SwiftData
import SwiftUI

let backgroundGradient = LinearGradient(
  colors: [.gray, .blue, .purple, .white, .blue],
  startPoint: .top,
  endPoint: .bottom
)

struct CalcView: View {
  let functions = ["+", "-", "*", "/"]
  let keypad_values = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [0]]

  @Query var globalSettings: [Settings]
  @Environment(\.modelContext) private var context

  @State var mainValue: Int = 0
  @State var changeOccured: Bool = false
  @State var funct: String = "+"
  @State var forVibration: Bool = false

  var body: some View {

    ZStack {

      // BACKGROUND EFFECT
      backgroundGradient
        .blur(radius: 200, opaque: false)
        .ignoresSafeArea()

      // CALCULATOR UI
      VStack(alignment: .center) {

        // CALC Results
        HStack {
          Text(String(mainValue))
            .font(.system(size: 48, weight: .bold))
            .foregroundColor(Color.white)
            .padding(24)
            .glassEffect(.clear.interactive())
        }

        // CALC Keypad
        VStack {
          HStack {  // Function buttons at the top
            ForEach(functions, id: \.self) { i in
              Button {
              } label: {
                Text(i)
              }
            }
          }
          .buttonStyle(.glassProminent)
          .sensoryFeedback(.selection, trigger: forVibration)
          .labelStyle(.iconOnly)

          VStack {  // Keypad buttons for input
            ForEach(keypad_values.indices, id: \.self) { i in
              HStack {
                ForEach(keypad_values[i].indices, id: \.self) { j in
                  Button {
                    mainValue += keypad_values[i][j]
                    changeOccured = true
                    forVibration = !forVibration
                  } label: {
                    Text(String(keypad_values[i][j]))
                      .font(.title)
                      .foregroundColor(.accentColor.exposureAdjust(-1.0))
                      .fontWeight(.semibold)
                      .padding(32)
                  }
                  .buttonStyle(.glass)
                  .sensoryFeedback(.selection, trigger: forVibration)
                }
              }
            }
          }

          // CALC Clear Button
          if changeOccured {
            Button {
              mainValue = 0
              changeOccured = false
            } label: {
              Image(systemName: "xmark")
                .padding(16)
            }
            .buttonStyle(.glassProminent)
            .sensoryFeedback(.selection, trigger: forVibration)
            .labelStyle(.iconOnly)
          }
        }
      }
    }
  }
}

#Preview {
  CalcView()
}
