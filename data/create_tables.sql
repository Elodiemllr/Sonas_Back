
BEGIN;

DROP TABLE IF EXISTS "categorie", "article";


CREATE TABLE "categorie" (
    "id" SERIAL PRIMARY KEY,
    "name" text NOT NULL DEFAULT ''
);

CREATE TABLE "article" (
    "id" SERIAL PRIMARY KEY,
    "title" text NOT NULL DEFAULT '',
    "color1" text DEFAULT '',
    "color2" text DEFAULT '',
    "image1" text DEFAULT '', 
    "image2" text DEFAULT '', 
    "image3" text DEFAULT '', 
    "image4" text DEFAULT '', 
    "image5" text DEFAULT '', 
    "reference" text DEFAULT '',
    "description" text DEFAULT '', 
    "detail" text DEFAULT '', 
    categorie_id INTEGER NOT NULL REFERENCES categorie("id")
);


    INSERT INTO "categorie" 
    ("name")
    VALUES 
    ("caisse enregistreuse"),
    ("accessoires & cie"),
    ("rouleaux thermiques");

    INSERT INTO "article"
    ("title", 
    "color1", 
    "color2", 
    "image1", 
    "image2", 
    "image3", 
    "image4", 
    "image5", 
    "reference", 
    "description", 
    "detail", 
    categorie_id)

    VALUES
    (
    "ECRAN CAISSE - TITAN17", 
    "black", 
    "white", 
    "https://imgur.com/lT9thob", 
    "https://imgur.com/XG03Tyg", 
    NULL,
    NULL,
    NULL, 
    "SONTITANS160.17P", 
    "Avec son design ergonomique, TITAN S160 17"" est le parfait complice des entreprises qui cherchent à se distincter 
    sur le marché de la vente et de la restauration tout en alliant performances et rapidité.
    L'écran TITAN S160 existe en simple écran, double écran (client), et en 15\"" ou 17\"" ", 
    "Le terminal SAM4S Titan S160 est équipé : 
    D'un processeur Intel N2807 Dual Core Fanless, maximisant des vitesses allant jusqu'à 2,16 GHz.
    D'un écran tactile capacitif de 15 ""(indice IP55).
    D'un disque SSD de 32 Go et d'un seul emplacement DDRIII d'une capacité allant jusqu'à 4 Go.
    Le S160 offre une large gamme d'options de connectivité comme un lecteur MSR, un écran client LCD 2 lignes, 9,7 "" et 15"".
    Processeur: Intel Celeron N2807 Dual Core jusqu'à 2,16 GHz RAM: DDRIII 2 Go
    Stockage: SSD: 32 Go Affichage: LCD LED rétro-écl160airé (1024x768), tactile capacitif PCAP 5W Compatible OS: POS READY 2009 & 7, Windows 7 / Windows 8 / Windows 10 / Linux",
    1
    ),

    ("ECRAN CAISSE - TITAN15",
    "black",
    "white",
    "https://imgur.com/2J345XM",
    "https://imgur.com/7H7Rk3z",
    NULL,
    NULL,
    NULL,
    "SONTITANS160.15P",
    "Avec son design ergonomique, TITAN S160 15"" est le parfait complice des entreprises qui 
    cherchent à se distincter sur le marché de la vente et de la restauration tout en alliant performances et rapidité.
    L'écran TITAN S160 existe en simple écran, double écran (client), et en 15""ou 17"" ",
    "Le terminal SAM4S Titan S160 est équipé : 
    D'un processeur Intel N2807 Dual Core Fanless, maximisant des vitesses allant jusqu'à 2,16 GHz.
    D'un écran tactile capacitif de 15 ""(indice IP55).
    D'un disque SSD de 32 Go et d'un seul emplacement DDRIII d'une capacité allant jusqu'à 4 Go.
    Le S160 offre une large gamme d'options de connectivité comme un lecteur MSR, un écran client LCD 2 lignes, 9,7 "" et 15"".
    Processeur: Intel Celeron N2807 Dual Core jusqu'à 2,16 GHz RAM: DDRIII 2 Go
    Stockage: SSD: 32 Go Affichage: LCD LED rétro-écl160airé (1024x768), tactile capacitif PCAP 5W Compatible OS: POS READY 2009 & 7, Windows 7 / Windows 8 / Windows 10 / Linux ",
    1
    ),

    ("ECRAN CAISSE - TITAN ES",
    "black",
    "white",
    "https://imgur.com/hSgm0pO",
    "https://imgur.com/APPx30i",
    NULL,
    NULL,
    NULL,
    "SONTITANS160.ES : Ecran client simple.",
    "Avec son design ergonomique, TITAN S160 SE est le parfait complice 
    des entreprises qui cherchent à se distincter sur le marché de la vente et 
    de la restauration tout en alliant performances et rapidité.
    L'écran TITAN S160 existe en simple écran, double écran (client), et en 15""ou 17"" ",
    "Le terminal SAM4S Titan S160 SE est équipé : 
    D'un processeur Intel N2807 Dual Core Fanless, maximisant des vitesses allant jusqu'à 2,16 GHz.
    D'un écran tactile capacitif de 15 ""(indice IP55).
    D'un disque SSD de 32 Go et d'un seul emplacement DDRIII d'une capacité allant jusqu'à 4 Go.
    Le S160 offre une large gamme d'options de connectivité comme un lecteur MSR, un écran client LCD 2 lignes, 9,7 "" et 15"".
    Processeur: Intel Celeron N2807 Dual Core jusqu'à 2,16 GHz RAM: DDRIII 2 Go
    Stockage: SSD: 32 Go Affichage: LCD LED rétro-écl160airé (1024x768), tactile capacitif PCAP 5W Compatible OS: POS READY 2009 & 7, Windows 7 / Windows 8 / Windows 10 / Linux ",
    1
    ),

    ("ECRAN CAISSE - TITAN S",
    "black",
    "white",
    "https://imgur.com/Iyw6M0n",
    "https://imgur.com/EaBII1a",
    NULL,
    NULL,
    NULL,
    "SONTITANS160. S : Simple Ecran.",
    "Avec son design ergonomique, TITAN S160 17"" est le parfait complice des 
    entreprises qui cherchent à se distincter sur le marché de la vente et 
    de la restauration tout en alliant performances et rapidité.
    L'écran TITAN S160 existe en simple écran, double écran (client), et en 15""ou 17"" ",
    "Le terminal SAM4S Titan S160 S est équipé : 
    D'un processeur Intel N2807 Dual Core Fanless, maximisant des vitesses allant jusqu'à 2,16 GHz.
    D'un écran tactile capacitif de 15 ""(indice IP55).
    D'un disque SSD de 32 Go et d'un seul emplacement DDRIII d'une capacité allant jusqu'à 4 Go.
    Le S160 offre une large gamme d'options de connectivité comme un lecteur MSR, un écran client LCD 2 lignes, 9,7 "" et 15"".
    Processeur: Intel Celeron N2807 Dual Core jusqu'à 2,16 GHz RAM: DDRIII 2 Go
    Stockage: SSD: 32 Go Affichage: LCD LED rétro-écl160airé (1024x768), tactile capacitif PCAP 5W Compatible OS: POS READY 2009 & 7, Windows 7 / Windows 8 / Windows 10 / Linux",
    1),

    ("ECRAN TACTILE CAISSE - J1800",
    "black",
    NULL,
    "https://imgur.com/dqNqYRm",
    "https://imgur.com/KUtwGFi",
    NULL,
    NULL,
    NULL,
    "SONJ1800",
    "Sa structure en aluminium garantit une bonne gestion de la chaleur afin de maintenanir une performance optimale . 
    SONJ1800 a été concu pour resister à toute épreuve comme la chaleur mais également à l'eau.
    Son utilsation est simplifié et accessible à tous.
    Si vous cherchez un outil simple, performant et resistant : J1800 est fait pour vous et votre entreprise.",
    "CARACTÉRISTIQUES de J1800 :
    Baytrail J1800 DUAL CORE 2,41 GHz
    Mémoire: DDR3 2 Go (jusqu'à 8 Go)
    Disque: SSD 32 Go
    Moniteur: tactile 15,6 pouces TFT (1366 * 768)
    Ports d'E / S grand écran: 5 x USB, 4 x RS-232 (2 x alimentation DSUB-9, 1 x RJ-45)
    OS: Windows / Linux",
    1
    ),

    ("ECRAN TACTILE CAISSE - J1900",
    "black",
    NULL,
    "https://imgur.com/kIEhScV",
    "https://imgur.com/0eS9xBu",
    "https://imgur.com/Goc1Slw",
    NULL,
    NULL,
    "SONJ1900",
    "J1900 est un écran de vente complet.
    Il comprend un écran tactile de qualité mais également une imprimante thermique integré de 80mm est un écran client également integré.
    Il vous séduira par son écran tactile plat de 12.1"" et sans cadre.
    Convient aux clients qui souhaitent de petites solutions avec de grande performances.",
    "Ecran client sans cadre
    Ecran de 12.1""
    Point de vente COMPLET
    Basé sur le dernier processeur Intel® Bay Trail J1900 2,0 GHz. Disque SSD mSATA 32 Go et RAM DDRIII 2 Go.",
    1
    ),

    ("ECRAN TACTILE - POS",
    "black",
    NULL,
    "https://imgur.com/peAoQ1X",
    NULL,
    NULL,
    NULL,
    NULL,
    "SONPOS : Simple écran 15"" ",
    "L'écran SONPOS combine un design élégant et professionnel avec des fonctionnalités hautes performances.
    Ce terminal de point de vente est composé d'une structure en aluminium et d'un écran tactile plat de 15 "" avec un angle de réglage de 85º.
    L'écran SONPOS résiste à la poussière et aux projections d'eau, idéal pour résister au travail quotidien dans les conditions les plus exigeantes et les plus défavorables.
    Profitez des avantages d'un équipement professionnel et d'une solution économique, sans compromettre vos performances.",
    "Caractérisé par son écran tactile 15 "" à plat
    Ecran SANS CADRE
    résistance à l'eau et à la poussière
    Basé sur le dernier processeur Intel® Bay Trail J1900 2,0 GHz.
    Disque SSD mSATA 64 Go et RAM DDRIII 4 Go.",
    1
    ),

    ("ECRAN TACTILE CAISSE - FORZA",
    "black",
    NULL,
    "https://imgur.com/ouOVpaW",
    "https://imgur.com/Gb4hZsI",
    "https://imgur.com/O5878DS",
    "https://imgur.com/a2VNCrX",
    NULL,
    "SONFORZA ",
    "Avec son design ergonomique, SONFORZA est le parfait complice des entreprises qui cherchent de la simplicité, de la performance et un prix.
    L'écran TITANFORZA existe en noir et or ou en blanc et argent.",
    "STOCKAGE128 Go SSD
    i3: emplacement DDRIV 2 de 4 Go (jusqu'à 32 Go)
    AFFICHAGE 15 "" (1024x768) capacitif multi-touch (PCAP)
    DIMENSIONS 355 * 215 * 432 mm
    POIDS : 5,35 kg
    COULEUR : Noir et or / Blanc et argent
    ALIMENTAIRE CA 100 ~ 240V, 50 ~ 60Hz / DC 12V, 5A (60W)",
    1
    );


-- XXX Add DDLs here.

COMMIT;