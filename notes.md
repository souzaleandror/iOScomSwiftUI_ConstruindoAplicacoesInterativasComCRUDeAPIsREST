#### 04/04/2024

Curso de
iOS com SwiftUI: construindo aplicações interativas com CRUD e APIs REST

```
cd vollmed-api-swiftui-main
npm i
npm fund
npm audit fix
npm start
```

@01-Projeto inicial e o Insomnia

@@01
Apresentação

Olá! Me chamo Giovanna Moeller e sou instrutora aqui na Alura.
Audiodescrição: Giovanna Moeller é uma mulher branca, de cabelos loiros, lisos e longos. Veste uma camiseta azul com o texto "Alura".
Boas-vindas a mais um curso de SwiftUI, este envolvendo operações CRUD e requisições para uma API externa.

No projeto que vamos construir, denominado Voll Med, representaremos uma clínica médica na qual as pessoas podem ver uma lista de especialistas. As pessoas podem agendar uma consulta por meio de um calendário, selecionando a data e o horário.

Será possível verificar suas consultas agendadas, remarcar uma consulta selecionando outra data e horário, ou cancelar uma consulta. Ao cancelar, será necessário fornecer o motivo do cancelamento.

O que vamos aprender?
Durante este curso, você aprenderá a lidar com as quatro operações principais em um aplicativo: criação de dados, leitura de dados, atualização de dados e remoção de dados.

Principais Operações
Criação de dados
Leitura de dados
Atualização de dados
Remoção de dados
É essencial dominar essas operações, pois, no cotidiano da pessoa desenvolvedora mobile, estamos constantemente comunicando com serviços externos e lidando com dados.

Pré-requisitos
Os pré-requisitos desse curso incluem conhecimento prévio em construção de layouts com SwiftUI e seus principais componentes, além de noções básicas de requisições HTTP. Mas não se preocupe, também faremos uma revisão desses conceitos.

Se tiver qualquer dúvida, não hesite em postá-la no fórum ou nos contatar no Discord. Estaremos sempre disponíveis para ajudar.

Agora, vamos começar este projeto.

Te espero na primeira aula!

@@02
Preparando o ambiente: download do projeto inicial

Olá!
Você está a um passo de mergulhar nas funcionalidades mais interativas e práticas do SwiftUI. Antes de prosseguir, precisamos nos certificar de que você está com o ambiente preparado. Então, vamos ao que interessa!

Neste curso, trabalharemos com o Voll - um projeto já em andamento, pois como o foco deste curso não é a construção de layouts, eu já trouxe algo pronto, mas que vocês já estudaram sobre e já viram anteriormente, não há nada novo!

Baixe o projeto inicial, ou acesse o repositório no GitHub e pegue o projeto da branch projeto-inicial.

Xcode 15
Certifique-se de que tem o Xcode instalado na sua máquina. Caso ainda não tenha, pode baixá-lo diretamente da AppStore ou no site oficial da Apple para desenvolvedores.

Lembrando que o Xcode só está disponível para sistema operacional MacOS!
Neste curso, estaremos utilizando o Xcode na versão 15. No momento de gravação deste curso, a versão 15 ainda estava em beta, ou seja, não estava disponível para todo mundo ainda.

Entretanto, quando você estiver assistindo este curso, muito provavelmente a versão 15 já estará disponível para todos os usuários e você poderá fazer o download tranquilamente.

Com o Xcode 15/iOS 17.0, vieram algumas modificações em um projeto iOS. Se você tentar executar este mesmo projeto em uma versão anterior (como a 14), o Xcode não irá executá-lo da maneira esperada e causará erros.

Na seção “Para saber mais: Novidades no Xcode 15”, eu explico passo a passo o que estamos utilizando de novidades e como você pode fazer para que seu projeto execute da maneira esperada em alguma versão anterior do Xcode, caso você esteja utilizando.

Agora que você já está executando o projeto com SwiftUI na sua máquina, vamos baixar e executar a nossa API!

Um abraço,

Giovanna Moeller

https://github.com/alura-cursos/swiftui-vollmed-crud/archive/refs/heads/projeto-inicial.zip

https://github.com/alura-cursos/swiftui-vollmed-crud/tree/projeto-inicial

https://apps.apple.com/br/app/xcode/id497799835

https://developer.apple.com/xcode/

@@03
Preparando o ambiente: download e execução da API

Vamos dar vida à nossa aplicação! Para que possamos simular a comunicação com um servidor real, utilizaremos uma API construída em NodeJS. Vamos ao passo a passo:
1. Baixe o repositório da API:
Antes de tudo, precisamos ter o código da API em sua máquina. Faça o download do projeto da API ou acesse o link do repositório no Github. Para este curso, utilizaremos a branch chamada main.

2. Instale o NodeJS:
Se você ainda não possui o NodeJS instalado, é a hora de baixá-lo. Acesse o site oficial do NodeJS, faça o download da versão recomendada e siga os passos da instalação.

Você precisa ter o NodeJS instalado na sua máquina, pois a API é feita com NodeJS, um ambiente de execução JavaScript do lado do servidor, permitindo o desenvolvimento de aplicações web escaláveis e assíncronas.

Não se preocupe se você não souber Javascript ou NodeJS! O objetivo aqui é apenas executar a nossa API, de onde vamos consumir os dados, salvar agendamentos de consulta, etc.

3. Execute a API:
Abra o terminal;
Navegue até o diretório onde baixou o projeto da API, utilizando o comando cd <caminho-para-o-projeto>;
Execute npm install para instalar todas as dependências do projeto;
Se der algum erro na instalação por conta de permissão, execute o sudo npm install para instalar como administrador;
Por fim, digite npm start para iniciar a API.
Pronto! Agora, a API estará rodando localmente em sua máquina e estará pronta para receber as requisições de nosso projeto em SwiftUI.

Agora que tudo está preparado, estamos prontos para começar a jornada! Lembre-se, a prática leva à perfeição. Por isso, faça todos os exercícios e, sempre que tiver dúvidas, conte conosco no fórum e na comunidade do Discord.

https://github.com/alura-cursos/vollmed-api-swiftui/archive/refs/heads/main.zip

https://github.com/alura-cursos/vollmed-api-swiftui/tree/main

https://nodejs.org/

@@04
Preparando o ambiente: download do Insomnia

Enquanto construímos nossa aplicação em SwiftUI e configuramos nossa API, precisaremos de uma ferramenta para testar nossas requisições HTTP. Aqui é onde entra o Insomnia!
O que é o Insomnia?
Insomnia é uma ferramenta de teste e documentação de APIs. Ele permite que você crie, envie e visualize as respostas de requisições HTTP/REST (e outros tipos) de uma maneira descomplicada e intuitiva. Em resumo, o Insomnia permite testar endpoints da sua API, verificar respostas e experimentar diferentes cenários antes de incorporá-los à sua aplicação.

Por que usar o Insomnia?
Existem várias ferramentas disponíveis para testar APIs, mas escolhemos o Insomnia por sua interface amigável, funcionalidades robustas e facilidade de uso. Além disso, é gratuito e possui versões para todos os principais sistemas operacionais.

Passo a passo para configurar o Insomnia:
1 - Download e instalação

Acesse o site oficial do Insomnia e faça o download da aplicação. Siga as instruções de instalação que aparecem na tela.

2 - Baixe o arquivo JSON de importação

Preparamos um arquivo JSON que contém algumas configurações iniciais e exemplos de requisições para ajudá-lo a começar mais rapidamente. Assim, é necessário que você faça o download do arquivo (você precisa clicar no ícone de download).

Não se preocupe em importar esse arquivo agora, pois vamos fazer isso juntos em um dos nossos vídeos de instrução.

Agora, com o Insomnia pronto e o arquivo JSON em mãos, você está bem equipado para avançar no curso e experimentar a comunicação entre sua aplicação SwiftUI e a API.

Esteja sempre à vontade para retornar a este material sempre que precisar e lembre-se de que estamos juntos nessa jornada!

Qualquer dúvida, nosso fórum e comunidade do Discord estão à sua disposição.

https://insomnia.rest/download/

https://insomnia.rest/download/

https://github.com/alura-cursos/vollmed-api-swiftui/blob/main/Vollmed-CRUD.json

@@05
Reparo do Node

Durante a gravação desse curso, aconteceu uma atualização na versão do Node, coisa bem comum no mundo da tecnologia, certo? Então vou deixar a braba para solucionar alguns probleminhas, caso você os tenha:
Se durante a execução da API aparecer o erro 'TypeError [IERR_UNKNOWN_FILE_EXTENSION]: Unknown file extension "ts", faça a alteração a seguir no script de inicialização, no arquivo package.json.

Script original:

"start": "ts-node --esm ./src/server.ts",
COPIAR CÓDIGO
Deve ser alterado para:

"start": "node -r ts-node/register ./src/server.ts",
COPIAR CÓDIGO
Essa mudança faz com que o ts-node seja usado de forma mais integrada. O -r ts-node/register compila e carrega os arquivos TypeScript durante a execução do programa, garantindo assim que o TypeScript funcione corretamente no Node.js.

Problemas com a versão do ts-node?

Se você encontrar algum problema relacionado à versão do ts-node, aqui estão dois comandos rápidos para resolver:

npm install ts-node@latest --save-dev
npm update
Para mais detalhes e discussões, não esqueçam de conferir o fórum do curso, esse ambiente super colaborativo, que a comunidade da Alura troca dicas e conhecimentos, inclusive essas soluções para o problema de versionamento do Node, foram apresentadas pelo estudante: Wesley Rebouças - no tópico o bug 'Unknown file extension .ts'.

E se você encontrar mais algum problema, por favor, compartilhe conosco. Continuaremos aprimorando o curso juntos!

@@06
Conhecendo o projeto inicial

Vamos iniciar compreendendo o projeto inicial.
Este curso não se concentra em layout, por isso já trouxemos um projeto inicial para enfocar no objetivo deste curso, que é realizar requisições com uma API externa.

Entendendo o Projeto Inicial
Com o XCode aberto, estou utilizando a versão 15, que neste momento está em beta, o que significa que não está disponível para todo o público. No entanto, acreditamos que quando vocês estiverem assistindo a este curso, essa versão estará em release, ou seja, disponível para todos.

Começaremos executando nosso projeto teclando "Command + R", e ele abrirá o simulador. Estamos utilizando o simulador do iPhone 14, que está na versão do iOS 17, mas não importa qual simulador estaremos utilizando.

Simulador iPhone 14 exibindo um fundo branco com o aplicativo "Voll Med". No topo central, encontramos o logotipo "Voll Med". Abaixo, uma mensagem de boas-vindas é seguida pelo texto: "Veja abaixo os especialistas da Vollmed disponíveis e marque já a sua consulta!". Logo abaixo desse texto, há uma lista de especialistas com suas fotos, nomes, especialidades e um botão "Agendar consulta".

Nossa tela inicial do aplicativo é composta por uma imagem, um texto de boas-vindas e um texto para apresentar os especialistas da Voll Med disponíveis. Além disso, há uma lista de especialistas que é completamente estática. Mostraremos por que essa lista é estática.

Analisando o código
Iniciaremos analisando o código pela pasta Assets, em que temos a seguinte estrutura:

Assets
AccentColor
Appicon
Colors
Cancel
Light Blue
Doctor
Logo
Nela, temos a AccentColor, que é a cor de destaque da nossa aplicação, composta por um azul mais escuro.

Há o ícone da nossa aplicação, o "API", com o ícone do aplicativo e uma pasta Colors, que contém duas cores. A primeira cor é uma vermelha, chamada de Cancel, e a segunda cor é um azul mais claro, chamado de Light Blue.

Por fim, temos duas imagens: uma imagem estática de uma pessoa doutora, que será alterada, pois vamos realizar o download de imagens de acordo com a URL que vem da API, mas isso é assunto para os próximos capítulos. Além disso, temos uma imagem da logo da nossa aplicação.

A nossa tela inicial é a "Home View". Vamos abrir o arquivo "VollMedApp":

VollMedApp
// VollmedApp.swift
// Vollmed
//
// Created by Giovanna Moeller on 12/09/23.
//
import SwiftUI

@main
struct VollmedApp: App {
var body: some Scene {
WindowGroup { 
HomeView()
}
}
}
COPIAR CÓDIGO
Neste arquivo, observamos que a "Home View" está sendo chamada ao invés da "ContentView":

ContentView
//
// ContentView.swift
// Vollmed
// Created by Giovanna Moeller on 12/09/23.

import SwiftUI

struct ContentView: View {
var body: some View {
VStack {
Image (systemName: "globe")
.imageScale(.large)
.foregroundStyle(.tint)
}
Text("Hello, world!")
.padding()
}
}
# Preview {
ContentView()
}
COPIAR CÓDIGO
A "ContentView" é a tela padrão que vem com todo o projeto inicializado em SwiftUI. Nesse momento, ela está exatamente como veio originalmente, e não vamos mexer nela por enquanto.

Selecionamos o arquivo HomeView do lado esquerdo do Xcode:

HomeView
import SwiftUI

struct HomeView: View {
var body: some View {
ScrollView(showsIndicators: false) {
VStack {
Image(.logo)
.resizable()
.scaledToFit()
.frame(width: 200)
.padding(.vertical, 32)
Text("Boas-vindas!")
.font(.title2)
.bold()
.foregroundColor(Color(.lightBlue))
Text("Veja abaixo os especialistas da Vollmed disponíveis e marque já a sua consulta!")
.font(.title3)
.bold()
.foregroundColor(.accentColor)
.multilineTextAlignment(.center)
.padding(.vertical, 16)
ForEach(specialists) { specialist in 
SpecialistCardView(specialist: specialist)
.padding(.bottom, 8)
}
}
.padding(.horizontal)
}
.padding(.top)
}
COPIAR CÓDIGO
Observem que temos uma ScrollView(), pois podemos ter vários especialistas e o usuário precisa rolar a tela. Temos uma imagem, e eu estou importando esta imagem do Assets de uma maneira um pouco diferente, graças a uma nova funcionalidade do Xcode 15.

Antes, precisávamos referenciar com uma String (Image("Logo")), mas agora basta escrever um ponto e o nome da imagem que está no Assets. A mesma coisa ocorre com a cor. Na linha 22, onde temos esse foregroundColor, colocamos Color(.lightblue), que é a nossa cor lightblue lá do Assets.

Essa é uma nova funcionalidade do Xcode 15 que gostei bastante, porque evita muitos erros.

Portanto, temos neste arquivo uma imagem com alguns modificadores de propriedade e também um texto com outros modificadores. Finalmente, temos esse forEach, no qual a nossa variável é especialistas.

O componente SpecialistCardView é definido dentro da nossa pasta components, que está localizada dentro da pasta views. Do lado esquerdo, clicamos no arquivo SpecialistCardView:

SpecialistCardView
import SwiftUI

struct SpecialistCardView: View {

var specialist: Specialist

var body: some View {
VStack(alignment: .leading) {
HStack(spacing: 16.0) {
Image(.doctor)
.resizable()
.scaledToFill()
.frame(width: 64, height: 64)
.clipShape (Circle())

VStack(alignment: .leading, spacing: 8.0) { 
Text(specialist.name)
.font(.title3)
.bold()
}
}
Text (specialist.specialty)
}
}
ButtonView(text: "Agendar Consulta")
}

// código omitido
COPIAR CÓDIGO
Observem que há a variável especialist que estamos passando, temos um VStack, no qual os elementos estão alinhados à esquerda.

Também temos um HStack, que é o nosso container horizontal que possui um espaçamento de 16, e, dentro desse container, encontramos uma imagem estática do Assets e um outro container vertical, onde apresentamos o nome da pessoa especialista e a sua especialidade. Também temos um botão, que é um componente personalizado criado por mim.

Do lado esquerdo, dentro de components, clicamos no arquivo ButtonView.

ButtonView
// código omitido

import SwiftUI

enum ButtonType {
case primary
case cancel
}

struct ButtonView: View {
var text: String
var buttonType: ButtonType

init(text: String, buttonType: ButtonType = .primary) { 
self.text = text
self.buttonType = buttonType
}

var body: some View {
Text(text)
.bold()
.foregroundColor(.white)
.frame(maxWidth: .infinity)
.padding(.vertical, 14)
.background(buttonType == .primary ? Color.accentColor :
Color(.cancel))
.cornerRadius(12)
.padding(.top, 8)
}
}

#Preview {
ButtonView(text: "Agendar consulta")
}
COPIAR CÓDIGO
Temos como parãmetro um texto do tipo string e na sequência o tipo do botão. Este tipo de botão é definido pelo enum ButtonType que possui dois casos: o caso primário (primary) e de cancelamento (cancel).

Da linha 19 (initi()) até a 22, temos um construtor em que passamos os parâmetros de texto e tipo de botão. No entanto, caso não passarmos nenhum valor para o ButtonType será assumido que o valor padrão será o primary.

Qual a diferença entre primary e cancel? Somente a cor. Na linha 30 (background()) fazemos uma verificação ternária na cor de fundo. Quando o tipo deo botão for primário a cor será accentColor, sendo o azul escuro. Já se for cancel, inserimos a cor vermelha.

No Preview, como não estamos passando nenhum valor para o parâmetro ButtonType, por padrão, assume que é da cor primária. No entanto, se passarmos buttonType: .cancel a cor será alterada para vermelha no emulador.

#Preview {
ButtonView(text: "Agendar consulta", buttonType: .cancel)
}
COPIAR CÓDIGO
Esse efeito será útil quando tivermos o cancelamento de uma consulta.

Do lado esquerdo, encontramos uma pasta intitulada Services, que inclui um único arquivo denominado WebService, sendo uma struct com o mesmo nome.

WebService
import Foundation

struct Web Service {
private let baseURL = "http://localhost:3000"

func getAllSpecialists() {
}
}
COPIAR CÓDIGO
Nessa struct, iremos consolidar todas as nossas chamadas para a API. Além disso, definimos uma URL base, que corresponde à URL da nossa API. A API será executada localmente, na nossa própria máquina, por isso essa é a nossa URL base.

Temos também uma função chamada getAllSpecialists que está vazia.

Na HomeView, temos um forEach da variável specialist. Essa variável está definida em uma pasta chamada models, e dentro dela temos um arquivo chamado Specialist, sendo uma struct que faz referência ao nosso modelo de especialista.

Specialist
import Foundation

struct Specialist: Identifiable, Codable {
let id: String
let name: String
let rm: String
let imageUrl: String let specialty: String
let email: String
let phoneNumber: String

enum CodingKeys: String, CodingKey { 
case id
case name = "nome"
case crm
case imageUrl = "imagem"
case specialty = "especialidade"
case email
case phoneNumber = "telefone"
}
}

// código omitido
COPIAR CÓDIGO
Quando pegamos a lista de especialistas da API, os especialistas têm as seguintes propriedades: ID, nome, CRM, uma URL de imagem para download posterior, especialidade, e-mail e número de telefone.

No entanto, quando pegamos essas informações da API, as chaves que vêm no nosso arquivo JSON estão em português. Para resolver isso, definimos o enum CodingKeys na linha 19, para fazer o mapeamento entre a chave JSON, que será retornada da API, para este modelo de dados, essa struct que estamos criando. Isso porque é considerado uma boa prática escrever o código em inglês.

Por esse motivo, estamos definindo os nossos atributos em inglês. No entanto, na API, eles estão em português, e precisamos converter essas chaves para este modelo de dados para evitar erros na decodificação.

Mais adiante, explicarei o funcionamento da nossa API, como coletamos essas informações e como elas são retornadas. Por enquanto, isso é o que precisamos entender.

Specialist
// código omitido

let specialists: [Specialist] = [
Specialist(id: "c84k5kf", name: "Dr. Carlos Alberto", crm: "123456", imageUrl:
"https://images.unsplash.com/photo-1637059824899-a441006a6875?ixlib=rb-4.0 .3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWd1fHx8fGVufDB8fHx8fA%3D 3D&auto=format&fit=crop&w=752&q=
80", specialty: "Neurologia", email: "carlos.alberto@example.com", phoneNumber: "(11) 99999-9999"),
Specialist(id: "1349493", name: "Dra. Maria Aparecida", crm: "789101", imageUrl:
"https://images.unsplash.com/photo-1651008376811-b98baee60c1f?ixlib=rb-4.0 .3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWd1fHx8fGVufDB8fHx8fA%3D %30&auto=format&fit=crop&w=687&q= 80", specialty: "Cardiologia", email: "maria.aparecida@example.com", phoneNumber: "(21)
88888-8888"),
Specialist(id: "4435h553", name: "Dr. João Ribeiro", crm: "123987", imageUrl:
"https://images.unsplash.com/photo-1622253694242-abeb37a33e97?ixlib=rb-4.0 .3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWd1fHx8fGVufDB8fHx8fA % 3D %30&auto=format&fit=crop&w=765&q= 80", specialty: "Oftalmologia", email: "joao.ribeiro@example.com", phoneNumber: "(11) 77777-7777"),
]
COPIAR CÓDIGO
Por fim, temos um array temporário chamado Specialists. Este é um array do tipo Specialist, no qual instanciamos três vezes um especialista com diferentes informações. Novamente, isso é temporário, pois vamos utilizar dados da API, tornando tudo muito mais dinâmico.

Conclusão
Este é o nosso projeto inicial. Analise o código do projeto para se familiarizar, pois é a partir dele que desenvolveremos todo o projeto.

Espero que este vídeo tenha auxiliado na compreensão da estrutura do nosso projeto inicial.

Próximos passos
Aguardo sua presença no próximo vídeo, onde exploraremos com mais detalhes o funcionamento desta API.

@@07
Fazendo requisições pelo Insomnia

Agora, vamos compreender o funcionamento da API externa, suas rotas disponíveis, os dados a serem enviados em cada rota e as ações que cada rota realiza. Para essa finalidade, utilizaremos a ferramenta chamada Insomnia.
O Insomnia é uma aplicação visual destinada a testar APIs, e ele também pode ser empregado como uma forma de documentação. Visto que não possuímos uma documentação escrita para nossa API, utilizaremos o Insomnia para obter uma compreensão mais detalhada sobre seu funcionamento.
O Insomnia permite que as pessoas desenvolvedoras interajam com APIs sem a necessidade de escrever códigos para as solicitações HTTP. Podemos fazer diversas requisições, utilizando os verbos como GET, POST, PUT, PATCH e DELETE.

Também podemos especificar o que precisamos enviar para cada requisição. Por exemplo, os cabeçalhos, denominados como headers, que são informações úteis sobre as requisições. Além disso, podemos observar o retorno de cada requisição.

Usando o Insomnia
Nesta aula, disponibilizaremos um arquivo para download no formato JSON. Esse arquivo será importado para o Insomnia.

Para realizar esse processo, na tela inicial do Insomnia, clicamos no botão "Import" localizado no centro da tela. Em seguida, selecionamos o arquivo VollMed-CRUD.json e clicamos em "Abrir". Depois, escolhemos o botão "Scan" no canto inferior direito e, em seguida, clicamos em "Import".

Será criada uma coleção (collection) chamada VollMed-CRUD.json.

Clicamos na coleção, e ao lado esquerdo, podemos observar diversas rotas e pastas:

Autenticação
POST login
POST logout
Pacientes
GET Todos os pacientes
POST Cadastro paciente
GET Consultas de um p...
GET Paciente por ID
Especialista
GET Retorna todos os e...
GET Retorna especialist...
POST Cria especialista(s)
Por exemplo, temos uma rota GET para buscar todos os pacientes. Se clicarmos nesta opção e depois em "Send" na parte superior direita, sem ter nenhum paciente cadastrado, ocorrerá um erro.

"Não encontramos pacientes!"
Nota importante: a API precisa estar em execução. Teremos um material explicando como executar a API.
Também temos a requisição POST para criar um paciente. Essa requisição recebe um JSON com os atributos: CPF, nome, e-mail, senha, telefone e um plano de saúde.

{
"cpf": "65147182055",
"nome": "Lucas", 
"email": "lucas@email.com",
"senha": "12345",
"telefone": 99999999,
"planoSaude": "Unimed"
}
COPIAR CÓDIGO
Ao clicar em "Send", será criado um paciente e recebemos como retorno um objeto do tipo paciente, com um atributo adicional, um ID. O código da requisição (status code) será 202, significando sucesso.

{
"cpf": "65147182055",
"nome": "Lucas",
"email": "lucas@email.com",
"senha": "115523486ad8986ddbd42a6a6d3f830d:bf9da3247c44e6521755540774d17db3",
"telefone": 99999999,
"planoSaude": "Unimed",
"id": "e34db020-3445-4fbf-a744-ba578754da04"
}
COPIAR CÓDIGO
Podemos também criar especialistas com a rota POST "Cria Especialistas" selecionando "Send". Os especialistas criados serão utilizados posteriormente em nosso aplicativo.

Na parte inferior da rota ou URL, temos algumas variáveis. Uma delas é a headers (cabeçalhos) da requisição, que possui uma propriedade chamada Content-Type, sendo Application/JSON, significando que estamos enviando um arquivo do tipo JSON para a API.

Consulta
POST Cria uma consulta
GET Lista todas consultas
GET Lista consulta por ID
…
Também temos as rotas de consulta na seção "Consulta". A rota POST para criar uma consulta, a rota GET para listar todas as consultas e a rota GET por ID para listar consultas. A rota PATCH para atualizar uma consulta e a rota DELETE para apagar uma consulta.

Conclusão
Essa é a funcionalidade básica da nossa API. Teremos um módulo sobre autenticação, mas por agora, no Insomnia, temos todas as rotas disponíveis, o que cada rota recebe, o que precisamos enviar para cada rota e qual é o retorno quando fazemos as requisições.

Agora que já entendemos o funcionamento, é hora de explorar o Insomnia, testar as requisições e analisar o que acontece. Depois disso, podemos começar a consumir esta API no nosso aplicativo iOS.

Até o próximo vídeo!

@@08
Conhecendo o VollMed

Veja um trecho de código do nosso projeto que define um componente de botão que aparecerá na tela do aplicativo:
enum ButtonType {
  case primary
  case cancel
}

struct ButtonView: View {
  var text: String
  var buttonType: ButtonType

  init(text: String, buttonType: ButtonType = .primary) {
      self.text = text
    self.buttonType = buttonType
  }

  var body: some View {
      Text(text)
          // ...
          .background(buttonType == .primary ? Color.accentColor : Color(.cancel))
          // ...
  }
}

#Preview {
    ButtonView(text: "Agendar consulta")
}
COPIAR CÓDIGO
Um colega de equipe que trabalha com você está com algumas dúvidas sobre esse trecho de código. Assim, qual seria a afirmação verdadeira?


O método de inicialização padrão da struct ButtonView configura o buttonType como .cancel.
 
Na verdade, o inicializador padrão configura o buttonType como .primary, conforme indicado na linha 10.
Alternativa correta
O ButtonType é uma struct que define dois tipos de botão: primary e cancel.
 
Na verdade, o ButtonType não é uma struct e, sim, um enum!
Alternativa correta
No preview, o botão "Agendar consulta" será exibido com um fundo de cor vermelho, já que o tipo do botão não foi especificado.
 
Na verdade, a cor de fundo não é vermelha! Você consegue identificar qual é a cor do fundo?
Alternativa correta
Se o buttonType for .primary, o botão terá um fundo de cor accentColor.
 
Exatamente! No modificador background(), nós fazemos uma verificação para saber qual o tipo do botão, e então atribuímos a cor de fundo baseada neste tipo. Assim, a cor de fundo do botão será azul!

@@09
Para saber mais: novidades no Xcode 15

O Xcode 15 introduziu uma série de melhorias e alterações que visam melhorar a eficiência do desenvolvimento e a experiência geral dos desenvolvedores. Algumas dessas mudanças são relacionadas ao SwiftUI e ao próprio ambiente de desenvolvimento.
Vamos abordar duas das mudanças mais notáveis: a maneira como os arquivos são referenciados no Assets Catalog (como cores e imagens) e o novo formato do #Preview.

1. Referenciando arquivos no Asset Catalog
No Xcode 15, referenciar cores e imagens do Asset Catalog tornou-se mais direto. Em vez de utilizar strings para referenciá-las, podemos utilizar da notação com ponto, tornando muito mais seguro, pois com string poderíamos errar na escrita.

Xcode 15:

Image(.logo)
  .resizable()
  .scaledToFit()
    .background(Color(.colorRed))
COPIAR CÓDIGO
Versões anteriores:

Image("Logo")
  .resizable()
  .scaledToFit()
    .background(Color("ColorRed"))
COPIAR CÓDIGO
Se você estiver usando uma versão anterior do Xcode, deve continuar a referenciar cores e imagens utilizando a notação acima.

2. #Preview
No Xcode 15, o #Preview foi introduzido para visualizar de forma mais simplificada e direta os componentes SwiftUI (e também o UIKit). Isto permite uma visão mais clara e rápida dos componentes enquanto são desenvolvidos.

Xcode 15:

#Preview {
    ButtonView(text: "Agendar consulta")
}
COPIAR CÓDIGO
Versões anteriores:

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(text: "Agendar consulta")
    }
}
COPIAR CÓDIGO
Se você não estiver usando o Xcode 15, mantenha a estrutura PreviewProvider para visualizar seus componentes SwiftUI.

As atualizações trazidas pelo Xcode 15 são um grande passo em termos de eficiência e simplicidade. No entanto, é importante lembrar que nem todos os desenvolvedores ou usuários estarão usando a versão mais recente. Por isso, é essencial entender as diferenças e estar preparado para adaptar seu código conforme necessário, dependendo da versão do Xcode em uso.

@@10
Faça como eu fiz: conhecendo o projeto e o Insomnia

Hora de colocar em prática e preparar seu ambiente!
Download do projeto inicial:
Acesse o link para baixar o projeto inicial ou acesse o repositório no GitHub e baixe o projeto da branch projeto-inicial.
Configuração do Xcode 15:
Tenha o Xcode instalado. Se o tiver não, baixe-o diretamente da AppStore ou no site oficial da Apple para desenvolvedores;
Lembre-se de que, para este curso, é preferível utilizar o Xcode na versão 15. Se estiver usando uma versão anterior, confira as "Novidades no Xcode 15" no conteúdo para fazer os ajustes necessários.
Preparando a API em NodeJS:
Baixe o código da API ou acesse o repositório no Github;
Instale o NodeJS, se ainda não o tiver. Acesse o site oficial do NodeJS e baixe a versão recomendada;
Navegue até o diretório do projeto da API através do terminal;
Execute os comandos:
npm install;
E, em seguida, npm start.
Instalação e Configuração do Insomnia:
Acesse o site oficial do Insomnia e faça o download e instalação da aplicação.
Baixe o arquivo JSON de importação. Você usará este arquivo mais tarde no curso.
Feito tudo isso, você está pronto para seguir com as próximas etapas do curso. A prática é fundamental, então certifique-se de ter seguido todos os passos corretamente!

O processo de configuração é crucial para garantir que você tenha um fluxo de trabalho tranquilo nas próximas aulas. Se encontrar qualquer problema, não hesite em buscar ajuda em nosso fórum ou comunidade no Discord!
Mantenha o ritmo e avance para a próxima aula quando estiver pronto!

Boa jornada e divirta-se programando!

https://github.com/alura-cursos/swiftui-vollmed-crud/archive/refs/heads/projeto-inicial.zip

https://github.com/alura-cursos/swiftui-vollmed-crud/tree/projeto-inicial

https://apps.apple.com/br/app/xcode/id497799835

https://developer.apple.com/xcode/

https://github.com/alura-cursos/vollmed-api-swiftui/archive/refs/heads/main.zip

https://github.com/alura-cursos/vollmed-api-swiftui/tree/main

https://nodejs.org/

https://insomnia.rest/download/

https://github.com/alura-cursos/vollmed-api-swiftui/blob/main/Vollmed-CRUD.json

@@11
O que aprendemos?

Nesta aula, você aprendeu a:
Configurar o ambiente de desenvolvimento para iniciar o projeto;
Entender o projeto inicial, entendendo sua estrutura e os principais componentes;
Utilizar a ferramenta Insomnia para fazer requisições e testar APIs.
Continue explorando e testando!