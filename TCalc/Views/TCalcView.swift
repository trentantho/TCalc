import SwiftData
import SwiftUI


struct CalcView: View {
  @Query var globalSettings: [Settings]
  @Environment(\.modelContext) private var context

  @State private var value: Int = 0

  var body: some View {
    VStack {
      Text(String(value))
        .labelStyle(.titleAndIcon)
        .font(.largeTitle)
        .padding()

      VStack {
        HStack {
          KeypadButton(value: 1, action: {value += 1})
          KeypadButton(value: 2, action: {value += 2})
          KeypadButton(value: 3, action: {value += 3})
        }
        HStack {
          KeypadButton(value: 4, action: {value += 4})
          KeypadButton(value: 5, action: {value += 5})
          KeypadButton(value: 6, action: {value += 6})
        }
        HStack {
          KeypadButton(value: 7, action: {value += 7})
          KeypadButton(value: 8, action: {value += 8})
          KeypadButton(value: 9, action: {value += 9})
        }
      }
      .padding()

    }
  }
}


struct KeypadButton: View {
  let value: Int
  let action: () -> Void

  var body: some View {
    Button(action: action) {
      Text(String(value))
        .font(.largeTitle)
    }
    .buttonStyle(.glass)
  }
}


#Preview {
  CalcView()
}
