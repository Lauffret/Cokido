import SwiftUI


struct activityView : View {
    var img:String
   // var count:Activite


   var body: some View {
       VStack{
        Image(img).resizable().aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/).frame(width: 150, height: 150).cornerRadius(20)

       }
   }
}



struct ProfileLearnRow: View {

    @EnvironmentObject var data: Data
    
    let profilType:Type

    var body: some View {



        VStack(alignment: .leading) {


                HStack {
                    Text(profilType.rawValue)
                        .font( .system(size: 24, weight: .medium, design: .default))
                        .padding()
                        Spacer()
                    
                    
                    ProgressView(value: Double(data.activites.filter({$0.faite && $0.type == profilType}).count )/Double( data.activites.filter({$0.type == profilType}).count )).accentColor(Color("RougeCokido")).frame(width: 150, height: 10, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .padding()

                                }



           ScrollView(.horizontal) {

               HStack {

                ForEach (data.activites.filter({$0.faite && $0.type == profilType})) { i in

                    activityView(img:i.imageActivite).padding()

                   }
               }

               }
       }

}





struct ProfileLearnRow_Previews: PreviewProvider {
    static var previews: some View {
        ProfileLearnRow(profilType: Type.Kinesthesique).environmentObject(Data())
    }
}
}
