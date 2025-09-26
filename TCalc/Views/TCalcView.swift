import SwiftData
import SwiftUI

struct CalcView: View {
  @Query var globalSettings: [Settings]
  @Environment(\.modelContext) private var context

  @State var mainValue: Int = 0
  @State var changeOccured: Bool = false

  var body: some View {
    HStack (
      alignment: .top,
      spacing: 10
    ) {
      Text(String(mainValue))
        .font(.system(size: 48, weight: .bold, design: .monospaced))
        .foregroundColor(Color.white)
        .padding(24)
        .glassEffect(.regular.tint(.accentColor).interactive())
    }

    VStack(alignment: .leading){
      HStack {
        KeypadButton(num: 1, value: $mainValue, change: $changeOccured)
        KeypadButton(num: 2, value: $mainValue, change: $changeOccured)
        KeypadButton(num: 3, value: $mainValue, change: $changeOccured)
      }
      HStack {
        KeypadButton(num: 4, value: $mainValue, change: $changeOccured)
        KeypadButton(num: 5, value: $mainValue, change: $changeOccured)
        KeypadButton(num: 6, value: $mainValue, change: $changeOccured)
      }
      HStack {
        KeypadButton(num: 7, value: $mainValue, change: $changeOccured)
        KeypadButton(num: 8, value: $mainValue, change: $changeOccured)
        KeypadButton(num: 9, value: $mainValue, change: $changeOccured)
      }
      if (changeOccured) {
        Button {
          mainValue = 0
          changeOccured = false
        } label: {
          Image(systemName: "xmark")
            .padding(8)
        }
        .glassEffect(.regular.tint(.accentColor.opacity(0.4)).interactive())
      }
    }
    .padding()

  }



  struct KeypadButton: View {
    let num: Int
    @Binding var value: Int
    @Binding var change: Bool

    var body: some View {
      Button {
        value += num
        change = true
      } label: {
        Text(String(num))
          .font(.title)
          .padding(32)
          .foregroundColor(.accentColor.exposureAdjust(-1.0))
          .fontWeight(.semibold)
      }
      .glassEffect(.regular.tint(.accentColor.opacity(0.2)).interactive())
      .padding(8)
    }

  }

}




#Preview {
  CalcView()
    .frame(width: 400, height: 600)
}
