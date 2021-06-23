//
//  ModelData.swift
//  COkidoEssaie
//
//  Created by Léa AUFFRET on 14/06/2021.
//

import Foundation
import SwiftUI
import SwiftUICharts


final class Data:ObservableObject {
    @Published var activites: [Activite] = [ pateADessiner, feuillesFantomes, respiration, papillons, cocoColore , sylRig, flotteCoule ]
}

var pateADessiner = Activite(
    imageActivite: "pateADessiner",
    titreActivite: "Pate à dessiner",
    description: "Amusante et idéale pour dessiner sur les surfaces extérieures comme l’asphalte et le ciment. Cette pâte à dessiner est à mi-chemin entre la peinture et la pâte à jouer. Elle permet de créer des dessins amusants et texturés. \n\nCette recette donne suffisamment de pâte pour remplir environ 2 bouteilles comprimables. Il est préférable de la refaire plusieurs fois plutôt que de la doubler pour en avoir plus.",
    etapes: [
        "Mélanger tous les ingrédients (sauf la couleur) dans un bol. Le mélange doit être plutôt épais et juste assez liquide pour passer facilement dans la petite ouverture de la bouteille comprimable.",
        "Diviser le mélange en deux et ajouter une couleur différente à chaque portion. Bien remuer jusqu’à ce que la couleur soit uniforme",
        "Verser le mélange dans les bouteilles comprimables.",
        "Utiliser la pâte pour créer des œuvres colorées sur du carton épais ou sur l’asphalte.",
        "Laisser sécher à plat pendant plusieurs heures (ou toute une nuit) pour obtenir le résultat final."
    ],
    materiel: [sel: "2/3 de tasse",
               farine: "2/3 de tasse",
               eauTiede: "2/3 de tasse",
               gouache: "4 cl"
    ],
    duree: 120,
    ageMin: 6,
    ageMax: 8,
    inter: true,
    exter: false,
    favori: false,
    apprentissage: "Cet atelier permet: \r - d'améliorer la concentration pendant un temps donné \r- d'aprendre à suivre des instruction dans un ordre chronologique \r\r Profil de compréhension: \r- Kinesthésique\r-Visuel",
    faite: true,
    type: Type.Kinesthesique,
    prix: 10,
    nBPerso: 2,
    feedback: []
)

var feuillesFantomes = Activite(
    imageActivite: "Feuilles-fantomes",
    titreActivite: "Feuilles fantomes",
    description: "Le projet des feuilles fantômes est idéal en automne, pour célébrer l’Halloween. La forme de certaines feuilles se prête très bien à la création des fantômes.",
    etapes: [
        "Prenez les feuilles séchées que vous voulez transformer en fantômes et peignez-les en blanc. Laissez bien sécher.",
        "Avec des ciseaux, enlevez le pétiole de chaque feuille (la petite tige qui attache la feuille à la branche).",
        "Appliquez de la colle blanche sur l’endos de chaque feuille.",
        "Collez les feuilles sur un papier construction noir. Dépendant des feuilles, un fantôme peut être représenté par une seule feuille ou par plusieurs feuilles. C'est à vous de choisir!",
        "Prenez l'endos d'un pinceau, trempez-le dans la peinture noire et faites des points noirs pour représenter les yeux et la bouche des fantômes.",
        "Prenez l'endos d'un pinceau, trempez-le dans la peinture noire et faites des points noirs pour représenter les yeux et la bouche des fantômes.",
        
    ],
    materiel: [feuillesArbres:"5",
               gouache:"1 tube (noire)",
               pinceau:"2",
               ciseaux: "1",
               colleBlanche: "1 tube",
               yeuxMobiles: "2 par fantome"
    ],
    duree: 160,
    ageMin: 6,
    ageMax: 9,
    inter: true,
    exter: false,
    favori: false,
    apprentissage: "Le projet des feuilles fantômes est idéal en automne, pour célébrer l’Halloween. La forme de certaines feuilles se prête très bien à la création des fantômes.",
    faite: true,
    type: Type.Visuel,
    prix: 10,
    nBPerso: 2,
    feedback: []
)

var respiration = Activite(
    imageActivite: "respiration",
    titreActivite: "Respiration consciente",
    description: "La respiration est un acte si essentiel à la survie, mais oh! combien sous-estimé! On pense que respirer n’est bon que pour survivre, mais la respiration, c’est tellement plus que ça. Autant pour les adultes que pour les enfants, elle est utile pour calmer les émotions, connecter avec son ressenti ainsi que favoriser la concentration et l’attention en général. Quelques instants de respiration consciente peuvent rapidement changer l’énergie, l’ambiance et la dynamique.",
    etapes: [
        "Prendre conscience de leur ventre qui se gonfle \r Cette semaine, commencez tout en douceur. En position couchée ou assise, aidez les enfants à prendre conscience de leur ventre qui se gonfle et se dégonfle pendant la respiration."," Demandez aux enfants de fermer les yeux et de déposer leurs mains sur leur ventre. ","Invitez-les à inspirer et à expirer profondément et aidez-les à remarquer les mouvements de leur ventre. Amenez tranquillement les enfants à ralentir leur respiration pour sentir avec leurs mains la différence dans les mouvements de leur corps. Répétez cet exercice à quelques reprises tous les jours de la semaine.",
        "Ancrage à la terre Pour cette deuxième semaine, ancrez les enfants à la terre avec la posture de l’arbre alliée au « flow » de leur respiration. Les enfants se placent debout et étirent les bras dans les airs. ","Les enfants commencent par prendre une grande respiration et ils expirent ensuite tout doucement. À la respiration suivante, ils bougent les bras tranquillement de gauche à droite, comme des branches d’un arbre dans le vent."," Encouragez-les à se balancer tout doucement, alliant à leurs mouvements une respiration lente afin de favoriser le calme.",
        "La cohérence cardiaque Lors de cette troisième semaine, pratiquez la cohérence cardiaque. Celle-ci consiste à amener les enfants à ralentir leur respiration tout en suivant les mouvements guidés par l’adulte."," Positionnez-vous devant les enfants. Vous pouvez utiliser une plume ou simplement vos mains. Levez les mains dans les airs doucement (les enfants inspirent) et redescendez les bras (les enfants expirent). ",
        "La fleur imaginaire Pour terminer ce défi, faites appel à la fleur imaginaire. Demandez aux enfants de fermer leurs yeux et d’imaginer la fleur de leur choix. Ensuite, toujours avec les yeux fermés, invitez-les à inspirer profondément pour la sentir."," Ils pourront ensuite souffler doucement sur les pétales de la fleur en expirant. Répétez cet exercice à quelques reprises.",
        ],
    materiel: [coussin:"1",
    ],
    duree: 20,
    ageMin: 7,
    ageMax: 11,
    inter: true,
    exter: true,
    favori: true,
    apprentissage: "Avec les enfants, remarquez leur état avant et après les exercices afin de les aider à voir la différence. Les enfants prendront vite conscience qu’ils éprouvent un sentiment de bienêtre lorsqu’ils améliorent leur respiration.",
    faite: false,
    type: Type.Auditif,
    prix: 0,
    nBPerso: 2,
    feedback: []
)

var papillons = Activite(
    imageActivite: "petitsPapillons",
    titreActivite: "Petits papillons",
    description: "Vous le savez, les enfants adorent courir après les papillons! Chaque été, ils en dépensent de l’énergie à essayer de les capturer! Ici, je vous propose quelques jeux qui permettront aux enfants de jouer avec les papillons, et ce, tout en respectant la distanciation.",
    etapes: [
        "Imprimez des papillons que vous trouverez sur internet ou dessinez les. Plastifiez-les et découpez-les. Encouragez chaque enfant à choisir un papillon que vous fixerez au bout d’une paille à boire.",
        "Imprimez des pages sur lesquelles on trouve des fleurs pour chaque enfant. Plastifiez et découpez les fleurs. Les enfants les fixent sur des bâtons Popsicle de couleur verte.",
        "Dans la cour extérieure, aidez les enfants à piquer leurs fleurs dans le gazon à l’intérieur de leur espace de jeu personnel, en vous assurant de respecter la distance de 2 mètres entre les enfants.",
        "Ensuite, invitez les enfants à solliciter leurs muscles afin de faire voler leur petit papillon. ","Afin d’encourager les enfants à se mouvoir de différentes façons, proposez-leur des actions qu’ils pourront reproduire en tenant la paille sur laquelle leur papillon est fixé.",
        " \r-Voici des suggestions : \r-Ton petit papillon vole très, très haut .\r-Il fait de gros zigzags devant tes yeux.\r-Il se pose tout doucement sur la fleur jaune.\r-Rapidement, il virevolte jusqu’à la fleur bleu et mauve.","\r-Il fait le tour de ta tête et redescend au sol.\r-Il est attiré par la fleur de couleur orange et se pose dessus.\r-Ton papillon se promène de ta main droite à ta main gauche plusieurs fois.","\r-Il touche la fleur avec du vert et du jaune.\r-Il touche la fleur avec la couleur rose et la couleur orange.\r-Il se cache dans ton dos.\r-Tu te détournes pour le voir, vers la droite et vers la gauche.\r-Tu essaies même de le voir en regardant entre tes jambes.","\r-Ton papillon est déchainé! Il passe d’une fleur à l’autre très, très vite.\r-Ses muscles sont fatigués et les tiens aussi, tu t’étends par terre.\r-Ton papillon se pose sur ton ventre.\r-Prends de grandes respirations et regarde-le monter et descendre tout doucement."
        
    ],
    materiel: [imprimeFleur:"1 par enfant",
               imprimePapillons:"1 par enfant",
               paille:"1 par enfant"
    ],
    duree: 60,
    ageMin: 7,
    ageMax: 9,
    inter: true,
    exter: false,
    favori: false,
    apprentissage: "Vous comprendrez que les possibilités sont infinies! Plus vous dicterez les instructions rapidement, plus les enfants auront chaud! Amusez-vous à alterner entre des mouvements rapides et lents, entre des actions en hauteur et au sol.",
    faite: true,
    type: Type.Kinesthesique,
    prix: 10,
    nBPerso: 2,
    feedback: []
)

var cocoColore = Activite(
    imageActivite: "defiDesCocosColores",
    titreActivite: "Cocos colorés",
    description: "Avec l’arrivée du printemps viennent les jours de pluie. Même s’il peut être amusant de sortir jouer dans les flaques d’eau à l’occasion, il y aura inévitablement des journées où le temps sera tout simplement trop mauvais pour s’amuser à l'extérieur. Voici une activité sur le thème de Pâques qui fera bouger les enfants à l’intérieur.",
    etapes: [
        "Imprimez deux pages contenant des dessins d'oeufs. Plastifiez et découpez les 2 séries d’œufs. Fixez chaque série d’œufs sur un mur différent, à la hauteur des enfants.",
        "Ensuite, gonflez plusieurs ballons de fête de manière à avoir au moins 2 ballons correspondant à la couleur de chaque œuf fixé au mur. Les ballons représenteront des œufs de Pâques. Déposez-les dans un gros panier de Pâques ou un bac au centre de la pièce.",
        
        "Divisez votre groupe en 2 équipes et attribuez un mur à chacune."," À votre signal, les enfants de chaque équipe vont chercher un ballon, courent jusqu’au mur de leur équipe, frottent énergiquement le ballon sur leur pantalon afin de créer de l’électricité statique et tentent ensuite de le faire tenir sur l’œuf de la même couleur, au mur.",
        
        "Réussir à faire tenir les 5 ballons/œufs de couleur simultanément est tout un défi, car pendant que les enfants s’affairent à tenter d’apposer leurs derniers ballons, les premiers risquent de glisser et tomber au sol…"
    ],
    materiel: [imprimeOeufs:"2 par enfant",
               ballons:"2 ballons par couleur d'oeuf,"
    ],
    duree: 120,
    ageMin: 6,
    ageMax: 10,
    inter: false,
    exter: true,
    favori: false,
    apprentissage: "Cette activité si simple fera bouger les enfants de différentes façons. En plus de courir pour récupérer les ballons dans le panier, ils s’étireront, s’accroupiront et activeront les muscles de leurs bras en frottant les ballons sur leurs jambes.",
    faite: false,
    type: Type.Kinesthesique,
    prix: 14,
    nBPerso: 4,
    feedback: []
)


var flotteCoule = Activite(
    imageActivite: "caFlotte",
    titreActivite: "Ca flotte? ca coule?",
    description: "Pourquoi certains objets flottent et d'autres coulent?\rDemandez aux enfants qu’est-ce qui fait qu’un objet flotte alors qu’un autre coule? Le poids? La taille? La forme? Toutes ces réponses?",
    etapes: [
        "Place tous les objets sélectionnés par ton éducatrice sur la table.",
        "Choisis-en un et laisse-le tomber à l’eau. Est-ce qu’il flotte ou il coule?",
        "À tour de rôle, chacun de tes amis laisse tomber un objet dans l’eau jusqu’à ce qu’il ne reste plus d’objet sur la table.",
        "Au fur et à mesure, classe les objets en deux piles : ceux qui flottent et ceux qui coulent.",
        "Dans ton entourage, trouve d’autres objets avec lesquels tu pourrais faire l’expérience.",
        "Tu peux même essayer de deviner le résultat avant de laisser tomber l’objet.",
    ],
    materiel: [ bacEau: "1",
                bouchonLiege: "1",
                lego: "1",
                caillou: "1",
                piece:"1",
                cuillereMetal:"1",
                cuillerPlastique:"1",
                clou:"1",
                balleCaoutchouc:"1",
                ballons:"1",
                carton:"1",
                bois:"1",
                pateModelerBol:"1",
                pateModelerBoulle:"1",
    ],
    duree: 160,
    ageMin: 6,
    ageMax: 9,
    inter: true,
    exter: false,
    favori: false,
    apprentissage: "Il n’y a pas une seule raison qui peut expliquer pourquoi un objet coule au fond ou reste à la surface de l’eau. Tu as surement remarqué que certains objets sont gros, mais flottent, tandis que d’autres sont petits, mais coulent au fond, ou que certains sont lourds et flottent (pense aux gros bateaux!) et d’autres son légers et coulent (un sou).",
    faite: false,
    type: Type.Visuel,
    prix: 10,
    nBPerso: 2,
    feedback: [Feedback(imageEmoji: "sad face", note: "Les enfants on participé mais sont encore un petit peu trop peties pour jouer à ce jeu.")]
)

var sylRig = Activite(
    imageActivite: "sylRig",
    titreActivite: "Syllabes rigolottes",
    description: "Jeu de concentration, d’improvisation et de mémorisation auditive.\rLe plus difficile sera de ne pas rire!",
    etapes: [
        "On commence par un premier enfant qui doit prononcer une syllabe au hasard. exemple: \"FLIC\"",
        "Le 2e enfant doit répéter le son entendu et en rajouter un autre. Par exemple : \"FLIC, TOC\"",
        "Le jeu se poursuit ainsi, jusqu’au 5e enfant qui doit avoir mémorisé toute la série et rajouter une dernière syllabe. S’il réussit le test, il pourra prendre la place du 1er enfant et le jeu recommence!\rExemple: \"FLIC, TOC, BOUM, GRRR… TCHOU!\"",
        "Bien sûr qu’on a le droit de rire à la fin!",
        
    ],
    materiel: [imagination:"A l'infini!",
    ],
    duree: 30,
    ageMin: 6,
    ageMax: 11,
    inter: true,
    exter: true,
    favori: false,
    apprentissage: "Ce jeu est à la fois d’une grande simplicité et compliqué, car il demande une certaine concentration.",
    faite: false,
    type: Type.Auditif,
    prix: 0,
    nBPerso: 5,
    feedback: [Feedback(imageEmoji: "happy face", note: "Les enfants on beaucoup ri."),  Feedback(imageEmoji: "happy face", note:  "On a aussi essayé de jouer avec des noms d'animaux.")]
)


var sel = Ingredient(nom: "Sel", image : "sel")
var feuille =  Ingredient(nom: "Feuille", image: "feuille")

let ingredient = [rien, sel, gouache, feuille, eauTiede, farine, ciseaux ]

var farine = Ingredient(nom: "Farine", image : "farine")
var eauTiede = Ingredient(nom: "Eau tiède",  image : "eau")
var gouache = Ingredient(nom: "Gouache", image:"gouache")

var rien = Ingredient(nom: "sans materiel", image: "croix")

var feuillesArbres = Ingredient(nom: "Feuilles d’arbres séchées")
var pinceau = Ingredient(nom:"Pinceau")
var papierNoir = Ingredient(nom:"Papier noir")
var ciseaux = Ingredient(nom:"Ciseaux", image :"siceaux")
var colleBlanche = Ingredient(nom:"Colle blanche")
var yeuxMobiles = Ingredient(nom:"Yeux mobiles")

var coussin = Ingredient(nom:"Coussin")

var imprimePapillons = Ingredient(nom:"Imprimer papillons")
var imprimeFleur = Ingredient(nom:"Imprimer fleurs")
var paille = Ingredient(nom:"Pailles")

var imprimeOeufs = Ingredient(nom: "Imprimer dessins d'oeufs")
var ballons = Ingredient(nom: "Ballons")

var bacEau = Ingredient(nom:"Grand bac rempli d’eau")
var bouchonLiege = Ingredient(nom:"Bouchon de liège")
var lego = Ingredient(nom:"Lego")
var caillou = Ingredient(nom:"Caillou")
var piece = Ingredient(nom:"pièce de monnaie")
var cuillerPlastique = Ingredient(nom:"Cuillère de plastique")
var cuillereMetal = Ingredient(nom:"Cuillère de métal")
var clou = Ingredient(nom:"Clou")
var balleCaoutchouc = Ingredient(nom:"Balle de caoutchouc")
var carton = Ingredient(nom:"Morceau de carton")
var bois = Ingredient(nom:"Morceau de bois")
var pateModelerBol = Ingredient(nom:"Pate à modeler en forme de bol")
var pateModelerBoulle = Ingredient(nom:"Pate à modeler en forme de boulle")
var imagination = Ingredient(nom: "Imagination")



let utilisateur = [
    Utilisateur( nom: "Luca Duffard", age: 9, image: "Luca", classe: "CE2",  type: Type.Auditif),
    Utilisateur(nom: "Ame Duffard",age: 10, image: "Ame",  classe: "CM1", type: Type.Visuel),
   
    Utilisateur( nom: "Sara Fonrose", age: 10, image: "Sara", classe: "CM1",type: Type.Kinesthesique),
    Utilisateur(nom: "Nils Lafon", age: 8, image: "Nils" , classe: "CE1",type: Type.Kinesthesique)
]


var kine = ProfilApprentissage(image: "profilk", type: Type.Kinesthesique, cQC: "Le kinesthésique associe souvenir, mémoire à des sensations : une odeur, une émotion, un goût, une atmosphère. Si tu es kinesthésique, pour retenir les choses, tu dois les vivre, les pratiquer, pose toi les questions : « pourquoi ci ou pourquoi ça ? » et réponds-y.En bref, tu as besoin de bouger, de dessiner, bref, de mettre ton corps en mouvement et de ressentir des émotions pour retenir tes leçons.", conseil: "Travaille dans des endroits que tu aimes avec une bonne atmosphère et évite de travailler seul. Une bonne idée: organiser des révisions avec une personne que tu apprécies.", image2: "kinest", pSP: "•Pour apprendre, chaque personne fait appel à ses sens. Ils existent trois profils d’apprentissage principaux : le profil visuel, le profil auditif et le profil kinesthésique. Ils déterminent nos principaux canaux de mémorisation. ", pSP2: "•ll existe 5 canaux qui correspondent aux 5 sens : la vue, le toucher, l’odorat, l’ouïe et le goût. Le profil visuel avec le sens de la vue, le profil auditif avec le sens de l’ouïe et le kinesthésique avec les 3 autres sens.", pSP3: "•Chacun possède plusieurs de ces profils en un subtil dosage qui lui est propre. Souvent nous en favorisons un : un profil dominant.", pSP4: "•Cependant, même si nous avons un profil dominant, cela ne veut pas dire que nos autres sens sont pas en éveil dans certaines situations.", stat: "60% des personnes ont un profil visuel. 35% sont auditifs et 5% kinesthésiques. Évidemment, ce sont des dominantes... Savoir si vous êtes visuel, auditif ou kinesthésique te permettra d’adapter tes méthodes de travail à ton profil et ainsi d’optimiser tes révisions. ")

   var audi = ProfilApprentissage(image: "profila", type: Type.Auditif, cQC: "L’auditif retient aisément les sons, les bruits...Bref, tout ce qu’il peut entendre. Pour se rappeler des choses, il les répète plusieurs fois à haute voix. Une solution évidente pour lui ? Etre attentif en cours. Pour réviser, notre conseil : lire les cours à haute voix.", conseil: "Suivre des cours vidéo, c’est une alternative efficace.L’auditif est une personne qui réfléchit longuement avant d’agir et préfère être sûr de son coup.", image2: "auditif", pSP: "•Chacun possède plusieurs de ces profils en un subtil dosage qui lui est propre. Souvent nous en favorisons un : un profil dominant.", pSP2: "•Cependant, même si nous avons un profil dominant, cela ne veut pas dire que nos autres sens sont pas en éveil dans certaines situations.", pSP3: "", pSP4: "", stat: "60% des personnes ont un profil visuel. 35% sont auditifs et 5% kinesthésiques. Évidemment, ce sont des dominantes... Savoir si vous êtes visuel, auditif ou kinesthésique te permettra d’adapter tes méthodes de travail à ton profil et ainsi d’optimiser tes révisions. ")

   var visu = ProfilApprentissage(image: "profilv", type: Type.Visuel, cQC: "Le visuel utilise une mémoire eidétique, c’est- à-dire qu’il mémorise plus facilement les images, les schémas, les photos, les personnes... Pour les études, il est conseillé de bien écrire ses cours, de faire des fiches simples et bien construites ; il ne faut pas hésiter non plus à faire des beaux schémas explicatifs.", conseil: "Mémoriser le tableau de synthèse qu’a donné le professeur est sans aucun doute une solution efficace pour la personne au profil visuel dominant." , image2: "visuel", pSP: "•Le visuel est souvent une personne organisée, qui planifie tout à l’avance, elle aime contrôler la situation et agir. ", pSP2: "•Cela lui permet de garder le contrôle et de diminuer sa source de stress.", pSP3: "", pSP4: "", stat: "60% des personnes ont un profil visuel. 35% sont auditifs et 5% kinesthésiques. Évidemment, ce sont des dominantes... Savoir si vous êtes visuel, auditif ou kinesthésique te permettra d’adapter tes méthodes de travail à ton profil et ainsi d’optimiser tes révisions. ")


// LEGEND
let leg = [visuel, kinest, auditif]

let visuel = Legend(color: Color("BleuCokido"), label:"Visuel")
let kinest = Legend(color: Color("VertCokido"), label:"Kinesthésique")
let auditif = Legend(color: Color("OrangeCokido"), label:"Auditif")

//DataPoint
let pointsV: [DataPoint] = [
    .init(value: 3, label: "3", legend: leg[0]),
    .init(value: 2, label: "2", legend: leg[0]),
    .init(value: 4, label: "4", legend: leg[0]),
    .init(value: 5, label: "5", legend: leg[0]),
    
    .init(value: 1, label: "1", legend: leg[1]),
    .init(value: 2, label: "2", legend: leg[1]),
    .init(value: 4, label: "4", legend: leg[1]),
    .init(value: 5, label: "5", legend: leg[1]),
    
    .init(value: 1, label: "1", legend: leg[2]),
    .init(value: 4, label: "4", legend: leg[2]),
    .init(value: 5, label: "5", legend: leg[2]),
    .init(value: 3, label: "3", legend: leg[2])
]
