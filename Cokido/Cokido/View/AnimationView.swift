//
//  AnimationView.swift
//  Cokido
//
//  Created by Claudia on 23/06/2021.
//

import SwiftUI



struct AnimationView: View {
    
    @State var scale: CGFloat = 1
    @Binding var animationLaunch : Bool
    
    var body: some View {
        
        Button(action: {animationLaunch.toggle()}, label:{
            ZStack {
                Color(.white).ignoresSafeArea()
                VStack(spacing: -20) {
                    Spacer()
                    Text("COKIDO")
                        .font(.system(size: 100, weight: .bold, design: .rounded))
                        .fontWeight(.bold)
                    
                    HStack {
                        
                        Circle()
                            .frame(width:100, height: 100)
                            .foregroundColor(Color("RougeCokido"))
                            .scaleEffect(scale)
                            //                        .onAppear {
                            //                            let baseAnimation = Animation.easeInOut(duration: 1)
                            //                            let repeated = baseAnimation.repeatCount(8)
                            //
                            //                            withAnimation(repeated) {
                            //                                scale = 1.00
                            //                            }
                            //                        }
                            .animation(Animation.easeInOut(duration: 2.0).delay(0.1).speed(1.0))
                        
                        
                        
                        
                        Circle()
                            .frame(width: 100, height: 100)
                            .foregroundColor(Color("OrangeCokido"))
                            .scaleEffect(scale)
                            //                        .onAppear {
                            //                            let baseAnimation = Animation.easeInOut(duration: 1)
                            //                            let repeated = baseAnimation.repeatCount(8)
                            //
                            //                            withAnimation(repeated) {
                            //                                scale = 0.5
                            //                            }
                            //                        }
                            //
                            .animation(Animation.easeInOut(duration: 2.0).delay(0.5).speed(1.0))
                        
                        
                        
                        Circle()
                            .frame(width: 100, height: 100)
                            .foregroundColor(Color("VertCokido"))
                            .scaleEffect(scale)
                            //                        .onAppear {
                            //                            let baseAnimation = Animation.easeInOut(duration: 1)
                            //                            let repeated = baseAnimation.repeatCount(8) //baseAnimation.repeatForever(autoreverses: true)
                            //
                            //                            withAnimation(repeated) {
                            //                                scale = 0.5
                            //                            }
                            //                        }
                            .animation(Animation.easeInOut(duration: 2.0).delay(0.9).speed(1.0))
                        
                        
                        
                        
                        
                        Circle()
                            .frame(width: 100, height: 100)
                            .foregroundColor(Color("BleuCokido"))
                            .scaleEffect(scale)
                            .animation(Animation.easeInOut(duration: 2.0).delay(1.3).speed(1.0))
                            
                            .onAppear
                            {
                                let baseAnimation = Animation.easeInOut(duration: 2.0)
                                
                                
                                let repeated = baseAnimation.repeatCount(4)
                                
                                
                                withAnimation(repeated) {
                                    scale = 0.5
                                }
                            }
                        
                        
                        
                        
                        
                    }.padding(.bottom)
                    Spacer()
                    
                }
            }
        })
        
    }
    
}


struct AnimationView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView(animationLaunch: .constant(false))
    }
}
