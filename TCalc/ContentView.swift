import SwiftUI


struct ContentView: View {
  var body: some View {
    VStack {
      Label("Main", systemImage: "circle.grid.3x3.fill")
        .labelStyle(.titleAndIcon)
        .font(.largeTitle)
        .bold()
        .padding()

      HStack {
        KeypadButton(value: 1, action: {})
        KeypadButton(value: 2, action: {})
        KeypadButton(value: 3, action: {})
      }
      .padding()

      List {
        Text("Folder 1")
        Text("Folder 2")
        Text("Folder 3")
        Button("Add Folder", systemImage: "folder.badge.plus") {
          print("added folder!")
        }
      }
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
        .frame(width: 70, height: 70)
        .foregroundColor(Color.black)
    }
    .buttonStyle(.bordered)
    .buttonBorderShape(.circle)

  }
}

struct KeypadButton_Previews: PreviewProvider {
  static let numbers = [[1, 2, 3],
                        [4, 5, 6],
                        [7, 8, 9],
                        [0]]
  static var previews: some View {
    VStack{
      ForEach(numbers, id: \.self) { row in
        HStack {
          ForEach(row, id: \.self) { number in
            KeypadButton(value: number, action: {})
          }
        }
      }
    }
  }
}

#Preview {
  ContentView()
}
