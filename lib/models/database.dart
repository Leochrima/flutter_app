import 'package:flutter/material.dart';

class DataBase extends ChangeNotifier {
  int totalItems = 0;
  List fullInventory =
      allProducts.expand((Category) => Category.products).toList();

  /*int createCart() {
    int tmp = 0;
    for (final category in allProducts) {
      for (final product in category.products) {
        if (product.quantity > 0) {

      }
      tmp = category.products.length.toInt();
      totalItems = totalItems + tmp;
    }
    return totalItems;
  }*/

  void addItem(product) {
    product.quantity++;
    notifyListeners();
  }

  void removeItem(product) {
    if (product.quantity > 0) {
      product.quantity--;
      notifyListeners();
    }
  }

  //Aus Warenkorb entfernen
  void clearItem(product) {
    product.quantity = 0;
    //totalItems = 3;
    notifyListeners();
  }

  String getTotal() {
    double total = 0;
    for (Product product in fullInventory) {
      if (product.quantity > 0) {
        total =
            total + (parsetoInt(product.price.toString()) * product.quantity);
      }
    }
    String total_ST = "${total.toString()}0€";
    notifyListeners();

    return total_ST;
  }

  int parsetoInt(String price) {
    // Remove any non-digit characters from the string
    String numericPart = price.replaceAll(RegExp(r'[^0-9]'), '');

    // Parse the remaining numeric part into an integer
    int total = int.tryParse(numericPart) ?? 0;

    return total;
  }
}

class Category {
  final String? name;
  final String? imagePath;
  final List? products;

  const Category({
    required this.name,
    required this.imagePath,
    required this.products,
  });
}

class Product {
  final String? name;
  final String? imagePath;
  final String? price;
  final double? rating;
  int quantity;
  String creator;
  final String? details;

  Product({
    required this.name,
    required this.imagePath,
    required this.price,
    required this.rating,
    this.quantity = 0,
    this.creator = "L & M",
    this.details,
  });
}

//------------------- Definition of Products----------------------
List allProducts = [
  Category(
    name: "3D Modelle",
    imagePath: "lib/images/3D.PNG",
    products: models_3D,
  ),
  Category(
    name: "Arduino",
    imagePath: "lib/images/electro.png",
    products: electronic,
  ),
  Category(
    name: "Holzwerkstücke",
    imagePath: "lib/images/wood.PNG",
    products: holz,
  ),
  Category(
    name: "Tonware",
    imagePath: "lib/images/tonwaren.png",
    products: ton,
  ),
];

List models_3D = [
  Product(
    name: "Ellipsoid",
    imagePath: "lib/images/3D_1.PNG",
    price: "10€",
    rating: 5,
    details:
        "Entdecken Sie die Zukunft der Kunst mit unserem atemberaubenden 3D-Modell – eine elegante, längliche Kugel in tiefem Schwarz. Im Inneren verbirgt sich eine Welt aus vielen kunstvollen Hüllen, die in harmonischer Schönheit miteinander verschmelzen. Ein einzigartiges Meisterwerk, das Innovation und Ästhetik vereint. Holen Sie sich dieses faszinierende Kunstobjekt und lassen Sie sich von seiner begeisternden Schönheit verzaubern!",
  ),
  Product(
    name: "Seerose",
    imagePath: "lib/images/3D_2.PNG",
    price: "15€",
    rating: 5,
    details:
        "Erleben Sie die zauberhafte Poesie von (Seerose) ein beeindruckendes 3D-Modell, das die natürliche Anmut einer Seerose in realistischer Form einfängt. Die subtile Bewegung der Blütenblätter vermittelt eine harmonische Atmosphäre, als würden sie im leichten Windhauch tanzen. Die geschickte Textur der Blütenblätter lässt Sie die Authentizität dieser Kunstform förmlich spüren.",
  ),
  Product(
    name: "Katze",
    imagePath: "lib/images/3D_cat.PNG",
    price: "30€",
    rating: 4,
    details:
        "Unsere bezaubernde 3D-Modell-Katze in strahlendem Weiß. Mit anmutigen Konturen und verspieltem Charme verkörpert sie die pure Freude eines flauschigen Begleiters. (Schneeball) bringt Leichtigkeit in jeden Raum und lädt dazu ein, sich in die Welt süßer Katzenmomente zu verlieren. Eine einfache, aber herzerwärmende Bereicherung für jedes Zuhause!",
  ),
  Product(
    name: "Feuerblick",
    imagePath: "lib/images/mask.PNG",
    price: "42€",
    rating: 3.9,
    details:
        "Tauchen Sie ein in die kühne Welt des Feuerblick - unsere faszinierende 3D-Gesichtsmaske in leuchtendem Rot. Mit markanten Konturen und einer mysteriösen Aura verleiht diese Maske jedem Gesicht eine kraftvolle Präsenz. Die leidenschaftliche Farbe erweckt die Maske zum Leben und verleiht Ihrem Auftritt eine unvergessliche Note.",
  ),
  Product(
    name: "Dino",
    imagePath: "lib/images/dino.PNG",
    price: "40€",
    rating: 4.9,
    details:
        "Willkommen in der Ära des Dino - unserer eindrucksvollen 3D-Dinosaurierskulptur in tiefem Schwarz. Die markanten Konturen und die mysteriöse Ausstrahlung machen (Schattino) zu einem Blickfang in jedem Raum. Die dunkle Farbgebung betont die archaische Pracht dieses Dinosauriers und verleiht Ihrem Ambiente eine faszinierende, prähistorische Atmosphäre. Tauchen Sie ein in die Welt von (Dino) und lassen Sie die Magie der Dinosaurier in Ihrem Raum aufleben!",
  ),
  Product(
    name: "Formenmysterium",
    imagePath: "lib/images/vase with holes.PNG",
    price: "50€",
    rating: 4.5,
    details:
        "Präsentieren Sie stolz unsere faszinierende 3D-Großkugel die (Ätherische Sphäre). Dieses meisterhaft gedruckte Kunstwerk in strahlendem Weiß enthüllt eine Welt voller Geheimnisse. Mit einer Vielzahl von Höhlen und interessanten Formen im Inneren wird jede Oberfläche zu einem kunstvollen Spiel aus Licht und Schatten. Die (Ätherische Sphäre) wurde mit einem beeindruckenden 3D-Drucker geschaffen, der jedem Detail Leben einhaucht.",
  ),
];
//-------------------------------------------------------------------
List electronic = [
  Product(
    name: "Kabel",
    imagePath: "lib/images/cable.PNG",
    price: "5€",
    rating: 4.2,
    details:
        "Ein rotes Kabel mit spitzen Enden einfach, doch kraftvoll. Dieses (Rote Anschlusskabel) ist der Schlüssel für reibungslose elektronische Verbindungen. Seine lebendige Farbe signalisiert Energie und verbindet Geräte mühelos. Die Essenz der Elektronik, kompakt und bereit für die Verbindung.",
  ),
  Product(
    name: "Motherboard",
    imagePath: "lib/images/board.PNG",
    price: "20€",
    rating: 3.7,
    details:
        "Entfessele deine elektrische Kreativität mit dem (ElektroBoard Maker)! Bei uns kannst du dein eigenes elektrisches Board gestalten und dabei die Zukunft der Fortbewegung mitgestalten. Unsere Plattform ermöglicht es dir, nicht nur ein Board, sondern dein persönliches Fortbewegungserlebnis zu kreieren. Wähle aus verschiedenen Komponenten, wie Motoren, Batterien und Deck-Designs, um ein elektrisches Board zu gestalten, das deinen Bedürfnissen und deinem Stil entspricht.",
  ),
];
//-------------------------------------------------------------------

List holz = [
  Product(
    name: "Gitarre",
    imagePath: "lib/images/gitar.PNG",
    price: "200€",
    rating: 4.8,
    details:
        "Erlebe den unvergleichlichen Klang unserer handgefertigten Gitarren bei (KlangSchatz). Jede Saite dieses Instruments trägt die Seele von sorgfältig ausgewähltem Holz. Diese Gitarren sind nicht nur Musik, sondern Kunstwerke, geschaffen für Liebhaber außergewöhnlicher Klänge. Aber hier hört die Geschichte nicht auf. Wir laden dich ein, Teil dieser Klangwelt zu werden. Schaffe deine eigenen Melodien, baue deine eigene Gitarre.",
  ),
/*         */
  Product(
    name: "Holz Säulen",
    imagePath: "lib/images/wood_model.PNG",
    price: "70€",
    rating: 4,
    details:
        "Entdecke die zeitlose Eleganz unserer (HolzSäulen Trio)  drei einzigartige Holzmodelle, die wie kunstvolle Säulen wirken. Jedes Stück wurde mit Sorgfalt ausgewählt und handgefertigt, um die natürliche Schönheit des Holzes in den Mittelpunkt zu stellen. Diese Holzmodelle sind nicht nur dekorative Elemente, sondern auch Ausdruck von Handwerkskunst und Raffinesse. Ihr schlichtes Design und die warmen Holzfarbtöne machen sie zu einem ansprechenden Blickfang in jedem Raum.",
  ),
  Product(
    name: "Holz Ratsche",
    imagePath: "lib/images/wood1.PNG",
    price: "20€",
    rating: 4.4,
    details:
        "Erlebe den pulsierenden Rhythmus der (Ratsche) unser handgefertigtes Holzinstrument, das Leben und Energie in deine musikalischen Momente bringt. Die Ratsche ist nicht nur ein Klangerlebnis, sondern auch eine visuelle Freude, hergestellt aus hochwertigem Holz mit Liebe zum Detail.",
  ),
];
//-------------------------------------------------------------------
List ton = [
  Product(
    name: "Zylinder Vase",
    imagePath: "lib/images/cylinderVase.PNG",
    price: "30€",
    rating: 3.9,
    details:
        "Entdecken Sie Eleganz mit unserer Ton-Zylinder-Vase eine zeitlose Kombination aus handgefertigtem Ton und modernem Design. Die klare Linienführung und die warmen Erdtöne verleihen jedem Raum eine subtile Raffinesse. Ein perfektes Accessoire, um Ihre Blumenarrangements stilvoll zu präsentieren.",
  ),
  Product(
    name: "Prisma Terra Vase",
    imagePath: "lib/images/whiteVase1.PNG",
    price: "25€",
    rating: 3.9,
    details:
        "Verleihen Sie Ihrem Raum eine stilvolle Note mit unserer einzigartigen Ton-Zylinder-Vase. Ihre schlanke Mitte und die ausladende Öffnung schaffen eine ansprechende Silhouette, die Eleganz und Modernität vereint. Handgefertigt aus hochwertigem Ton, ist diese Vase nicht nur ein Blickfang, sondern auch eine perfekte Ergänzung für Ihre Blumenarrangements",
  ),
  Product(
    name: "Kinetika Skulptur-Vase",
    imagePath: "lib/images/whiteVase3.PNG",
    price: "35€",
    rating: 4.1,
    details:
        "Entdecken Sie mit unserer einzigartigen (Futura Skulptur-Vase) modernes Design neu interpretiert. Die schrägen Knicke entlang der Höhe verleihen der Vase eine dynamische Ästhetik, während hochwertiges Material und präzise Verarbeitung für zeitlose Eleganz sorgen. Setzen Sie mit dieser Vase ein statementhaftes Design-Element in Ihrem Raum.",
  ),
  Product(
    name: "Kaninchen",
    imagePath: "lib/images/rabbit.PNG",
    price: "45€",
    rating: 3.8,
    details:
        "Unser niedliches Kaninchen, liebevoll genannt (Fluffington), bringt Freude und Lebendigkeit in Ihr Zuhause. Ein verspieltes und bezauberndes Gefährte, bereit, Ihr Herz zu erobern!",
  ),
];
