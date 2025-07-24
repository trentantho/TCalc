import SwiftUI


enum Flavor: String, CaseIterable, Identifiable {
  case chocolate, vanilla, strawberry
  var id: Self { self }
}

enum Topping: String, CaseIterable, Identifiable {
  case nuts, cookies, blueberries
  var id: Self { self }
}

extension Flavor {
  var suggestedTopping: Topping {
    switch self {
    case .chocolate: return .nuts
    case .vanilla: return .cookies
    case .strawberry: return .blueberries
    }
  }
}



struct SettingsView: View {
  @State private var selectedFlavor: Flavor = .chocolate
  @State private var suggestedTopping: Topping = .nuts

  var body: some View {
    VStack {
      Text("Hi, mostly for testing")
        .border(.blue)

      List {
        Picker("Flavor", selection: $selectedFlavor) {
          Text("Chocolate").tag(Flavor.chocolate)
          Text("Vanilla").tag(Flavor.vanilla)
          Text("Strawberry").tag(Flavor.strawberry)
        }
      }

      List {
        Picker("Flavor", selection: $suggestedTopping) {
          ForEach(Flavor.allCases) { flavor in
            Text(flavor.rawValue.capitalized)
              .tag(flavor.suggestedTopping)
          }
        }
        .pickerStyle(.segmented)

        HStack {
          Text("Suggested Topping")
          Spacer()
          Text(suggestedTopping.rawValue.capitalized)
            .foregroundStyle(.secondary)
        }
      }

    }

  }

}


#Preview {
  SettingsView()
}
