import SwiftUI

struct FooterView: View {
    
    // MARK:  PROPERTIES
    @Binding var showBookingAlert: Bool
    let haptics = UINotificationFeedbackGenerator()
    
    var body: some View {
        HStack {
            Image(systemName: "xmark.circle")
              .font(.system(size: 42, weight: .light))
            Spacer()
            
            Button(action: {
                playSound(sound: "sound-click", type: "mp3")
                self.haptics.notificationOccurred(.success)
                self.showBookingAlert.toggle()
            }, label: {
                Text("Book destination".uppercased())
                    .font(.system(.subheadline, design: .rounded))
                    .fontWeight(.heavy)
                    .padding(.horizontal,20)
                    .padding(.vertical,12)
                    .accentColor(.pink)
                    .background(
                        Capsule().stroke(.pink, lineWidth: 2)
                    )
            })
            
            Spacer()
            Image(systemName: "heart.circle")
              .font(.system(size: 42, weight: .light))
        }
        .padding()
    }
}

#Preview("Footer", traits: .fixedLayout(width: 375, height: 80)){
    @State var showAlert: Bool = false
    return FooterView(showBookingAlert: $showAlert)
}
