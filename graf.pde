class Graf {
  Table Musik;  
  void Text() {
    fill(#000000);
    textSize(30);
    textAlign(CENTER, CENTER);
    text("Kurver over salget af musik gennem årene", 750, 100);
  }
  void loadData() {

    // Initialize columns and rows
    cols = width/videoScale;
    rows = height/videoScale;

    // Kode til csv.filen
    background(#FFFFFF);
    Musik = loadTable("Table2.csv", "header"); // henter csv-filens info for at kunne bruge det.
    int x = 60;
    for (TableRow r : Musik.rows()) {           // 
      if (r.getString(0).equals(Medie)) {          // henter String-funktionen medie, som er i stand til at skifte grafens tal via void keypressed ved, linje: 67-79
        println(r.getString(0));                //
        for (int y = 1; y < 11; y++) {          // definere hvilket der data der skal hentes og i hvilekt parametre af csv.filen.
          int v0 = r.getInt(y);               // laver en funktion der henter info fra for-loopens funktion.
          int v1 = r.getInt(y+1); 
          strokeWeight(3);                   // tykkelsen på grafens linje
          line(x, 800-v0*3, x+60, 800-v1*3); // udskriver en ligner med tendens af min csv.fil, 800, v1 og v0 er dem der er i stand til at ændre størrelsen af grafen via and ændre på enten 800 eller gange v0 og v1 med et tal
          ellipse(x, 800-v0*3, 1, 15); // punktet ved hvert knæk
          println(v0);                       // udskriver int funktioene ovenover.
          //  rect(x, 450, 30,-v0);
          x = x + 60;
        }
        int v1 = r.getInt(12);
        ellipse(x, 800-v1*3, 15, 15);
      }
    }
  }
  void Highlight() {

    // Initialize columns and rows
    cols = width/videoScale;
    rows = height/videoScale;

    // Kode til csv.filen
    background(#FFFFFF);
    int x = 60;
    for (TableRow r : Musik.rows()) {        // 
      if (r.getString(0).equals(Medie)) {       // henter String-funktionen medie, som er i stand til at skifte grafens tal via void keypressed ved, linje: 67-79


        println(r.getString(0));  

        for (int y = 1; y < 11; y++) {          // definere hvilket der data der skal hentes og i hvilekt parametre af csv.filen.
          int v0 = r.getInt(y);               // laver en funktion der henter info fra for-loopens funktion.
          int v1 = r.getInt(y+1); 
          line(x, 800-v0*3, x+60, 800-v1*3);

          if ( 7 < dist(x, 800-v0*3, mouseX, mouseY)) { // måler distancen mellem musen og ellipsen, derefter-
            fill(255);                              // gør den ellipsen rød for at indikere at man står på har musen på den
            ellipse(x, 800-v0*3, 15, 15);
          } else {
            fill(255, 0, 0);
            ellipse(x, 800-v0*3, 15, 15);
            println(v0); // udskriver int funktioene ovenover.
          }

          //  rect(x, 450, 30,-v0);
          x = x + 60;
        }
        int v1 = r.getInt(12);
        ellipse(x, 800-v1*1, 15, 15);
      }
    }
  }
}
