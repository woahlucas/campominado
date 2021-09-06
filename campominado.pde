// dê o valor que preferir para as variáveis m e n e veja se tem uma bomba ou se escapou!


int [][] M = new int[10][10];
boolean perdeu;
int m = (int) random(0, 10);
int n = (int) random(0, 10);

void setup() {
  size(500, 500);
  background(200);
  atribuirBombas();
  escolha(m, n);
  println();
  print("Você escolheu:", "Linha", m, "Coluna", n);
  println();
  if (perdeu == true)
    derrota();
  else
    exibirLivres();
}

//preenche a matriz aleatoriamente com 0 e 1, 0 é sem bomba e 1 é com bomba
void atribuirBombas() {
  for (int i = 0; i < M.length; i++) {
    for (int j = 0; j < M[0].length; j++) {
      M[i][j] = (int) random(0, 2);
      print(M[i][j], "");
    }
    println();
  }
}


//testa se a posição escolhida de m e n possui bomba e retorna uma boolean
boolean escolha(int x, int y) {
  if (M[x][y] == 1) {
    perdeu = true;
  } 
  return perdeu;
}

//se possui bomba o jogo acaba
void derrota() {
  print("Você perdeu, fim de jogo!");
  println();
}

/*se não possui bomba, o console vai exibir as posições livres ao redor da posição escolhida. primeiro testei com os cantos (0,0),(0,9),(9,0) e (9,9),
depois testei com as bordas (quando m é diferente de 0 e 9 e o n é 0 ou 9, e quando o n é diferente de 0 e 9 e o m é 0 ou 9, e isso já fez o teste para todas 
as bordas da matriz*/

void exibirLivres() {
  if (perdeu == false) {
    print("Posições livres na vizinhança:");
    println();
    if (m == 0 && n == 0) {
      if ( M[m][n+1] == 0) {
        print("Linha:", m, "Coluna:", n+1);
        println();
      }
      if ( M[m+1][n] == 0) {
        print("Linha:", m+1, "Coluna:", n);
        println();
      }
      if ( M[m+1][n+1] == 0) {
        print("Linha:", m+1, "Coluna:", n+1);
        println();
      }
    } else if (m == 0 && n == 9) {
      if ( M[m][n-1] == 0) {
        print("Linha:", m, "Coluna:", n-1);
        println();
      }
      if ( M[m+1][n] == 0) {
        print("Linha:", m+1, "Coluna:", n);
        println();
      }
      if ( M[m+1][n-1] == 0) {
        print("Linha:", m+1, "Coluna:", n-1);
        println();
      }
    } else if (m == 9 && n == 0) {
      if ( M[m][n+1] == 0) {
        print("Linha:", m, "Coluna:", n+1);
        println();
      }
      if ( M[m-1][n] == 0) {
        print("Linha:", m-1, "Coluna:", n);
        println();
      }
      if ( M[m-1][n+1] == 0) {
        print("Linha:", m-1, "Coluna:", n+1);
        println();
      }
    } else if (m == 9 && n == 9) {
      if ( M[m][n-1] == 0) {
        print("Linha:", m, "Coluna:", n-1);
        println();
      }
      if ( M[m-1][n] == 0) {
        print("Linha:", m-1, "Coluna:", n);
        println();
      }
      if ( M[m-1][n-1] == 0) {
        print("Linha:", m-1, "Coluna:", n-1);
        println();
      }
    } else if (m != 0 && m != 9 && n == 0) {
      if ( M[m-1][n] == 0) {
        print("Linha:", m-1, "Coluna:", n);
        println();
      }
      if ( M[m-1][n+1] == 0) {
        print("Linha:", m-1, "Coluna:", n+1);
        println();
      }
      if ( M[m][n+1] == 0) {
        print("Linha:", m, "Coluna:", n+1);
        println();
      }
      if ( M[m+1][n] == 0) {
        print("Linha:", m+1, "Coluna:", n);
        println();
      }
      if ( M[m+1][n+1] == 0) {
        print("Linha:", m+1, "Coluna:", n+1);
        println();
      }
    } else if (m != 0 && m != 9 && n == 9) {
      if ( M[m-1][n] == 0) {
        print("Linha:", m-1, "Coluna:", n);
        println();
      }
      if ( M[m-1][n-1] == 0) {
        print("Linha:", m-1, "Coluna:", n-1);
        println();
      }
      if ( M[m][n-1] == 0) {
        print("Linha:", m, "Coluna:", n-1);
        println();
      }
      if ( M[m+1][n] == 0) {
        print("Linha:", m+1, "Coluna:", n);
        println();
      }
      if ( M[m+1][n-1] == 0) {
        print("Linha:", m+1, "Coluna:", n-1);
        println();
      }
    } else if (m == 0 && n != 0 && n != 9) {
      if ( M[m][n-1] == 0) {
        print("Linha:", m, "Coluna:", n-1);
        println();
      }
      if ( M[m+1][n-1] == 0) {
        print("Linha:", m+1, "Coluna:", n-1);
        println();
      }
      if ( M[m+1][n] == 0) {
        print("Linha:", m+1, "Coluna:", n);
        println();
      }
      if ( M[m+1][n+1] == 0) {
        print("Linha:", m+1, "Coluna:", n+1);
        println();
      }
      if ( M[m][n+1] == 0) {
        print("Linha:", m, "Coluna:", n+1);
        println();
      }
    } else if (m == 9 && n != 0 && n != 9) {
      if ( M[m][n-1] == 0) {
        print("Linha:", m, "Coluna:", n-1);
        println();
      }
      if ( M[m-1][n-1] == 0) {
        print("Linha:", m+1, "Coluna:", n-1);
        println();
      }
      if ( M[m-1][n] == 0) {
        print("Linha:", m+1, "Coluna:", n);
        println();
      }
      if ( M[m-1][n+1] == 0) {
        print("Linha:", m+1, "Coluna:", n+1);
        println();
      }
      if ( M[m][n+1] == 0) {
        print("Linha:", m, "Coluna:", n+1);
        println();
      }
    } else {
      if ( M[m-1][n] == 0) {
        print("Linha:", m-1, "Coluna:", n);
        println();
      }
      if ( M[m-1][n-1] == 0) {
        print("Linha:", m-1, "Coluna:", n-1);
        println();
      }
      if ( M[m][n-1] == 0) {
        print("Linha:", m, "Coluna:", n-1);
        println();
      }
      if ( M[m+1][n-1] == 0) {
        print("Linha:", m+1, "Coluna:", n-1);
        println();
      }
      if ( M[m+1][n] == 0) {
        print("Linha:", m+1, "Coluna:", n);
        println();
      }
      if ( M[m+1][n+1] == 0) {
        print("Linha:", m+1, "Coluna:", n+1);
        println();
      }
      if ( M[m][n+1] == 0) {
        print("Linha:", m, "Coluna:", n+1);
        println();
      }
      if ( M[m-1][n+1] == 0) {
        print("Linha:", m-1, "Coluna:", n+1);
        println();
      }
    }
  }
}
