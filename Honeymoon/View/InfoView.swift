import SwiftUI

struct InfoView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ScrollView(.vertical,showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                HeaderComponent()
                
                Spacer(minLength: 10)
                
                Text("App Info")
                    .fontWeight(.black)
                    .modifier(TitleModifier())
                AppInfoView()
                Text("Credits")
                    .fontWeight(.black)
                    .modifier(TitleModifier())
                CreditsView()
                Button(action: {
                    dismiss()
                }, label: {
                    Text("Continue".uppercased())
                        .modifier(ButtonModifier())
                })
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(.top,15)
            .padding(.bottom,25)
            .padding(.horizontal,25)
        }
        
    }
}

#Preview {
    InfoView()
}

struct AppInfoView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            RowAppInfoView(ItemOne: "Application", ItemTwo: "Honeymoon")
            RowAppInfoView(ItemOne: "Compatibility", ItemTwo: "iPhone and iPad")
            RowAppInfoView(ItemOne: "Developer", ItemTwo: "Olha Acar")
            RowAppInfoView(ItemOne: "Designer", ItemTwo: "Robert Petras")
            RowAppInfoView(ItemOne: "Website", ItemTwo: "swiftuimasterclass.com")
            RowAppInfoView(ItemOne: "Version", ItemTwo: "1.0.0")
        }
    }
}

struct RowAppInfoView: View {
    
    var ItemOne:String
    var ItemTwo: String
    
    var body: some View {
        VStack {
            HStack {
                Text(ItemOne).foregroundStyle(.gray)
                Spacer()
                Text(ItemTwo)
            }
            Divider()
        }
    }
}

struct CreditsView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            RowAppInfoView(ItemOne: "Photos", ItemTwo: "Unsplash")
            Text("Photographers").foregroundColor(Color.gray)
            
            Text("Shifaaz Shamoon (Maldives), Grillot Edouard (France), Evan Wise (Greece), Christoph Schulz (United Arab Emirates), Andrew Coelho (USA), Damiano Baschiera (Italy), Daniel Olah (Hungary), Andrzej Rusinowski (Poland), Lucas Miguel (Slovenia), Florencia Potter (Spain), Ian Simmonds (USA), Ian Keefe (Canada), Denys Nevozhai (Thailand), David Köhler (Italy), Andre Benz (USA), Alexandre Chambon (South Korea), Roberto Nickson (Mexico), Ajit Paul Abraham (UK), Jeremy Bishop (USA), Davi Costa (Brazil), Liam Pozz (Australia)")
                .multilineTextAlignment(.leading)
                .font(.footnote)
        }
    }
}
