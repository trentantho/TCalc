import SwiftData
import SwiftUI


struct CalcView: View {
  @Query var userSettings: [UserSettings]
  @Environment(\.modelContext) private var context
  
  var body: some View {
    VStack {
      Text("Main")
        .labelStyle(.titleAndIcon)
        .font(.largeTitle)
        .padding()

      Text("fart")
        .font(.largeTitle)
        .frame(alignment: .trailing)

      HStack {
        KeypadButton(value: 1, action: {})
        KeypadButton(value: 2, action: {})
        KeypadButton(value: 3, action: {})
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
        .frame(width: 100, height: 100)
        .foregroundColor(Color.primary)
        .background(Color.secondary.opacity(0.1), in: Circle())
    }
  }
}

#Preview {
  CalcView()
}
