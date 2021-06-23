import SwiftUI

struct PageFeedback: View {
    @Binding var didTap : Bool
    @Binding var monFeedback : Feedback
    var placeholderString : String = "Entrez votre commentaire"
    
    @State private var showingAlert = false
    
    private let imageI : String = "indifferent face"
    private let imageIF : String = "indifferent face fill"
    
    
    
    private let imageH : String = "happy face"
    private let imageHF : String = "happy face fill"
    
    
    
    private let imageS : String = "sad face"
    private let imageSF : String = "sad face fill"
    
    @State private var imageHappy: String = "happy face"
    @State private var imageIndifferent:String = "indifferent face"
    @State private var imageSad: String = "sad face"
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Donnez votre avis").font(.title).fontWeight(.regular).multilineTextAlignment(.center).padding()
                
                HStack {
                    
                    Button(action: {imageSad = imageSF; imageHappy = imageH;imageIndifferent = imageI; monFeedback.note = 1},label: {
                        if monFeedback.note == 1{
                            Image ("sad face fill").resizable()
                                .frame(width: 72.0, height: 72.0)}else{
                                    Image("sad face")
                                        .resizable()
                                        .frame(width: 72.0, height: 72.0)}
                    })
                    
                    Button(action: {imageIndifferent = imageIF; imageHappy = imageH; imageSad = imageS; monFeedback.note = 5 }, label: {
                        if monFeedback.note == 5{
                            Image ("indifferent face fill").resizable()
                                .frame(width: 72.0, height: 72.0)}else{
                                    Image("indifferent face")
                                        .resizable()
                                        .frame(width: 72.0, height: 72.0)}
                        
                    })
                    
                    Button(action: {imageHappy = imageHF; imageSad = imageS;imageIndifferent = imageI; monFeedback.note = 10}, label: {
                        if monFeedback.note == 10{
                            Image ("happy face fill").resizable()
                                .frame(width: 72.0, height: 72.0)}else{
                        Image("happy face")
                        .resizable()
                        .frame(width: 72.0, height: 72.0)}
                })
            }
            
            TextEditor(text: self.$monFeedback.commentaire)
            .padding(.top, 20)
            .foregroundColor(self.monFeedback.commentaire == placeholderString ? .gray : .primary)
            .onTapGesture {
                if self.monFeedback.commentaire == placeholderString {
                    self.monFeedback.commentaire = ""
                }
            }.foregroundColor(.black).frame(width: 300, height: 200)
            .font(.system(size: 20))
            .padding()
            .foregroundColor(.gray)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.gray, lineWidth: 1.5)
            ).padding(60)
            
            
            Button(action: {
                showingAlert = true
            }) {
                
                Text("Enregister")
                    .font(.system(size: 20))
            }
            .foregroundColor(.white)
            .frame(width: 120, height: 12, alignment: .center)
            .padding(.all, 20)
            .background(didTap ? Color("VertCokido") : Color("BleuCokido"))
            .cornerRadius(29).alert(isPresented: $showingAlert, content: {
                Alert(
                    title: Text(""),
                    message: Text("Votre commentaire à bien était pris en compte."),
                    dismissButton: .default(Text("Valider")))
            })
            
            
            Button(action: {
                self.didTap.toggle()
            }) {
                
                Text("Plus tard")
                    .font(.system(size: 20))
            }
            .foregroundColor(.gray)
            .frame(width: 100, height: 12, alignment: .center)
            .padding(.all, 20)
            .background( Color.white)
            
        }.navigationTitle("Feedback").navigationBarTitleDisplayMode(.inline).navigationBarItems(trailing:Button(action: {
            didTap.toggle()
            
        })
        {
            
            Image(systemName:"xmark")
                .font(.title)
                .padding()
                .foregroundColor(Color("BleuCokido"))
            
        })
    }
}


}


struct Feedback_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PageFeedback(didTap: .constant(true), monFeedback: .constant(Feedback()))
        }
    }
}
