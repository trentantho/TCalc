import SwiftData
import SwiftUI


struct CalcView: View {
  @Query var globalSettings: [Settings]
  @Environment(\.modelContext) private var context

  @State var mainValue: Int = 0 

  var body: some View {
    VStack {
      Text(String(mainValue))
        .labelStyle(.titleAndIcon)
        .font(.largeTitle)
        .padding()

      VStack {
        HStack {
          KeypadButton(value: 1)
          KeypadButton(value: 2)
          KeypadButton(value: 3)
        }
        HStack {
          KeypadButton(value: 4)
          KeypadButton(value: 5)
          KeypadButton(value: 6)
        }
        HStack {
          KeypadButton(value: 7)
          KeypadButton(value: 8)
          KeypadButton(value: 9)
        }
      }
      .padding()

    }
  }

  struct KeypadButton: View {
    let value: Int
    let onTap: (Int) -> Void

    var body: some View {
      Button(String(value)) {
        addValue(value)
      }
      .font(.largeTitle)
      .buttonStyle(.glass)
    }
  }

}




#Preview {
  CalcView()
}
