import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
          HStack {
            Button("1") {
              print("1")
            }
            .buttonStyle(.bordered)
            .buttonBorderShape(.circle)
            .fontWeight(.heavy)
            
          }
        }
        .padding()
    }
}

//struct keypadButton: View {
//  Button("1") {
//    print("1")
//  }
//  .buttonStyle(.bordered)
//  .buttonBorderShape(.circle)
//
//}

#Preview {
  ContentView()
}
