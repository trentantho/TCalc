import SwiftData
import SwiftUI

struct CalcView: View {
  @Query var globalSettings: [Settings]
  @Environment(\.modelContext) private var context

  @State var mainValue: Int = 0 

  var body: some View {
    VStack {
      Button {} label: {
        Text(String(mainValue))
          .padding(.horizontal, 48)
          .padding(.vertical, 32)
          .font(.largeTitle)
          .fontWeight(.black)
          .foregroundColor(.white)
      }
      .glassEffect(.regular.tint(.accentColor).interactive())
      .padding()

      VStack {
        HStack {
          KeypadButton(num: 1, value: $mainValue)
          KeypadButton(num: 2, value: $mainValue)
          KeypadButton(num: 3, value: $mainValue)
        }
        HStack {
          KeypadButton(num: 4, value: $mainValue)
          KeypadButton(num: 5, value: $mainValue)
          KeypadButton(num: 6, value: $mainValue)
        }
        HStack {
          KeypadButton(num: 7, value: $mainValue)
          KeypadButton(num: 8, value: $mainValue)
          KeypadButton(num: 9, value: $mainValue)
        }
      }
      .padding()

    }

  }



  struct KeypadButton: View {
    let num: Int
    @Binding var value: Int

    var body: some View {
      Button {
        value += num
      } label: {
        Text(String(num))
          .font(.title)
          .padding(32)
          .foregroundColor(.accentColor.exposureAdjust(-1.0))
          .fontWeight(.semibold)
      }
      .glassEffect(.regular.tint(.accentColor.opacity(0.2)).interactive())
      .buttonBorderShape(.circle)
      .padding(8)
    }

  }

}




#Preview {
  CalcView()
}
