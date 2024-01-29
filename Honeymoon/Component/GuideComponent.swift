import SwiftUI

struct GuideComponent: View {
    
    // MARK:  PROPERTIES
    
    var title: String
    var subtitle: String
    var description: String
    var icon: String

    
    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            Image(systemName: icon)
                .font(.largeTitle)
                .foregroundColor(.pink)
            VStack(alignment: .leading, spacing: 4, content: {
                HStack {
                    Text(title.uppercased())
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundStyle(.pink)
                    Spacer()
                    Text(subtitle.uppercased())
                        .font(.footnote)
                        .fontWeight(.heavy)
                        .foregroundStyle(.pink)
                }
                Divider().padding(.bottom,4)
                Text(description)
                    .font(.footnote)
                    .foregroundStyle(.secondary)
                    .fixedSize(horizontal: false, vertical: true)
            })
        }
    }
}

#Preview {
    GuideComponent(title: "Title", subtitle: "Subtitle", description: "This is a placeholder sentence.This is a placeholder sentence.This is a placeholder sentence.", icon: "heart.circle")
}
