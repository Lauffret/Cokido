////
////  StruturApp.swift
////  Cokido
////
////  Created by Léa AUFFRET on 15/06/2021.
////
//
//import Foundation
//
//
//struct PageActivite{
//    //Page Parent
//
////    Possédant navBar
////    Modale pour filtre
//
//    //Liste d'acitvie qu'on parcours
//    // pour activté dans ta liste du appele ActiviteRow()
//    //lien pour detail
//
//    //Chaque activite à un lien vers une page détail
//
//    func recherche(){// barre de recherche
////        recherche activité
//    }
//
//    struct ActiviteRow {// affiche de l'activité
////        Hstack{
////            //vue d'1 itemtex
////
////        }
//    }
//
//}
//
//struct Activite{ // la page activite est composé d'une liste d'activites
//    var imageActivite : String
//    var titreActivite : String
//    var description : String
//    var etape : [String]
//    var materiel : [String]
//    var duree: Int // minutes
//    var ageMin :Int
//    var ageMax :Int
//    var inter : Bool
//    var exter : Bool
//    var favori : Bool
//    var apprentissage : String
//    var compter :Bool
//    var type : Type // enum liste fermé
//    var prix : Double
//    var nBPerso : Int
//
//
//}
//
//enum Type{
//    case Visuel
//
//}
//
//struct Materiel {
//    var image : String
//    var nom : String
//}
//
////struct PageDetailActivite {
//////    Page Enfant de Activite
////
//    // Affichage D'une Activité
//
////    toggle() // mise en favori de l'activité
////
////    //Lien feedback
////    NavigationLink()
//
//
////}
//
//struct Feedback {
//    var imageEmoji : String// permet de noter l'activité
//    var note : String // commmentaire sur l'activité
//}
//
//
//struct PageFeedBack {
//    //    Page Enfant de Activite
//
//
////    ButtonValider() // Prise en compte de la notation insertion dans liste feedback
////
////    ButtonPlusTard()
//}
//
//
//struct PageFavori {
////    Page  Parent
//
//    //Copie de la page activite mais juste avce les favoris
//}
//
//struct Utilisateur {
//    var image : String
//    var  nom : String
//    var age : Int
//    var classe : String
//    var mesActivite :[ String : [Activite] ] //Dictionnaire ou tableau en tableau?
//    var mesFeedback : [Feedback]
//}
//
//struct PageProfil {
//    //Page Parent
//
//
//    // Affiche de notre utilisateur
//
//    // Affiche mesActivite par type d'activte  avec progresse bar
//
//    // Affichage Des activités fait et du temps par type d'activité
//
//    //Image faux graphique
//
////    ButtonProfilDapprentissage() // modale
////
////    ButtonTest() //button flottant
////
//}
//
//struct ModalProfilDapprentissage {
//    //Page modale
//
//}
//
//struct ActiviteTest {
//    var image : String
//    var categorie : String
//
//    var nom : String
//    var choixTest : [Activite] // liste de ce qu'il a choix
//}
//
//struct PageTest {
//    // Page Enfant de profil
//    // Button en forme de rond avecl'image dessus
//    // qui ouvre une modale
//
//}
//
//struct ModaleTest {
//
//    //Affichage pareil à PageTest
//    //Choix d'activite qui s'enregistre dans la liste choixTest
//}
//
//struct ModalFiltre {
//    //Page Modal
//
////    inter.toggle() // interieur
////    exter.toggle() // exterieur
////
////    button() // avec image pour selectionner materiel utilisé
////
////    prix.slider()// prix
////    temps.slider() // temps convertion rn Int
////    nBPerso.stepper() // nombre de personne
//
//}
