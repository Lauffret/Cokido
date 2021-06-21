import SwiftUI

struct PageFeedback: View {
    @State private var username: String = ""
    @State private var showingAlert = false
    
    @State private var didTap:Bool = false
    
    private let imageI : String = "indifferent face"
    private let imageIF : String = "indifferent face fill"
    
    @State private var imageIndifferent:String = "indifferent face"
    
    private let imageH : String = "happy face"
    private let imageHF : String = "happy face fill"
    
    @State private var imageHappy: String = "happy face"
    
    private let imageS : String = "sad face"
    private let imageSF : String = "sad face fill"
    
    @State private var imageSad: String = "sad face"
    
    var body: some View {
            VStack {
                Text("Alors, ça t'a plu?").font(.title).fontWeight(.regular).multilineTextAlignment(.center).padding()
                
                HStack {
                    
                    Button(action: {imageSad = imageSF; imageHappy = imageH;imageIndifferent = imageI}, label: {
                        Image( imageSad ).resizable()
                            .frame(width: 72.0, height: 72.0)
                    })
                    
                    Button(action: {imageIndifferent = imageIF; imageHappy = imageH; imageSad = imageS }, label: {
                        Image( imageIndifferent ).resizable()
                            .frame(width: 72.0, height: 72.0)
                    })
                    
                    Button(action: {imageHappy = imageHF; imageSad = imageS;imageIndifferent = imageI}, label: {
                        Image( imageHappy ).resizable()
                            .frame(width: 72.0, height: 72.0)
                    })
                }
                
                TextField(
                    "Ajotes des notes"
                    ,text: $username)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .padding(.all)
                    .border(Color(UIColor.separator))
                    .cornerRadius(3.0)
                    .padding(.leading)
                    .padding(.trailing)
                    .padding(60
                    )
                
                Button(action: {
                        self.didTap = true;
                        showingAlert = true;
                    imageHappy = imageH; imageSad = imageS;imageIndifferent = imageI; username = ""
                }) {
                    
                    Text("Enregister")
                        .font(.system(size: 20))
                }
                .foregroundColor(.white)
                .frame(width: 120, height: 12, alignment: .center)
                .padding(.all, 20)
                .background(didTap ? Color.green : Color.blue)
                .cornerRadius(29).alert(isPresented: $showingAlert, content: {
                    Alert(
                        title: Text(""),
                        message: Text("Votre commentaire à bien était pris en compte."),
                        dismissButton: .default(Text("Valider")))
                })
                
                
                Button(action: {
                    self.didTap = false
                }) {
                    
                    Text("Plus tard")
                        .font(.system(size: 20))
                }
                .foregroundColor(.gray)
                .frame(width: 100, height: 12, alignment: .center)
                .padding(.all, 20)
                .background( Color.white)
                
            }.navigationTitle("Feedback").navigationBarTitleDisplayMode(.inline)
        }
        //        Text(username)
        
}


struct Feedback_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PageFeedback()
        }
    }
}
