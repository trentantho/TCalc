import SwiftUI

enum Operations: String, CaseIterable, Identifiable {
  case add, subtract, multiply, divide
  var id: Self { self }
}

struct ContentView: View {
  @State private var val = 0.0;
  @State private var operation: Operations = .add

  var body: some View {
    VStack {
      Text("Main")
        .labelStyle(.titleAndIcon)
        .font(.largeTitle)
        .padding()

      Text(String(val))
        .font(.largeTitle)
        .frame(alignment: .trailing)

      
      HStack {
        KeypadButton(value: 1, action: {val += 1})
        KeypadButton(value: 2, action: {val += 2})
        KeypadButton(value: 3, action: {val += 3})
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
              .padding(5)
          }
        }
      }
    }
  }
}

#Preview {
  ContentView()
}
