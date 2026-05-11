/* /darpedia/bin 

 Nome do programa: Cli.dart
 Informacoes: o aplicativo cli faz parte do projeto Dartpedia.
O cli eh nosso primeiro aplicativo que esta sendo desenvolvido usando Dart. 
	
cli.dart - Fica localizado na pasta dartpedia, em /dartpedia/cli/bin.
=======================================================================================================================================

Autor: Isadora da Silva Vasconcelos 
 E-mail: isadora.vasconcelos@portalsesisp.org.br
 Manutencao: Isadora da Silva Vasconcelos

========================================================================================================================================
 
Funcionamento:

Inicialmente o cli, ao ser executado, mostra uma saudacao na tela, por exemplo:
Dentro da pasta dartpedia em /home/irineu.caldeira/dartpedia/cli rode o comando
dart run; deve aparecer a mensagem de saudacao, "Hello, Dart!"

========================================================================================================================================
  
Exemplo:
	$dart run 
		Hello World 

=========================================================================================================================================

Historico de uso:

=========================================================================================================================================

v1.0 2026-03-30 - Isadora Vasconcelos:
- Versao inicial

Codigo:

import 'package:cli/cli.dart' as cli;

void main(List<String> arguments) {
  print('Hello world: ${cli.calculate()}!');
  }

Saida padrao ao executar o codigo:

Building package executable...
Built cli:cli.
Hello world: 42!

=========================================================================================================================================

v1.1 2026-03-30 - Isadora Vasconcelos:
- Exclusao da primeira linha, alteracao na print declaracao para exibir uma saudacao simples. De 'hello world' para 'Hello, Dart!'
 
Codigo alterado:

import 'package:cli/cli.dart' as cli; // Delete this entire line

void main(List<String> arguments) {
  print('Hello, Dart!'); // Change this line
}

Saida padrao ao executar o codigo:

Building package executable...
Built cli:cli.
Hello, Dart!

=========================================================================================================================================

v1.2 2026-03-30 - Isadora Vasconcelos:
	- Declaracao de uma const variavel para versao. 
	- Adicao do "if" para verificar se o primeiro argumento fornecido eh "true" version.

Codigo alterado:

const version = '0.0.2'; // Add this line

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('Hello, Dart!');
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  }
}

Saida ao executar o codigo: (Execute sua aplicacao com o argumento de versao: dart bin/cli.dart version). Obs. Importate !! Se voce executar seu aplicativo sem argumentos, ainda vera "Ola, Dart!". Voce devera ver agora:

Dartpedia CLI version 0.0.2

==========================================================================================================================================

v1.3 2026-03-30 - Isadora Vasconcelos:
	- Adicione uma printUsage funcao. Para tornar a saida mais amigavel ao usuario, crie uma funcao separada para exibir as informacoes de uso.

const version = '0.0.3'; // Add this line

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('Hello, Dart!');
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  }
}

void printUsage() { // Add this new function
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}

Saida ao executar o codigo: Perguntas: O que acontece ao executar este codigo, com o comando Dart run ? E o comando dart run cli.dart version ? Como executo o help ? E o search ?

===========================================================================================================================================

v1.4 2026-04-06 - Isadora Vasconcelos:
	- Implemente o help comando e refine main: Agora, integre o help comando usando uma else if instrucao e limpe o comportamento padrao para chamara printUsage funcao.

const version = '0.0.4'; // Add this line

void main(List<String> arguments) {
	if (arguments.isEmpty || arguments.first == 'help') {
		printUsage(); // Change this from 'Hello, Dart!'
	} else if (arguments.first == 'version') {
		print('Dartpedia CLI version $version');
	} else {
	printUsage(); // Catch-all for any unrecognized command.
}

void printUsage() { // Add this new function
	print(
	"The following commends are valid: 'help', 'version', 'search >ARTICLE-TITLE>'");
	}

Saida ao executar o codigo: 1 -> dart bin/cli.dart help. Tente tambem, 2 -> dart bin/cli.dart.

Saida 1 -> The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>

Saida 2 -> The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>

===========================================================================================================================================
v1.5 2026-04-06 - Isadora Vasconcelos:
	- Implementar o comando de busca.

Implemente um comando basico search que receba o titulo de um artigo como entrada. Ao desenvolver essa funcionalidade, voce trabalhara com List manipulacao de dados, verificacao de valores nulos e interpolacao de strings.

1. Integre o search comando em main: Primeiro, modifique a mainfuncao cli/bin/cli.dart para incluir um else if que lide com o search comando. Por enquanto, basta imprimir uma mensagem de espaco reservado.

Codigo:


const version = '0.0.5'; // Add this line

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    // Add this new block:
    print('Search command recognized!');
  } else {
    printUsage();
  }
}

void printUsage() { // Add this new function
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
} 


Saida ao executar o codigo: Teste o novo comando: Execute sua aplicacao com o search comando:

dart bin/cli.dart search

Voce devera ver:

Search command recognized!
===========================================================================================================================================

v1.6 2026-04-07 - Isadora Vasconcelos:
	- Defina a search Wikipedia funcao: O search comando eventualmente executara alogica principal do seu aplicativo chamando uma funcao chamada search Wikipedia. Por enquanto, faca 
com que ela search Wikipedia imprima os argumentos passados para ela com o search comando. 

Coloque esta nova funcao abaixo de main.

// ... (your existing main function)

void searchWikipedia(List<String>? arguments) { // Add this new function and add ? to arguments type
  print('searchWikipedia received arguments: $arguments');
}

// ... (your existing printUsage() function) 


Codigo:

const version = '0.0.6'; // Add this line

void main(List<String> arguments) {
	if (arguments.isEmpty || arguments.first == 'help') {
    		printUsage();
  	} else if (arguments.first == 'version') {
    		print('Dartpedia CLI version $version');
  	} else if (arguments.first == 'search') {
    	// Add this new block:
	final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    		searchWikipedia(inputArgs);
	} else {
    		printUsage();
  	}
}

void searchWikipedia(List<String>? arguments) { // Add this new function and add ? to arguments type
  print('searchWikipedia received arguments: $arguments');
}

void printUsage() { // Add this new function
  	print(
    	"The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'");
}

==========================================================================================================================================
v1.7. 2026-04-13 - Isadora Vasconcelos
        - O código agora solicita o título do artigo via stdin.readLineSync() caso não seja fornecido por argumento. Foi adicionada a importação dart:io e o uso do
        operador ?? para garantir que a variável articleTitle nunca seja nula.

        Código:

        // import 'package:cli/cli.dart' as cli; // Delete this entire line
        import 'dart:io'; // Add this line at the top  

        void printUsage() { // Add this new function
         print(
         "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
          );
        }

        const version = '0.0.6'

        void main(List<String> arguments) {
          if (arguments.isEmpty || arguments.first == 'help') {
           printUsage();
         } else if (arguments.first == 'version') {
           print('Dartpedia CLI version $version');
         } else if (arguments.first == 'search') {
          // Add this new block:
         final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
          searchWikipedia(inputArgs);
         } else {
           printUsage();
         }
        }

        void searchWikipedia(List<String>? arguments) {
         final String articleTitle;

         // If the user didn't pass in arguments, request an article title.
         if (arguments == null || arguments.isEmpty) {
           print('Please provide an article title.');
           // Await input and provide a default empty string if the input is null.
          articleTitle = stdin.readLineSync() ?? '';
         } else {
          // Otherwise, join the arguments into a single string.
         articleTitle = arguments.join(' ');
         }

        print('Current article title: $articleTitle');
        }

===========================================================================
        v1.8. 2026-04-14 - Isadora Vasconcelos:
        - Atualização do searchWikipedia para exibir mensagens que indiquem que nosso programa encontrou algo. Para que haja melhor visualização do que nosso programa final fara sem precisar compila-lo
          completamente agora. Voce so vera essas mensagens se incluir uma consulta de pesquisa ao executar o programa.
               
        Código:

        // import 'package:cli/cli.dart as cli;
        import 'dart:io'; // Add this line at the top

        void printUsage() { // Add this new function
         print(
           "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
         );
        }

        const version = '0.0.7';

        void main(List<String> arguments) {
          if (arguments.isEmpty || arguments.first == 'help') {
           printUsage();
          } else if (arguments.first == 'version') {
           print('Dartpedia CLI version $version');
          } else if (arguments.first == 'search') {
           // Add this new block:
           final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
           searchWikipedia(inputArgs);
         } else {
           printUsage();
         }
        }

        void searchWikipedia(List<String>? arguments) {
         final String articleTitle;

         // If the user didn't pass in arguments, request an article title.
         if (arguments == null || arguments.isEmpty) {
          print('Please provide an article title.');
         // Await input and provide a default empty string if the input is null.
          articleTitle = stdin.readLineSync() ?? '';
         } else {
          // Otherwise, join the arguments into the CLI into a single string
          articleTitle = arguments.join(' ');
         }

         print('Looking up articles about "$articleTitle". Please wait.');
         print('Here ya go!');
        print('(Pretend this is an article about "$articleTitle")');
        }

        Saida com "dart bin/cli.dart search Dart Programming" : Looking up articles about "Dart Programming". Please wait.
        Here ya go!
        (Pretend this is an article about "Dart Programming")
       
        Saida com "dart bin/cli.dart search" : Please provide an article title.
==============================================================================
*/



// import 'package:cli/cli.dart' as cli; // Delete this entire line
import 'dart:io'; // Add this line at the top

void printUsage() { // Add this new function
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}

const version = '0.0.7';


void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    // Add this new block:
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
}

void searchWikipedia(List<String>? arguments) {
  final String articleTitle;

  // If the user didn't pass in arguments, request an article title.
  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    // Await input and provide a default empty string if the input is null.
    articleTitle = stdin.readLineSync() ?? '';
  } else {
    // Otherwise, join the arguments into the CLI into a single string
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');
  print('Here ya go!');
  print('(Pretend this is an article about "$articleTitle")');
}

