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

#### 05/04/2024

@02-Requisição GET e async/await

@@01
Entendendo operações assíncronas

Neste vídeo, o objetivo é consumir a lista de especialistas da nossa API, pois, neste momento, nós temos a lista de forma estática, como podemos observar no arquivo Specialist, no array specialists. Queremos obter essa informação da nossa API, tornando o aplicativo mais dinâmico.
Para isso, vamos acessar o arquivo WebService e implementaremos a função getAllSpecialists. Antes disso, porém, vamos retornar ao Insomnia para estudar como essa requisição funciona.

Dentro da pasta "Especialista", queremos acionar a requisição que retorna todos os especialistas: GET: Retorna todos os especialistas.

Trata-se de uma requisição do tipo GET, o que significa que estamos buscando dados, e o endpoint (rota) dessa requisição é /especialista. Essa requisição não exige o envio de dados no corpo da mensagem e retorna uma lista de especialistas.

Ao enviar a requisição clicando em "Send" na barra superior, você notará que ela retorna uma lista de especialistas na aba direita da tela.

Retorno de GET: Retorna todos os especialistas
[
    {
        "nome": "Dr. João da Silva",
        "crm": "12345",
        "image": "https://images.unsplash.com/photo-
        1637059824899-a441006a68757ixlib=rb-
        4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWd1fHx8fGVufDB8fHx8fA 3D
        *30&auto=format&fit=crop&w=752&q=80",
        "especialidade": "Cardiologia",
        "email": "joao.silva@example.com",
        "telefone": "(11) 99999-9999",
        "id": "b6156d16-8329-4690-980c-eb3b30eaa585"
    },
...
COPIAR CÓDIGO
O especialista é retornado com chaves em português, razão pela qual fizemos a conversão com Coding Keys.

Nosso objetivo, agora, é decodificar esses dados para a nossa struct Specialist, um array de especialistas.

A função getAllSpecialists que implementaremos não receberá nenhum parâmetro, mas fará uma chamada de rede, ou seja, se comunicará com um serviço externo.

As chamadas de rede, assim como qualquer operação assíncrona, demoram um tempo para serem completadas porque dependem de vários fatores, como sua conexão com a internet. Se sua conexão for lenta, a chamada demorará muito, enquanto uma conexão mais rápida permitirá uma chamada mais rápida.

Como as chamadas de rede não são instantâneas, precisamos usar Programação Assíncrona.

Esse tipo de programação difere da Programação Síncrona, que ocorre, por exemplo, quando criamos uma função, chamamos essa função e obtemos um valor de retorno. A próxima linha de código não é executada até que a função termine.

Se usássemos Programação Síncrona com chamadas de rede, nosso aplicativo poderia "congelar". Isso porque teríamos que esperar a chamada de rede retornar a requisição, e não poderíamos fazer mais nada além disso, resultando numa experiência ruim para a pessoa usuária. É por isso que precisamos da Programação Assíncrona!

Quando iniciamos uma chamada de rede, simplesmente seguimos para a próxima linha de código e não esperamos que a chamada termine, não congelamos nosso aplicativo.

Isso é ótimo para a fluidez do aplicativo, mas apresenta um novo desafio: como saber quando a chamada de rede terminou? Como podemos obter os dados dessa chamada de rede?

Aí entra o modelo Async / Await, uma nova funcionalidade da linguagem Swift que foi introduzida na versão 5.5 e mudou totalmente a maneira de realizar requisições assíncronas.

Vamos fazer uma analogia com o mundo real. Imagine que você está numa biblioteca e pede para a pessoa bibliotecária pegar um livro que é meio raro e está num depósito, um pouco difícil de achar, o que leva um tempo.

Se o contexto fosse síncrono, você ficaria esperando a pessoa bibliotecária pegar o livro, o que pode levar muito tempo, e você ficaria "bloqueado", sem fazer mais nada. Isso seria muito ineficaz.

Agora, num contexto assíncrono, enquanto a pessoa bibliotecária vai buscar o livro, o que pode levar um bom tempo, você pode realizar outras tarefas, como, por exemplo, procurar outro livro, tomar um café, ou usar o computador da biblioteca, entre outras tarefas possíveis.

Na criação da função assíncrona, utilizamos a palavra-chave async, e para chamar essa função, usamos a palavra-chave await. Isso significa "esperar esta função terminar".

Neste vídeo, entendemos o contexto de operações assíncronas e por que precisamos usá-las quando falamos de chamadas de rede, requisições para serviços externos. No próximo vídeo, implementaremos, de fato, esta função assíncrona.

@@02
Criando a primeira requisição GET com Async/Await

Vamos implementar a função getAllSpecialists(), que está no arquivo WebService, dentro de struct WebService.
Começaremos marcando a função como async, pois ela será assíncrona, e precisamos definir o retorno dessa função.

O retorno será feito com uma seta ->, e será um array de Specialist. Marcaremos esse retorno como um array opcional, adicionando um ? depois dele.

WebService
func getAllSpecialists() async -> [Specialist]? {

}
COPIAR CÓDIGO
Ele será opcional porque, em caso de erro, retornaremos nil.

Como este curso não é focado em tratamento de erros e exceções, retornaremos apenas nil quando ocorrer um erro. Em cursos futuros, aprenderemos melhores abordagens para tratamento de erros.

Contudo, alguns problemas podem ocorrer durante a requisição. Por exemplo, às vezes a chamada de rede é mal sucedida por conta de algum erro na API, ou até mesmo um erro na hora de decodificar os dados.

Por isso, é necessário informar à função que vai chamar getAllSpecialists() quando ocorre esse tipo de erro. Portanto, devemos lançar um erro.

Para isso, depois de async, escreveremos throws. Essa palavra-chave significa que esta função pode lançar um erro. Vamos entender isso melhor na prática mais adiante.

func getAllSpecialists() async throws -> [Specialist]? {

}
COPIAR CÓDIGO
Começaremos criando uma constante chamada endpoint, e a igualaremos à baseURL mais a nossa rota, que é /especialista, conforme conferimos no Insomnia. Então: baseURL + "/especialista".

func getAllSpecialists() async throws -> [Specialist]? {
    let endpoint = baseURL + "/especialista"
}
COPIAR CÓDIGO
Agora, precisamos converter essa string endpoint em um objeto do tipo URL para fazer a requisição.

Quando tentamos converter para uma URL de fato (afinal, existe uma classe chamada URL no Swift), pode ocorrer algum erro. Por isso o retorno é uma opcional.

Então, já começaremos desembrulhando url com guard let url recebendo URL(), passando a opção string como endpoint.

Como estamos usando guard let, precisamos marcar o else e, dentro dele, inseriremos um print() para exibir a mensagem "Erro na URL!". Também vamos retornar nil.

func getAllSpecialists() async throws -> [Specialist]? {
    let endpoint = baseURL + "/especialista"
    
    guard let url = URL(string: endpoint) else {
        print("Erro na URL!")
        return nil
    }
}
COPIAR CÓDIGO
Pronto, já tratamos a URL!

Agora, daremos início à chamada de rede, utilizando a classe nativa do Swift chamada URLSession, responsável por fazer todas as chamadas de rede.

Começaremos criando uma variável logo após o fechamento de guard let url, chamada response, recebendo URLSession.shared. A propriedade shared é uma propriedade estática de URLSession, não estamos instanciando esta classe. Depois, adicionamos .data e abrimos parênteses, resultando em URLSession.shared.data().

Dentro dos parênteses, escolhemos a opção from: URL. Quando escolhemos essa opção, podemos observar que o async throws é marcado por padrão. Isso significa que essa função é assíncrona e pode lançar um erro.

Portanto, dentro de URL, vamos escrever a nossa variável url, resultando em: URLSession.shared.data(from: url).

Como essa função é assíncrona e pode lançar um erro, para chamá-la, precisamos marcá-la com try. Isso significa que estamos tentando chamar a função e, caso ocorra um erro, ela pode lançar esse erro.

Depois adicionamos await, pois precisamos dele para chamar qualquer função assíncrona. Então, teremos: try await URLSession.shared.data(from: url).

func getAllSpecialists() async throws -> [Specialist]? {
        let endpoint = baseURL + "/especialista"

        guard let url = URL(string: endpoint) else {
                print("Erro na URL!")
                return nil
        }

        let response = try await URLSession.shared.data(from: url)
}
COPIAR CÓDIGO
Se pressionarmos a tecla "Option" e clicarmos em data (from), veremos que o retorno dessa função é, na verdade, uma tupla que contém duas variáveis: Data e URLResponse.

A primeira, do tipo Data, são os dados retornados. A segunda, do tipo URLResponse, contém informações da resposta, por exemplo, o código de status.

Por isso, podemos desestruturar essa tupla. Para isso, no lugar de response, vamos abrir e fechar parênteses e, dentro deles, escrever data, response, resultando em let (data, response). Tudo desestruturado!

Note que não utilizaremos a variável response, pois esse não é um curso focado em tratamento de erros e exceções, então, não verificaremos o código de status da resposta ou algo do tipo. Então, substituiremos essa variável por um underline: let (data, _).

func getAllSpecialists() async throws -> [Specialist]? {
        let endpoint = baseURL + "/especialista"

        guard let url = URL(string: endpoint) else {
                print("Erro na URL!")
                return nil
        }

        let (data, _) = try await URLSession.shared.data(from: url)
}
COPIAR CÓDIGO
Agora, temos a variável data e precisamos decodificar para o nosso modelo de dados Specialist. Para isso, utilizaremos uma classe chamada JSONDecoder.

Então, vamos agora criar uma variável chamada specialists, recebendo try JSONDecoder, porque o JSONDecoder pode lançar um erro e não é assíncrono, então não precisamos do await.

Como precisamos instanciar o JSONDecoder, vamos abrir e fechar parênteses e depois chamar uma função .decode().

Dentro desses parênteses, inserimos o tipo da decodificação, que será um array de Specialist: decode.([Specialist]). Precisamos marcar o .self depois para informar que queremos o tipo em si, um array de Specialist, e não uma instância desse tipo.

Por fim, também passamos como parâmetro do decode() o from: data. Teremos: let specialists = try JSONDecoder().decode([Specialist].self, from: data).

Para terminar, retornamos a variável specialists. Teremos, então, o seguinte código para a função getAllSpecialists().

func getAllSpecialists() async throws -> [Specialist]? {
        let endpoint = baseURL + "/especialista"

        guard let url = URL(string: endpoint) else {
                print("Erro na URL!")
                return nil
        }

        let (data, _) = try await URLSession.shared.data(from: url)

        let specialists = try JSONDecoder().decode([Specialist].self, from: data)

        return specialists
}
COPIAR CÓDIGO
Mas, por que estamos decodificando?

Precisamos decodificar pois a variável data, do tipo Data, representa uma coleção de bytes. Ao dar um print nesse data, você notará que o retorno é em bytes, ou seja, o retorno do JSON em formato de bytes.

Não abordaremos muitos detalhes sobre isso, mas é importante entender que precisamos decodificar o retorno para o formato que realmente queremos utilizar.

Agora temos uma requisição criada, mas ainda não sabemos se está funcionando, pois ainda não chamamos a função getAllSpecialists().

Precisamos chamá-la em nossa HomeView, onde temos o forEach representando todos os especialistas. Mas isso é assunto para o próximo vídeo. Nos encontramos lá!

@@03
Atualizando a lista de especialistas

Na HomeView, vamos começar instanciando a nossa struct WebService, porque precisamos chamar o método que está dentro dessa estrutura. Então, criamos o serviço com let service = WebService(), dentro de struct HomeView.
HomeView
struct HomeView: View {
    
    let service = WebService()
        
// código omitido
COPIAR CÓDIGO
Agora, logo em seguida, vamos criar uma variável de estado que será um array de especialistas, pois, quando chamarmos essa função, vamos basicamente atribuir o retorno dessa função à variável.

Então, utilizamos @State private var specialists, que é do tipo array de Specialist, e inicializamos essa variável como um array vazio.

@State private var specialists: [Specialist] = []
COPIAR CÓDIGO
Em seguida, vamos criar uma função chamada getSpecialists(), que será assíncrona.

func getSpecialists() async {

}
COPIAR CÓDIGO
Quando vamos chamar essa função? Queremos chamá-la assim que a View aparecer.

Então, no final dela, depois do padding(.top), vamos adicionar o modificador onAppear {}, significando que esse modificador será chamado assim que a tela for carregada.

Dentro dele, precisamos chamar a função getSpecialists(). Dentro dessa função, mais adiante, vamos chamar o service.getAllSpecialists.

Mas essa função é marcada como assíncrona. Isso porque a função chamada dentro do WebService() também é assíncrona.

Vamos tentar chamar getSpecialists() dentro do onAppear:

// código omitido
.onAppear {
        Task {
             getSpecialists()
        }
COPIAR CÓDIGO
Isso vai causar um erro. Por quê? Porque toda vez que chamamos uma função assíncrona dentro de uma View, precisamos inseri-la em um contexto assíncrono. Definimos esse contexto assíncrono com um Task {}. .

Vamos criar esse Task e mover a chamada da função getSpecialists() para dentro dele. Além disso, sabemos que toda função assíncrona precisa ser chamada com a palavra-chave await. Então, antes do getSpecialists, adicionamos o await:

.onAppear {
        Task {
                await getSpecialists()
        }
COPIAR CÓDIGO
Vamos começar a implementar a nossa função getSpecialist(), mais acima no arquivo.

No nosso arquivo WebService, a nossa função está marcada como throw, significando que pode lançar o erro. Se ela lançar um erro, também precisamos capturá-lo. Ou seja, precisamos ter isso pronto para isso. Por esse motivo, usamos um bloco de código chamado do e catch.

Começamos escrevendo do, abrimos chaves, então o catch e abrimos chaves novamente.

func getSpecialists() async {
        do {
        
        } catch {

        }
}
COPIAR CÓDIGO
Dentro do do, tentamos fazer uma requisição. E aqui dentro do catch, se a requisição lançar um erro, ele vai cair diretamente neste catch. Dentro desse catch, temos acesso a uma variável chamada error, que significa o erro lançado.

Dentro do catch, tudo o que faremos é printar uma mensagem "Ocorreu um erro ao obter os especialistas:" com uma interpolação da nossa variável de erro, \(error).

Dentro do do, precisamos chamar a nossa função definida dentro do WebService. Como estamos retornando um array de especialistas no formato opcional, precisamos desembrulhar essa variável. Então, escrevemos if let specialists = try await, porque a função jogará o erro caso ele aconteça e é assíncrona, e service.getAllSpecialists().

Como estamos usando if let, uma condicional, então precisamos abrir e fechar chaves. Se tudo der certo, se conseguirmos desembrulhar essa variável e não ocorrer nenhum erro, escrevemos self.specialists = specialists.

func getSpecialists() async {
    do {
        if let specialists = try await service.getAllSpecialists() {
            self.specialists = specialists
        }
    } catch {
        print("Ocorreu um erro ao obter os especialistas: \(error)")
    }
}
COPIAR CÓDIGO
O self.specialists é a variável de estado que declaramos anteriormente em @State private var specialists. Sempre que usamos self., queremos dizer que estamos pegando algum atributo ou algum método da nossa própria struct.

E esse segundo specialists, após o sinal de igual, é a variável que acabamos de desembrulhar. Então, por esse motivo, usamos o self. para indicar que queremos pegar a nossa variável de estado.

Isso ocorre porque ambas possuem o mesmo nome. Se escrevêssemos specialists = specialists, teríamos um erro.

No preview do aplicativo, na aba direita da tela, já são mostrados mais do que três especialistas, que é o que definimos no array estático. Isso significa que nossa requisição foi feita corretamente!

Para verificar, vamos pressionar "Command + R" para executar o aplicativo no simulador. Perfeito! Agora temos uma lista de especialistas de forma totalmente dinâmica.

A imagem dos profissionais continua a mesma, igual para todos, pois ainda é estática. Vamos descobrir como podemos fazer o download de imagens de uma URL mais adiante.

No nosso arquivo Specialist, podemos apagar todo o array let specialists: [Specialist] estático, pois não será mais utilizado.

Outras possibilidades
Por fim, vamos retornar ao arquivo da HomeView.

Quando usamos o onAppear, que utilizamos nesse contexto chamado de Task, poderíamos também utilizar um modificador de propriedade chamado de .task e simplesmente passar await getSpecialists(). Isso porque este modificador também é chamado assim que a tela é carregada. Mas vamos deixar no onAppear, como estava antes.

Você poderia implementar o do / catch diretamente dentro do onAppear, mas é interessante criar outra função para começar a separar um pouco as responsabilidades do nosso código.

Nossa chamada de rede está funcionando, já estamos obtendo todos os especialistas de uma API e a tela HomeView já está sendo carregada com estes novos especialistas.

Agora, é hora de descobrir como podemos mostrar a imagem de cada especialista fazendo o download de uma URL. Faremos isso no próximo vídeo!

@@04
Realizando o download de imagens

Agora a nossa tarefa é implementar a imagem do especialista de forma dinâmica e não mais apenas no arquivo assets, como estamos fazendo até o momento.
Em relação a imagens baixadas de uma URL, também temos uma operação assíncrona. Não é tão fácil quanto colocar o URL de uma imagem em um arquivo HTML, por exemplo, infelizmente. Precisamos utilizar o URLSession fazendo uma requisição do tipo GET.

Vamos voltar ao arquivo WebService, criar outra função chamada downloadImage que vai receber o parâmetro imageURL, com from imageURL, que será do tipo String.

Quando chamarmos essa função downloadImage(), passaremos o parâmetro from; mas, dentro dessa função no WebService, referenciamos como ImageURL. Isso é chamado de parâmetro label.

Vamos marcar ess função como async throws, porque será uma função assíncrona que pode lançar algum erro. O retorno será uma UIImage, que será também opcional.

WebService
func downloadImage(from imageURL: String) async throws -> UIImage? {

}
COPIAR CÓDIGO
Isso causará um erro, porque UIImage pertence ao framework UIKit e nós não estamos importando ele neste arquivo. Então, em vez de importar Foundation na linha 8, vamos importar UIKit.

import UIKit
COPIAR CÓDIGO
Não precisamos importar Foundation, porque importando UIKit, automaticamente estamos importando Foundation também, então é redundante importar os dois.

Vamos começar. Primeiro, faremos uma verificação da URL com guard let url. Podemos notar que as chamadas são muito parecidas, então neste momento do curso teremos muita repetição de código.

Nessa verificação, instanciamos URL() passando string: imageURL. Se der erro, retornamos um print("Erro na URL!") e um return nil.

func downloadImage(from imageURL: String) async throws -> UIImage? {
        guard let url = URL(string: imageURL) else {
                print("Erro na URL!")
                return nil
        }
}
COPIAR CÓDIGO
Vamos fazer a requisição. Para desestruturar a tupla, let (data, _), com underline porque não vamos usar o response, igual a try await URLSession.shared.data(from: url).

let (data, _) = try await URLSession.shared.data(from: url)
COPIAR CÓDIGO
Agora não precisamos, por exemplo, decodificar os dados no JSONDecoder.

Quando instanciamos uma UIImage no retorno, podemos passar o parâmetro data, que já é do tipo Data, o mesmo tipo que temos no retorno da chamada assíncrona pela URLSession. Então, vamos selecionar essa opção e passar o tipo data.

Temos, por fim:

func downloadImage(from imageURL: String) async throws -> UIImage? {
        guard let url = URL(string: imageURL) else {
                print("Erro na URL!")
                return nil
        }

        let (data, _) = try await URLSession.shared.data(from: url)

        return UIImage(data: data)
}
COPIAR CÓDIGO
Desse retorno em bytes, conseguimos montar a imagem e exibi-la para o usuário.

Esse UIImage(data: data) retorna um opcional. Por esse motivo, nós temos também um retorno opcional na declaração da função, em UIImage?.

Vamos ao arquivo SpecialistCardView, porque é aqui que temos uma imagem. Começaremos criando a instância de WebService, dentro do struct SpecialistCardView:

SpecialistCardView
let service = WebService()
COPIAR CÓDIGO
Vamos criar também uma variável de estado para manter a imagem do especialista:

@State private var SpecialistImage: UIImage?
COPIAR CÓDIGO
Vamos criar uma função chamada downloadImage que será assíncrona.

func downloadImage() async {

}
COPIAR CÓDIGO
Finalmente, chamamos essa função assim que a View for carregada. Logo após cornerRadius(16.0), acionamos o modificador onAppear ou task, tanto faz.

Dentro dele, adicionamos o contexto assíncrono, chamado Task e, dentro de chaves, escrevemos await downloadImage() para chamar a função.

.onAppear {
        Task {
                await downloadImage()
        }
COPIAR CÓDIGO
Dentro da função downloadImage(), adicionamos nosso bloco do / catch.

Dentro do catch, escrevemos print("Ocorreu um erro ao obter a imagem: \(error).")

Dentro do do, como estamos retornando uma opcional da nossa função, fazemos o desembrulho: if let image = try await service.downloadImage(from:).

Agora, estamos passando o parâmetro from, o parâmetro label que podemos utilizar nas funções.

Dentro dele, passaremos a imageURL que temos dentro da variável specialist, que é do tipo Specialist. Então, escrevemos specialist.imageUrl.

Como é uma condicional, abrimos chaves e escrevemos self.specialistImage = image.

func downloadImage() async {
        do {
                if let image = try await service.downloadImage(from: specialist.imageUrl) {
                        self.specialistImage = image
                }
        } catch {
                print("Ocorreu um erro ao obter a imagem: \(error)")
        }
}
COPIAR CÓDIGO
Pronto! Estamos atualizando a variável de estado conforme o retorno da função definida no WebService.

Por fim, precisamos mostrar essa imagem na tela porque, até então, ela é estática.

Como a variável de estado specialistImage é uma opcional, vamos fazer uma verificação logo dentro do HStack.

Vamos escrever: if let Image = specialistImage, abrir e fechar chaves e inserir dentro delas todo o componente Image(.doctor). Como parâmetro, vamos substituir o .doctor pelo parâmetro uiImage, do tipo image:

var body: some View {
        VStack(alignment: .leading) {
                HStack(spacing: 16.0) {

                        if let image = specialistImage {
                                Image(uiImage: image)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 64, height: 64)
                                        .clipShape(Circle())
                        }
// código omitido
COPIAR CÓDIGO
Em versões mais recentes do Swift, não precisamos desembrulhar uma variável da forma que fizemos. Basta escrever if let specialistImage, sem igualar a image, e mudar o tipo de uiImage para specialistImage:

// código omitido

if let specialistImage {
        Image(uiImage: specialistImage)
                .resizable()
                .scaledToFill()
                .frame(width: 64, height: 64)
                .clipShape(Circle())
}
// código omitido
COPIAR CÓDIGO
No Preview, a imagem do especialista já foi alterada. Vamos executar este código com "Command + R" para abrir o simulador.

Agora temos as imagens dos especialistas de forma totalmente dinâmica! Cada um exibe sua foto específica.

Vale mencionar alguns pontos:

Você pode implementar um loading para ser mostrado enquanto a imagem for carregada.
Você pode também exibir uma imagem padrão para quando ocorrer algum erro na requisição.
Existe técnicas de cache que podem ser implementadas.
Imagine que toda vez que a pessoa usuária acessar essa tela inicial, a imagem será baixada novamente desta URL. Isso pode consumir bastante dados, especialmente se a pessoa usuária tem pouca quantidade de dados para utilizar, ou a internet está um pouco mais lenta.

Por isso, podemos implementar técnicas de cache, onde a imagem será baixada no primeiro momento, mas será salva localmente, tornando seu carregamento quase instantâneo posteriormente.

Não vamos abordar essa técnica neste curso, mas deixaremos um material complementar para você entender como isso é implementado.

Agora, já temos uma tela totalmente funcional, consumindo dados da API, baixando imagens de uma URL externa.

Agora está na hora de começarmos a, de fato, preparar o terreno para que a pessoa paciente consiga agendar uma consulta. Até o próximo vídeo.

@@05
Aprofundando-se nas requisições assíncronas e decodificação

Com base no código e conceitos discutidos nesta aula, responda à seguinte pergunta.
Considerando a estrutura do código e o funcionamento das operações assíncronas, qual das seguintes declarações sobre a sequência de chamadas e ações é correta?

No bloco .onAppear, a função getSpecialists() é chamada e espera-se que ela preencha a variável @State private var specialists, mas se ocorrer um erro, ela será deixada vazia e a aplicação continuará funcionando normalmente.
 
Exatamente! Atualizamos a variável de estado, mas se ocorrer um erro, a variável de estado será apenas um array vazio.
Alternativa correta
A função getAllSpecialists() sempre retorna uma lista de Specialist independente de erros de conexão ou decodificação.
 
Alternativa correta
Quando a função downloadImage(from:) é chamada, se a URL fornecida não for válida, a função retornará uma imagem padrão.
 
A função imprimirá "Erro na URL!" e retornará nil se a URL não for válida, e não há menção a uma imagem padrão.
Alternativa correta
A função downloadImage(from:) primeiramente decodifica o JSON antes de tentar fazer a conversão para um objeto UIImage.
 
A função downloadImage(from:) apenas baixa os dados da imagem e os converte em uma UIImage sem qualquer processo de decodificação de JSON.

@@06
Implementando a requisição para baixar imagens HTTP no swift

A Clínica médica Vollmed está investindo em tecnologia para melhorar o atendimento aos seus pacientes.
Quando um paciente acessa o aplicativo Vollmed, ele deve ser capaz de ver todas as imagens associadas a um especialista, que são definidas por uma URL. Para isso, é necessário que o aplicativo faça uma requisição HTTP para baixar essas imagens da internet.

Sendo assim, selecione a alternativa correta em relação ao processo de download de uma imagem e a atualização da interface do usuário:

Você usaria a função URLSession.shared.downloadTask para criar a requisição HTTP, como no código abaixo:
func downloadImage(from imageURL: String) async throws -> UIImage? {
    guard let url = URL(string: imageURL) else {
        print("Erro na URL!")
        return nil
    }

    let (data, _) = try await URLSession.shared.downloadTask(from: url)

    return UIImage(data: data)
}
 
Alternativa correta
Você usaria a função URLSession.shared.data para criar a requisição HTTP, como no código abaixo:
func downloadImage(from imageURL: String) async throws -> UIImage? {
    guard let url = URL(string: imageURL) else {
        print("Erro na URL!")
        return nil
    }

    let (data, _) = try await URLSession.shared.data(from: url)

    return UIImage(data: data)
}
 
Esta é a forma padrão de fazer requisições HTTP utilizando async/await em Swift! Temos uma função que realiza o download da imagem, considerando o throws (já que essa requisição pode dar erro); um guard para desembrulhar a URL da imagem. Por último, no let (data, _)..., efetivamente fazemos o download da imagem e retornamos ela no return.
Alternativa correta
Você usaria a função DispatchQueue.main.async para atualizar a UI em SwiftUI, da seguinte maneira:
func downloadImage() async {
    do {
        if let image = try await service.downloadImage(from: specialist.imageUrl) {
                        DispatchQueue.main.async {
                            self.specialistImage = image
                        }
        }
    } catch {
        print("Ocorreu um erro ao obter a imagem: \(error)")
    }
}

@@07
Para saber mais: como melhorar a experiência do usuário com cache de imagens

No desenvolvimento de aplicativos, otimizar a experiência do usuário é essencial.
Uma das maneiras de conseguir isso é reduzindo os tempos de carregamento e garantindo que os dados sejam acessados rapidamente. Uma técnica valiosa para atingir essa otimização é o uso de cache, especialmente quando se trata de imagens, que podem ser um dos maiores consumidores de dados e tempo em um app.

O que é cache?
Cache é uma tecnologia que armazena dados temporariamente para que, quando solicitados novamente, eles possam ser entregues mais rapidamente. Em vez de buscar dados (como imagens) da web (servidor) toda vez que são necessários, os dados são retirados do cache local, economizando tempo e recursos.

Por que o cache de imagens é importante?
Redução do consumo de dados: Se um usuário já baixou uma imagem, não faz sentido baixá-la novamente.
Melhoria no desempenho: Imagens em cache são carregadas quase instantaneamente.
Menos pressão sobre o servidor: Menos solicitações ao servidor significa menos carga e potencialmente menos custos.
Experiência do usuário: O carregamento mais rápido se traduz em uma melhor experiência para o usuário.
Como implementar o cache de imagens no iOS?
Podemos implementar o cache com o próprio sistema de cache fornecido pelo ecossistema do iOS através do NSCache. Veja o passo a passo a seguir:

1 - Crie o cache

let imageCache = NSCache<NSString, UIImage>()
COPIAR CÓDIGO
2 - Modifique a função de download de imagens no WebService

Antes de baixar a imagem, verifique se ela já está em cache:

func downloadImage(from imageURL: String) async throws -> UIImage? {
    guard let url = URL(string: imageURL) else {
        print("Erro na URL!")
        return nil
    }

    // Verificar cache
    if let cachedImage = imageCache.object(forKey: imageURL as NSString) {
        return cachedImage
    }

    let (data, _) = try await URLSession.shared.data(from: url)
    guard let image = UIImage(data: data) else {
        return nil
    }

    // Salvar imagem no cache
    imageCache.setObject(image, forKey: imageURL as NSString)

    return image
}
COPIAR CÓDIGO
Agora, quando a função downloadImage é chamada, ela primeiro verifica se a imagem já está em cache. Se estiver, a imagem em cache é retornada. Caso contrário, a imagem é baixada, e depois de baixada, ela é armazenada no cache para uso futuro.

Observações
O NSCache é semelhante a um dicionário, mas com a vantagem de remover automaticamente objetos se o sistema ficar com pouco recurso de memória;
Existem bibliotecas de terceiros, como o SDWebImage ou Kingfisher, que oferecem funcionalidades de download e cache de imagens com muitas opções e otimizações adicionais;
O cache não deve ser usado para dados que mudam frequentemente. Ele é ideal para conteúdo que permanece relativamente constante.
Entender e implementar o cache de imagens pode melhorar a performance do seu aplicativo e oferecer uma experiência mais suave para seus usuários.

E, agora que você tem uma noção básica, pode explorar maneiras mais avançadas de otimizar ainda mais seu sistema de cache!

@@08
Para saber mais: CRUD e as operações com dados

Em nosso aplicativo, fizemos a primeira requisição GET para pegar os dados de uma API. Além dessa operação, existem outras que veremos ao longo do curso. No entanto, o que é CRUD?
O CRUD é um acrônimo que representa as quatro operações fundamentais de manipulação de dados em sistemas de gerenciamento de banco de dados:

Create (Criar): operação POST;
Read (Ler): operação GET;
Update (Atualizar): operação PUT/PATCH;
Delete (Excluir): operação DELETE.
Vamos ver cada uma dessas operações a seguir.

Create (Criar): Essa operação envolve a adição de novos registros ou elementos aos dados existentes. Geralmente, isso é feito por meio de formulários de entrada, onde os usuários podem inserir informações relevantes.
Read (Ler): A operação de leitura envolve a recuperação e exibição dos dados existentes. Isso inclui a capacidade de visualizar informações armazenadas no banco de dados de forma legível e acessível. Já fizemos essa operação com a requisição GET!
Update (Atualizar): A operação de atualização permite que os usuários modifiquem os dados existentes. Isso é geralmente realizado por meio de formulários de edição, onde as informações existentes podem ser alteradas.
Delete (Excluir): A operação de exclusão envolve a remoção de registros ou elementos de dados. Essa operação deve ser executada com cuidado, uma vez que exclui permanentemente informações do sistema.
Para que serve o CRUD?
O CRUD é fundamental para qualquer aplicativo que lide com dados, pois permite que os desenvolvedores executem operações essenciais de gerenciamento de informações. Vejas as principais finalidades do CRUD:

Gestão de dados: O CRUD é usado para criar, ler, atualizar e excluir informações em bancos de dados ou conjuntos de dados. Isso é essencial para o gerenciamento eficiente de informações em um aplicativo.
Interatividade do usuário: Ele permite que os usuários interajam com os dados do aplicativo de forma significativa. Os formulários de entrada e edição são exemplos de como o CRUD facilita a interação do usuário com os dados.
Manutenção de registros: Os aplicativos geralmente precisam permitir que os usuários mantenham registros armazenados ou informações específicas como informações de cadastro (nome, e-mail, CPF), fotos e muito mais. O CRUD é a base para essas operações de manutenção.
Exemplos práticos
A seguir, podemos encontrar exemplos de como o CRUD é implementado e utilizado no SwiftUI:

Exemplo 1: Lista de contatos
Suponhamos que você esteja desenvolvendo um aplicativo de lista de contatos no SwiftUI. Nesse cenário, o CRUD seria utilizado da seguinte maneira:

Create (Criar): Os usuários podem adicionar novos contatos à lista, inserindo nome, número de telefone e outras informações relevantes em um formulário de criação.
Read (Ler): A lista de contatos existentes é exibida na interface do usuário, permitindo que os usuários visualizem informações de contato.
Update (Atualizar): Os usuários podem editar informações de contato existentes, como números de telefone ou endereços, por meio de um formulário de edição.
Delete (Excluir): Os contatos podem ser excluídos permanentemente da lista, caso o usuário não deseje mais mantê-los.
Exemplo 2: Aplicativo de lista de tarefas
Em um aplicativo de lista de tarefas no SwiftUI, o CRUD seria aplicado da seguinte forma:

Create (Criar): Os usuários podem criar novas tarefas inserindo seu título e descrição em um formulário de criação de tarefas.
Read (Ler): A lista de tarefas existentes é exibida na interface do usuário, permitindo que os usuários vejam todas as tarefas pendentes.
Update (Atualizar): Os usuários podem marcar tarefas como concluídas ou atualizar os detalhes de uma tarefa existente por meio de um formulário de edição.
Delete (Excluir): As tarefas concluídas ou não desejadas podem ser excluídas da lista, mantendo-a organizada.
Fez sentido?

@@09
Faça como eu fiz: operações assíncronas e requisições em Swift

Vamos colocar a mão na massa!
1 - Entenda operações assíncronas: As operações assíncronas permitem que o programa continue sua execução sem aguardar a conclusão de uma tarefa. Em Swift, use a palavra-chave async para designar funções que operam assincronamente.

2 - Realize uma requisição GET com async/await:

a) Crie a função getAllSpecialists para obter uma lista de especialistas:
func getAllSpecialists() async throws -> [Specialist]? { ... }
COPIAR CÓDIGO
b) Defina o endpoint e garanta que a URL seja válida.
c) Use URLSession.shared.data(from: url) para fazer a requisição.
d) Decodifique o JSON usando JSONDecoder.
3 - Atualize a lista de especialistas:

a) Instancie a classe de serviço: let service = WebService().
b) Mantenha um estado para os especialistas: @State private var specialists: [Specialist] = [].
c) Crie a função getSpecialists para obter os especialistas e atualizar o estado:
func getSpecialists() async { ... }
COPIAR CÓDIGO
d) Use o modificador .onAppear para chamar getSpecialists assincronamente quando a view aparecer.
4 - Baixe imagens assincronamente:

a) Crie a função downloadImage que aceita uma URL e retorna uma UIImage:
func downloadImage(from imageURL: String) async throws -> UIImage? { ... }
COPIAR CÓDIGO
b) Valide a URL e use URLSession.shared.data(from: url) para obter os dados da imagem.
c) Converta os dados em UIImage.
d) Mantenha um estado para a imagem: @State private var specialistImage: UIImage?.
e) Crie uma função para baixar a imagem e atualizar o estado:
func downloadImage() async { ... }
COPIAR CÓDIGO
f) Mostre a imagem, se disponível, ajustando-a conforme necessário.
g) Use o modificador .onAppear para chamar downloadImage assincronamente quando a view aparecer.

O uso de operações assíncronas e o paradigma async/await em Swift representam uma abordagem mais moderna e eficiente para lidar com tarefas que podem demorar algum tempo, como solicitações de rede. Além disso, a integração com SwiftUI facilita a atualização da UI de forma responsiva.
O objetivo desta atividade é reforçar sua compreensão desses conceitos e garantir que você esteja confortável aplicando-os em seus próprios projetos.

Você pode conferir o código do projeto até o momento através desta branch no GitHub.

Se encontrar dificuldades, não hesite em buscar ajuda no fórum, discord ou quaisquer outros canais de suporte disponíveis!

https://github.com/alura-cursos/swiftui-vollmed-crud/tree/aula-02

@@10
O que aprendemos?

Nesta aula, você aprendeu a:
Compreender as operações assíncronas e sua importância no desenvolvimento de apps;
Criar sua primeira requisição GET utilizando Async/Await;
Atualizar e exibir a lista de especialistas no app com o uso de variáveis de estado;
Realizar o download e exibição de imagens de forma assíncrona.
Maravilha! A base do nosso aplicativo está se formando.

Vejo você na próxima aula!

#### 06/04/2024

@03-Layout da tela de agendamento

@@01
Projeto da aula anterior

Você pode revisar o seu código e acompanhar o passo a passo do desenvolvimento do nosso projeto através desta branch no Github e, se preferir, pode baixar o projeto da aula anterior.
Bons estudos!

https://github.com/alura-cursos/swiftui-vollmed-crud/tree/aula-02

https://github.com/alura-cursos/swiftui-vollmed-crud/archive/refs/heads/aula-02.zip

@@02
Criando a tela de agendamento de uma consulta

Vamos começar a criar nossa tela de agendamento de consulta, pois quando a pessoa usuária clicar no botão "Agendar consulta", que está dentro de SpecialistCardView, ela será direcionada para essa tela.
Criando a tela de agendamento de uma consulta
Dentro da pasta "Views", vamos criar um novo arquivo. Então, clicamos com o botão direito sobre ela e vamos até "New File…". Selecionaremos a opção "SwiftUI View" e nomearemos o arquivo como ScheduleAppointmentView. Será criada a seguinte view:

ScheduleAppointmentView.swift:
import SwiftUI

struct ScheduleAppointmentView: View {
    var body: some View {
        Text("Hello, World!")
    }
}

#Preview {
    ScheduleAppointmentView()
}
COPIAR CÓDIGO
No lugar de "Hello, World!", vamos escrever "Agendamento da consulta" em um primeiro momento.

Text("Agendamento da consulta")
COPIAR CÓDIGO
Criando a navegação
Nós precisamos chamar a tela do SpecialistCardView, mas ainda não temos nenhuma NavigationView envolvendo nosso aplicativo, então, precisaremos fazer isso.

Inicialmente, vamos ao arquivo VollmedApp.swift, e logo após o WindowGroup, vamos adicionar um bloco NavigationStack e mover o HomeView() para dentro dele.

VollmedApp.swift:
import SwiftUI

@main
struct VollmedApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                HomeView()
            }
        }
    }
}
COPIAR CÓDIGO
Se você já fez algum curso de SwiftUI na Alura, pode ter percebido que utilizamos NavigationView em vez de NavigationStack. A Apple fez algumas modificações em relação à navegação do SwiftUI e agora é uma boa prática utilizar NavigationStack.
Agora já temos uma navegação envolvendo toda a nossa aplicação.

Vamos voltar ao arquivo SpecialistCardView.swift e criar o NavigationLink na linha de código 48, para conseguirmos navegar para essa tela de agendamento. Selecionaremos a opção de NavigationLink com destination e label.

SpecialistCardView.swift:
NavigationLink {
    code
} label: {
    code
}
COPIAR CÓDIGO
A primeira parte será a tela de destino, que é ScheduleAppointmentView(), enquanto a label, ou seja, o que mostraremos para as pessoas usuárias, será o ButtonView(). Usaremos os atalhos para recortar este trecho da linha 55 para dentro de label.

NavigationLink {
    ScheduleAppointmentView()
} label: {
    ButtonView(text: "Agendar consulta")
}
COPIAR CÓDIGO
Vamos verificar se está funcionando, usando o atalho "Command + R" para executar. Ao clicar em "Agendar consulta" no simulador, devemos navegar para a tela de agendamento.

No simulador, temos um botão ("Back") de retornar para a tela anterior, que é o padrão de uma aplicação. No entanto, não vamos modificar esse botão. Caso tenha interesse, temos conteúdos na aqui Alura sobre como você pode criar um botão totalmente personalizado.
Construindo a tela
Retornando ao arquivo ScheduleAppointmentView.swift, vamos começar a construir a tela. Primeiro, vamos remover o Text() da linha 12 e adicionar uma VStack, um contêiner vertical, contendo um texto que será Text("Selecione a data e o horário da consulta").

ScheduleAppointmentView.swift:
// código omitido

struct ScheduleAppointmentView: View {
    var body: some View {
        VStack {
            Text("Selecione a data e o horário da consulta")
        }
    }
}

// código omitido
COPIAR CÓDIGO
Esse texto terá alguns modificadores de propriedades. Por exemplo: vamos definir a .font() como .title3. Também incluiremos .bold() e a cor do texto, ou seja, o .foregroundColor(). Porém, ele está depreciado, então precisaremos usar algo diferente.

É comum que alguns modificadores estejam depreciados.
Nesse caso, é informado que o .foregroundColor() será depreciado em uma futura versão do iOS, e no lugar dele precisamos utilizar o .foregroundStyle(). Passaremos para ele .accent, que é a nossa cor de destaque.

Por fim, adicionaremos o modificador .padding() recebendo .top.

struct ScheduleAppointmentView: View {
    var body: some View {
        VStack {
            Text("Selecione a data e o horário da consulta")
                .font(.title3)
                .bold()
                .foregroundStyle(.accent)
                .padding(.top)
        }
    }
}
COPIAR CÓDIGO
Utilizamos .foregroundColor() em alguns outros arquivos, então, vamos pesquisar por .foregroundColor() no ícone de pesquisa do menu esquerdo e substituiremos por .foregroundStyle(). Começaremos alterando em ButtonView.swift e depois em HomeView.swift.

ButtonView.swift:
var body: some View {
    Text(text)
        .bold()
        .foregroundStyle(.white)
        
        // código omitido
COPIAR CÓDIGO
HomeView.swift:
Text("Boas-vindas!")
    .font(.title2)
    .bold()
    .foregroundStyle(Color(.lightBlue))
Text("Veja abaixo os especialistas da Vollmed disponíveis e marque já a sua consulta!")
    .font(.title3)
    .bold()
    .foregroundStyle(.accent)
    
    // código omitido
COPIAR CÓDIGO
De volta ao arquivo ScheduleAppointmentView.swift, já temos o texto. Vamos adicionar um .padding() após o fechamento do VStack.

Nosso próximo passo será adicionar um calendário. Mas antes, vamos colocar também o modificador .multilineTextAlignment() em Text() para centralizar (.center) o texto.

ScheduleAppointmentView.swift:
struct ScheduleAppointmentView: View {
    var body: some View {
        VStack {
            Text("Selecione a data e o horário da consulta")
                .font(.title3)
                .bold()
                .foregroundStyle(.accent)
                .multilineTextAlignment(.center)
                .padding(.top)
        }
        .padding()
    }
}
COPIAR CÓDIGO
Construindo o calendário
Vamos começar a construir o nosso calendário. A tela irá conter: um texto, o calendário e um botão para agendar uma consulta.

O SwiftUI traz uma interface de calendário nativa, utilizando uma view chamada DatePicker(). Após os modificadores de propriedade, escreveremos DatePicker e selecionaremos a primeira opção, com titleKey e selection.

O titleKey é simplesmente um texto, portanto, uma string que escreveremos como "Escolha a data da consulta". Em seguida, precisamos passar uma variável de estado, como Binding<>, para representar a data selecionada.

Vamos criar essa variável na linha 12, declarando uma @State private var chamada selectedDate, que será do tipo Date, representando uma data. Iremos instanciar a classe Date(), e ao fazer isso, significa pegamos a data e a hora atual.

Como precisamos passar essa variável como Binding<> para o DatePicker(), usaremos um cifrão, ou seja $selectedDate.

@State private var selectedDate = Date()

struct ScheduleAppointmentView: View {
    var body: some View {
        VStack {
            Text("Selecione a data e o horário da consulta")
                .font(.title3)
                .bold()
                .foregroundStyle(.accent)
                .multilineTextAlignment(.center)
                .padding(.top)

            DatePicker("Escolha a data da consulta", selection: $selectedDate)
        }
        .padding()
    }
}
COPIAR CÓDIGO
Na visualização prévia, já é possível visualizar um tipo de calendário. Se clicarmos na data "Sep 13, 2023", por exemplo, é aberto um pop-up com um calendário. Além disso, se clicarmos no horário, os horários também aparecem.

Existem diversos modos de apresentação de um calendário. Com um modificador chamado .datePickerStyle(), conseguimos selecionar algumas opções. A que a instrutora recomenda para esse caso é a .graphical, que dá uma interface de calendário de maneira completa e visível, além de ser possível selecionar a hora.

DatePicker("Escolha a data da consulta", selection: $selectedDate)
    .datePickerStyle(.graphical)
COPIAR CÓDIGO
Adicionando um botão
Por fim, faremos mais duas coisas. A primeira é adicionar um botão logo após o DatePicker(). Para isso, escrevemos Button e selecionamos a opção com action e label. Dentro da action, vamos escrever print("Botão pressionado"), enquanto a label será ButtonView(), para o qual passaremos como text "Agendar consulta".

Button(action: {
    print("Botão pressionado!")
}, label: {
    ButtonView(text: "Agendar consulta")
})
COPIAR CÓDIGO
Adicionando modificadores
Em seguida, logo após o .padding(), vamos adicionar alguns modificadores relacionados à navegação. Assim, será possível adicionar o título na navegação. Isso ficará evidente quando executarmos o aplicativo. Escreveremos .navigationTitle() e passaremos "Agendar consulta".

struct ScheduleAppointmentView: View {
    var body: some View {
        VStack {
            Text("Selecione a data e o horário da consulta")
                .font(.title3)
                .bold()
                .foregroundStyle(.accent)
                .multilineTextAlignment(.center)
                .padding(.top)

            DatePicker("Escolha a data da consulta", selection: $selectedDate)
                .datePickerStyle(.graphical)

            Button(action: {
                print("Botão pressionado!")
            }, label: {
                ButtonView(text: "Agendar consulta")
            })
        }
        .padding()
        .navigationTitle("Agendar consulta")
    }
}
COPIAR CÓDIGO
Vamos executar o aplicativo com o atalho "Command + R". O texto "Agendar consulta" agora aparece no topo do simulador. Para deixá-lo um pouco maior, podemos adicionar outro modificador chamado .navigationBarTitleDisplayMode() e passar para ele .large.

.padding()
.navigationTitle("Agendar consulta")
.navigationBarTitleDisplayMode(.large)
COPIAR CÓDIGO
Conclusão
Agora que temos a tela de agendamento criada, precisamos lidar com a formatação de datas para enviar corretamente para o back-end.

Nos encontramos no próximo vídeo!

@@03
Mão na massa: lidando apenas com datas futuras

O objetivo deste desafio é modificar o seletor de datas na tela de agendamento de consulta para permitir que o usuário escolha apenas datas no futuro, impedindo a seleção de datas anteriores ao dia atual.
Veja uma imagem de como deve ser o resultado final:

Imagem que mostra um menu seletor de datas de um calendário

Dicas:

A classe DatePicker do SwiftUI tem uma propriedade chamada in que você pode usar para definir o intervalo de datas disponíveis;
Você pode obter a data atual usando Date();
Combine Date() com a propriedade in do DatePicker para restringir as seleções apenas para datas futuras.
Bom desafio! Qualquer dúvida, não deixe de nos procurar no fórum ou no discord!

Você pode conferir como solucionei essa tarefa no GitHub!

https://github.com/alura-cursos/swiftui-vollmed-crud/commit/2153f8d37dd5913fce0cd15e2ff90b4dcb72a1a5

@@04
Mão na massa: mostrando os horários de 15 em 15 minutos

O objetivo deste desafio é modificar o seletor de datas e horários na tela de agendamento para permitir que o usuário escolha horários em intervalos de 15 minutos (por exemplo, 9:00, 9:15, 9:30, 9:45...).
Veja uma imagem de como deve ficar o resultado final:

Imagem que mostra um menu seletor de horário em que os minutos são divididos em 15 minutos

Dica:

Você pode utilizar o UIDatePicker para alterar a propriedade relacionada ao intervalo de minutos.
Vamos lá? Qualquer dúvida, manda pra gente no fórum ou no discord!

Você pode conferir como solucionei essa tarefa no GitHub!

https://github.com/alura-cursos/swiftui-vollmed-crud/commit/5cb5e0538f1c55be29ea3b53af2ba196cb46e0ba

@@05
Formatando datas no Swift para enviar ao back-end

Antes de começarmos a falar sobre formatação de datas, queremos mencionar que adicionamos os códigos dos desafios que propusemos para você.
Na linha 23 do arquivo ScheduleAppointmentView.swift, em in: Date(), a instância da classe seguida de três pontos significa que serão mostradas somente datas futuras no calendário.

ScheduleAppointmentView.swift:
DatePicker("Escolha a data da consulta", selection: $selectedDate, in: Date()...)
    .datePickerStyle(.graphical)
COPIAR CÓDIGO
Da linha 35 até a 37, definimos que o intervalo de minutos é de 15.

.onAppear {
    UIDatePicker.appearance().minuteInterval = 15
}
COPIAR CÓDIGO
Formatando datas para envio para API
Agora vamos falar sobre formatação de data. Vamos abrir o Insomnia para mostrar como fazer a requisição para criar uma consulta do tipo POST.

Enviamos um arquivo JSON com alguns atributos. O primeiro é o campo especialista, que possui o ID do especialista. O segundo é o paciente, que possui um ID do paciente. E o terceiro é o atributo data, que representa a data selecionada no calendário.

Essa data é do tipo string. Portanto, nela temos o ano, o mês e também o dia, separados por hifens. Depois temos uma letra "T" separando a data do horário. Como horário, temos 10 horas e 15 minutos. Em seguida, os segundos "00", e por fim, ".000", que representa os milissegundos.

{
  "especialista": "4594d93e-6459-4a1d-b3a9-03ca32d344dc",
  "paciente": "b25aa67b-203e-4a79-b0e0-3f5c560cd317",
  "data": "2023-10-16T10:15:00.000"
}
COPIAR CÓDIGO
Precisamos converter a nossa variável de estado selectedDate, que é do tipo Date, para uma string que seja representada dessa forma.

De volta ao projeto no Xcode, na pasta "Vollmed", vamos criar uma nova pasta chamada "Extensions". Nesta pasta, criaremos um novo arquivo. Portanto, vamos clicar em "New File… > Swift File", e nomearemos este arquivo como Date+, pois ao falarmos sobre extensões, é uma boa prática nomear os arquivos com este símbolo de mais (+).

Começaremos escrevendo extension Date. Vale lembrar que extension é uma funcionalidade da linguagem Swift que permite estender funcionalidades a tipos de dados já existentes na própria linguagem Swift, no próprio framework, ou até mesmo tipos de dados que criamos. Nesse caso, criamos uma extensão usando a classe Date da própria linguagem Swift.

Date+.swift:
import Foundation

extension Date {

}
COPIAR CÓDIGO
No escopo de Date, vamos criar uma função (func) chamada convertToString(). Ela não receberá nenhum parâmetro e retornará uma string.

extension Date {
    func convertToString() -> String {
    
    }
}
COPIAR CÓDIGO
Quando falamos sobre formatação de datas, usamos uma classe chamada dateFormatter. Portanto, no escopo da função convertToString(), criaremos uma constante (let) chamada dateFormatter que será igual a DateFormatter(), ou seja, instanciamos a classe.

extension Date {
    func convertToString() -> String {
        let dateFormatter = DateFormatter()
    }
}
COPIAR CÓDIGO
Agora, precisamos especificar qual formato queremos converter. Para isso, vamos escrever na linha abaixo dateFormatter.dateFormat, que será igual a uma string.

O formato deve ser igual ao que vimos no Insomnia, composto por ano ("yyyy"), mês ("MM") e dia ("dd"), separados por hifens. Depois uma letra "T", que separa a data da hora. Por fim, temos a hora ("HH"), os minutos ("mm"), os segundos ("ss"), os milissegundos ("SSS"), e uma letra "Z".

O "Z" representa o deslocamento do fuso horário, portanto, precisamos passá-lo para o back-end compreender qual é o fuso horário.
Por último, vamos escrever return dateFormatter.string(from: self), já que isso é uma extensão. O self representa a instância do tipo Date.

extension Date {
    func convertToString() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        return dateFormatter.string(from: self)
    }
}
COPIAR CÓDIGO
Vamos retornar ao arquivo ScheduleAppointmentView.swift. Na linha 27, onde temos print("Botão pressionado!"), substituiremos por print(selectedDate.convertToString()).

ScheduleAppointmentView.swift:
Button(action: {
    print(selectedDate.convertToString())
}, label: {
    ButtonView(text: "Agendar consulta")
})
COPIAR CÓDIGO
Agora, a função convertToString() criada na extensão faz parte do objeto do tipo Date, por isso podemos chamá-lo diretamente. Vamos executar o aplicativo com "Command + R".

No simulador, iremos clicar em "Agendar consulta", selecionar o dia 21 de setembro e escolher 1 hora da tarde, por exemplo. Finalizado o agendamento, teremos no console a data formatada corretamente ("2023-09-21T13:00:00.000-0300").

No final, aparece "-0300", que é de fato o fuso horário.
Conclusão
Assim, já podemos enviar para o nosso back-end!

@@06
Formatando datas no Swift para um formato legível

Ainda falando sobre formatação de datas, vamos construir posteriormente uma tela que mostrará todas as consultas de um paciente. Nessa tela, seria interessante mostrar também o horário da consulta, mas não podemos usar a formatação que acabamos de criar com a função convertToString() na extensão Date, afinal, isso não é legível para a pessoa usuária.
Portanto, precisamos criar uma nova função de formatação que possa exibir uma data compreensível, como "21 de setembro de 2023, às 13 horas".

Formatando datas para a pessoa usuária
Começaremos criando um novo arquivo no diretório "Extensions", que será do tipo Swift File. Criaremos uma extensão chamada String+.swift.

Dentro desse arquivo, vamos definir uma extension chamada String, estendendo do tipo de dados já existente String. Em seguida, vamos definir uma função nesta extensão.

Vamos chamar essa função de convertDateStringToReadableDate(). Ela não receberá nenhum parâmetro, mas retornará uma String.

String+.swift:
import Foundation

extension String {
    func convertDateStringToReadableDate() -> String {
    
    }
}
COPIAR CÓDIGO
É sempre importante tentar usar nomes descritivos para as funções e variáveis. Portanto, não há problema em ter nomes longos, contanto que sejam descritivos.
Essa função será um pouco mais complexa. Estamos trabalhando com uma string que será nossa entrada, a qual queremos transformar em uma data. A partir dessa data, iremos formatá-la para uma nova string. Começaremos a implementar essa função agora.

A primeira coisa que faremos será definir uma constante chamada inputFormatter, que será uma instância de DateFormatter().

Na linha abaixo, vamos definir que inputFormatter.dateFormat será igual a uma string que pegaremos do arquivo Date+.swift. Essa string é o formato que enviamos para o back-end, na linha 13, e na função convertDateStringToReadableDate() iremos recebê-la.

extension String {
    func convertDateStringToReadableDate() -> String {
        let inputFormatter = DateFormatter()
        inputFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
    }
}
COPIAR CÓDIGO
Agora, precisamos converter essa string em uma data. Isso retornará uma opcional, então vamos desembrulhar essa variável. Para isso, escreveremos que if let date é igual a inputFormatter.date(), sendo que date() recebe from: self.

extension String {
    func convertDateStringToReadableDate() -> String {
        let inputFormatter = DateFormatter()
        inputFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"

        if let date = inputFormatter.date(from: self) {
        
        }
    }
}
COPIAR CÓDIGO
No arquivo Date+.swift, fizemos algo semelhante, mas convertíamos em uma string. Neste caso, estamos convertendo para uma data.

Dentro dessa condicional, precisamos converter essa data em uma string legível. Primeiramente, vamos definir uma variável chamada dateFormatter e instanciar novamente DateFormatter().

Na linha seguinte, vamos escrever dateFormatter.dateFormat, que receberá uma string que define como queremos formatar a data: "dd/MM/yyyy 'às' HH:mm". Isso produzirá datas como "21 de setembro de 2023 às 13:00".

Por fim, retornamos a data formatada (return dateFormatter.string(from: date)). Se o bloco if falhar por algum motivo, simplesmente retornaremos uma string vazia (return "").

extension String {
    func convertDateStringToReadableDate() -> String {
        let inputFormatter = DateFormatter()
        inputFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"

        if let date = inputFormatter.date(from: self) {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "dd/MM/yyyy 'às' HH:mm"
            return dateFormatter.string(from: date)
        }
        
        return ""
    }
}
COPIAR CÓDIGO
Se ocorrer algum erro na conversão de data, será porque a string fornecida é inválida. Por exemplo: se fornecermos a string "Giovanna", o programa não entenderá como uma data e ocorrerá um erro, fazendo com que a linha 21 seja executada e retorne uma string vazia.
Retornando ao arquivo ScheduleAppointmentView.swift, na linha 27, onde temos print(selectedDate.convertToString()), a data é convertida para uma string que podemos visualizar no console. Queremos converter essa string em uma data legível. Para isso, vamos chamar o método .convertDateStringToReadableDate().

ScheduleAppointmentView.swift:
Button(action: {
    print(selectedDate.convertToString().convertDateStringToReadableDate())
}, label: {
    ButtonView(text: "Agendar consulta")
})
COPIAR CÓDIGO
Vamos executar esse código para conferir se conseguimos. Simularemos o agendamento de uma consulta: escolheremos o dia 22 de setembro e o horário de 7:30 da noite. Ao clicar em "Agendar consulta", teremos no console a data formatada de maneira legível ("22/09/2023 às 19:30"), compreensível para a pessoa usuária.

Conclusão
Já temos funções para conversão de datas! Embora elas possam parecer um pouco complexas inicialmente, com prática tudo fica mais evidente. Agora, vamos prosseguir com a criação dos modelos de requisição e resposta ao agendar uma consulta.

@@07
Formatando datas corretamente

Ao desenvolver um recurso que permita ao paciente agendar uma consulta com um especialista, você precisa garantir que a data e hora escolhidas sejam formatadas corretamente para a requisição de agendamento.
Dadas as funções de extensão fornecidas e o modelo de requisição, como você modificaria o botão "Agendar consulta" para realizar corretamente este agendamento? Selecione os trechos de código corretos:

Usar selectedDate.convertToString().convertDateStringToReadableDate() e enviar o resultado para o backend.
 
A função convertDateStringToReadableDate() converte uma string de data no formato "yyyy-MM-dd'T'HH:mm:ss.SSSZ" para o formato "dd/MM/yyyy 'às' HH:mm", o que não é o formato esperado pelo backend.
Alternativa correta
Usar selectedDate.convertToString() e enviar diretamente a data formatada em conjunto com outros detalhes da consulta ao back-end.
 
Certo! O nosso back-end indica que a data deve ser fornecida no formato "yyyy-MM-dd'T'HH:mm:ss.SSSZ". A extensão convertToString() do tipo Date faz exatamente essa conversão. Portanto, após obter a data no formato correto, ela pode ser enviada ao backend juntamente com outros detalhes da consulta.
Alternativa correta
Converter a data selecionada para o formato "dd/MM/yyyy 'às' HH:mm" e, em seguida, converter esse resultado novamente para "yyyy-MM-dd'T'HH:mm:ss.SSSZ" antes de enviar para o backend.
 
Na verdade, esta é uma abordagem ineficiente e não é necessária. A data já pode ser convertida diretamente para o formato necessário usando a função convertToString(). Consequentemente, não há necessidade de realizar duas conversões.
Alternativa correta
Armazenar a data selecionada como está, sem fazer nenhuma conversão, e enviá-la para que o back-end faça a conversão necessária.
 
O back-end espera um formato específico de data, conforme indicado pelo modelo ScheduleAppointmentRequest. Confiar no back-end para fazer a conversão pode levar a erros ou ambiguidades.

@@08
Criando modelos de requisição e resposta

Primeiramente, vamos entender o que enviaremos para a requisição POST quando formos criar uma consulta, e o que essa requisição retorna.
Criando modelos de requisição e resposta
Pela primeira vez, não executamos mais uma requisição GET, na qual buscamos dados, mas sim uma requisição com o verbo POST, que significa enviar dados. Por isso, enviamos o JSON com alguns atributos.

Se tentarmos enviar essa requisição, ocorrerá um erro, porque o ID do especialista e o ID do paciente não existem. Eles são de uma requisição anterior, são apenas modelos.

Pegaremos o ID de um especialista que existe. Para isso, vamos até a rota "Retorna todos os especialistas", executamos a requisição e copiamos o ID de "Dr. João da Silva", por exemplo.

Com o ID copiado, voltamos na requisição "Cria uma consulta" e colamos no campo especialista.

Em seguida, para o ID do paciente, vamos à requisição "Todos os pacientes", executamos em "Send", e vamos pegar, por exemplo, o ID do paciente "Lucas". Após copiar, retornamos na requisição "Cria uma consulta" e colamos no campo paciente.

A data será mantida como "2023-10-16", porque ainda não estamos no dia 16 de outubro, mas se você estiver assistindo a este curso em outra data, pode ser interessante atualizá-la.
{
  "especialista": "b6156d16-8329-4690-980c-eb3b30eaa585",
  "paciente": "e34db020-3445-4fbf-a744-ba578754da04",
  "data": "2023-10-16T10:15:00.000"
}
COPIAR CÓDIGO
Após enviar, a consulta deverá ser criada com sucesso, obtendo o status code 200, significando que foi bem-sucedido. Ela nos retorna o ID do especialista, o ID do paciente, a data, e o campo motivoCancelamento, que atualmente é nulo, mas usaremos quando formos cancelar uma consulta. Por fim, também é retornado o ID da consulta.

Portanto, nesta requisição POST, enviamos e recebemos dados. Por essa razão, vamos criar dois modelos de dados diferentes, um para a requisição, que chamaremos de request, e outro para a resposta dessa requisição, que chamaremos de response.

Criando os modelos de dados
Voltaremos para o Xcode e dentro da pasta "Models", criaremos um novo arquivo do tipo Swift File, que vamos renomear como ScheduleAppointment.

Nesse arquivo, vamos criar os modelos de dados. Começaremos criando o modelo para a requisição. Para isso, criaremos uma struct chamada ScheduleAppointmentRequest, que irá aderir ao protocolo Codable para conseguirmos tanto decodificar os dados em JSON quanto codificá-los.

ScheduleAppointment.swift:
import Foundation

struct ScheduleAppointmentRequest: Codable {

}
COPIAR CÓDIGO
Você poderia usar o Encodable, pois vamos converter isso para JSON, mas o Codable inclui tanto o encode quanto o decode, então optamos por utilizá-lo.
No escopo de ScheduleAppointmentRequest, criaremos três atributos: o primeiro let specialist, do tipo String; o segundo let patient, também do tipo String; e o terceiro let date, também do tipo String.

struct ScheduleAppointmentRequest: Codable {
    let specialist: String
    let patient: String
    let date: String
}
COPIAR CÓDIGO
Porém, analisando o Insomnia, enviamos os atributos em português, então precisamos converter para evitar qualquer erro. De volta ao Xcode, criaremos na linha 15 o enum CodingKeys, cujos valores serão do tipo String. Ele irá aderir a outro protocolo chamado CodingKey, para identificar que ele faz o mapeamento das chaves.

struct ScheduleAppointmentRequest: Codable {
    let specialist: String
    let patient: String
    let date: String
    
    enum CodingKeys: String, CodingKey {
    
    }
}
COPIAR CÓDIGO
Dentro desse enum, criaremos um case chamado specialist, que será igual a especialista, nome da chave enviada para a API. Na linha abaixo, criaremos outro case chamado patient, que será igual a paciente. Por fim, criaremos o case date, que será igual a data.

enum CodingKeys: String, CodingKey {
    case specialist = "especialista"
    case patient = "paciente"
    case date = "data"
}
COPIAR CÓDIGO
Temos o modelo de requisição criado com sucesso. Agora, vamos criar o modelo da resposta. Para isso, criaremos na linha 10, acima da primeira struct, outra struct chamada ScheduleAppointmentResponse, que também irá aderir ao tipo Codable, e além disso, ao tipo Identifiable, pois ele retorna um ID, isto é, um identificador único.

struct ScheduleAppointmentResponse: Codable, Identifiable {

}
COPIAR CÓDIGO
Com isso, o programa reporta um erro quando não adicionamos a propriedade id, pois, nesse caso, não estaria em conformidade com o protocolo Identifable, que exige um atributo id. Portanto, vamos começar escrevendo let id, que será do tipo String.

Em seguida, vamos declarar let specialist, que também será do tipo String, bem como let patient e let date. Na linha abaixo, vamos chamar o motivo do cancelamento de reasonToCancel, que será do tipo String, porém opcional, ou seja, String?.

Novamente, vamos criar o enum CodingKeys para mapear as nossas chaves. Dentro desse CodingKeys, começaremos escrevendo case id. Como o ID não vai mudar, ele é id tanto no modelo de dados quanto no JSON, então vamos simplesmente mantê-lo dessa forma.

Continuaremos com case specialist, que é igual a especialista; com case patient, igual a paciente; case date igual a data; e reasonToCancel igual a motivoCancelamento.

struct ScheduleAppointmentResponse: Codable, Identifiable {
    let id: String
    let specialist: String
    let patient: String
    let date: String
    let reasonToCancel: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case specialist = "especialista"
        case patient = "paciente"
        case date = "data"
        case reasonToCancel = "motivoCancelamento"
    }
}
COPIAR CÓDIGO
Você pode pensar o seguinte: como o ID não muda, poderíamos simplesmente removê-lo. No entanto, não podemos fazer isso; precisamos mapear todas as propriedades. Portanto, mesmo que ele não mude, devemos mantê-lo dentro do enum CodingKeys.
Conclusão
Agora que já temos nosso modelo criado, vamos começar a implementar a requisição de fato. Te esperamos no próximo vídeo!

@@09
Faça como eu fiz: preparando o terreno para agendar uma consulta

Está na hora de colocar seus conhecimentos em prática!
Vamos construir a tela de agendamento de consulta? Siga os passos a seguir:

1 - Criando a tela de agendamento de uma consulta:

a) Crie a view de agendamento:
struct ScheduleAppointmentView: View { ... }
COPIAR CÓDIGO
b) Use o DatePicker para permitir que o usuário selecione a data da consulta;
c) Utilize a ButtonView para criar um botão de ação;
d) Adicione um link de navegação para a tela de agendamento:
NavigationLink {
    ScheduleAppointmentView()
} label: {
    ButtonView(text: "Agendar consulta")
}
COPIAR CÓDIGO
2 - Formatando datas para envio ao back-end:

a) Crie uma extensão da classe Date para converter a data em uma String formatada:
extension Date {
    func convertToString() -> String { ... }
}
COPIAR CÓDIGO
3 - Formatando datas para um formato legível:

a) Estenda a classe String para converter uma data em formato de String para uma representação legível:
        extension String {
            func convertDateStringToReadableDate() -> String { ... }
        }
COPIAR CÓDIGO
4 - Modelando requisição e resposta:

a) Crie estruturas para representar a resposta e a solicitação de agendamento:
struct ScheduleAppointmentResponse: Codable, Identifiable { ... }

struct ScheduleAppointmentRequest: Codable { ... }
COPIAR CÓDIGO
Bons estudos!

Agora que preparamos o terreno para agendar uma consulta de fato, podemos seguir e implementar a requisição POST para enviar ao back-end!
Verifique o progresso e o código do projeto até o momento no link para a branch no GitHub.

Caso tenha dúvidas ou encontre desafios, lembre-se de que estamos aqui para ajudar! Entre em contato através do fórum, discord ou qualquer outro canal de suporte disponível.

https://github.com/alura-cursos/swiftui-vollmed-crud/tree/aula-03

@@10
O que aprendemos?

Nesta aula, você aprendeu a:
Construir a tela de agendamento de uma consulta;
Formatar datas no Swift, tanto para envio ao back-end quanto para exibição amigável ao usuário;
Criar e utilizar modelos para estruturar requisições e respostas.
Bom trabalho!

#### 07/04/2024

@04-Requisição POST

@@01
Projeto da aula anterior

Você pode revisar o seu código e acompanhar o passo a passo do desenvolvimento do nosso projeto através desta branch no Github e, se preferir, pode baixar o projeto da aula anterior.
Bons estudos!

https://github.com/alura-cursos/swiftui-vollmed-crud/tree/aula-03

https://github.com/alura-cursos/swiftui-vollmed-crud/archive/refs/heads/aula-03.zip

@@02
Implementando a requisição POST

Vamos começar criando uma função para realizar uma requisição do tipo POST.
Preparando a Função de Requisição POST
Dentro da estrutura WebService, criaremos uma função chamada scheduleAppointment(). Esta função receberá alguns parâmetros: specialistID; PatientID; e date. Os três são do tipo string.

private let baseURL = "http://localhost:3000"

func scheduleAppoitment(specialistID: String, patientID: String, date: String)
COPIAR CÓDIGO
Poderíamos fazer diferente, por exemplo, enviar um único parâmetro do tipo ScheduleAppointmentRequest, não haveria problema algum. Porém, vamos manter esses três parâmetros, que são poucos, e instanciamos a nossa estrutura aqui mesmo, dentro da função.

Marcaremos esta função como async throw, assim como em todas as outras funções que fizemos, e o retorno será ScheduleAppointmentResponse, uma opcional, ?.

private let baseURL = "http://localhost:3000"

func scheduleAppoitment(specialistID: String, patientID: String, date: String) async
     throws -> ScheduleAppointmentResponse? {
COPIAR CÓDIGO
Organizando a Estrutura da Requisição
Vamos iniciar criando uma constante endpoint que é igual a baseURL, e a nossa rota para criar uma consulta é, simplesmente, "/consulta".

private let baseURL = "http://localhost:3000"

func scheduleAppoitment(specialistID: String, patientID: String, date: String) async
     throws -> ScheduleAppointmentResponse? {
         let endpoint = baseURL + "/consulta"
COPIAR CÓDIGO
Agora, vamos tratar o endpoint para transformá-lo em uma url, então, guard let url será igual a url, passando string, endpoint. Em seguida, passaremos um else. Se ocorrer algum erro, então print("Erro na URL e return nil.

private let baseURL = "http://localhost:3000"

func scheduleAppoitment(specialistID: String, patientID: String, date: String) async
     throws -> ScheduleAppointmentResponse? {
     let endpoint = baseURL + "/consulta"
         
         guard let url = URL(string: endpoint) else {
         return nil
         
         }
COPIAR CÓDIGO
O próximo passo é instanciar a nossa estrutura, que é o ScheduleAppointmentRequest, passando os parâmetros que foram recebidos.

func scheduleAppointment(specialistID: String,
                             patientID: String,
                             date: String) async throws -> ScheduleAppointmentResponse? {
        let endpoint = baseURL + "/consulta"
        
        guard let url = URL(string: endpoint) else {
            print("Erro na URL!")
            return nil
        }
        
        let appointment = ScheduleAppointmentRequest(specialist: specialistID, patient: patientID, date: date)
COPIAR CÓDIGO
Recebemos três parâmetros, um número considerável, por isso é bom organizarmos melhor a identação do código. Antes do patientID, e do date, apertaremos "Enter", adicionando uma quebra de linha para que um parâmetro fique embaixo do outro.


 func scheduleAppointment(specialistID: String,
                             patientID: String,
                             date: String) async throws -> ScheduleAppointmentResponse? {
        let endpoint = baseURL + "/consulta"
        
        guard let url = URL(string: endpoint) else {
            print("Erro na URL!")
            return nil
        }
COPIAR CÓDIGO
Em seguida, criaremos uma nova constante chamada appointment, que será igual a ScheduleAppointmentRequest, e passarei esses três parâmetros, SpecialistID para o Specialist, PatientID para o Patient, Date para o Date.

func scheduleAppointment(specialistID: String,
                             patientID: String,
                             date: String) async throws -> ScheduleAppointmentResponse? {
        let endpoint = baseURL + "/consulta"
        
        guard let url = URL(string: endpoint) else {
            print("Erro na URL!")
            return nil
        }
        
        let appointment = ScheduleAppointmentRequest(specialist: specialistID, patient: patientID, date: date)
COPIAR CÓDIGO
Codificação dos Dados para JSON
Agora, precisamos converter a variável Appointment em um JSON, pois quando fazemos uma requisição POST, enviamos um JSON. Da mesma maneira que utilizamos o JSONDecoder() para decodificar dados, existe também o JSONEncoder() para codificar os dados e transformá-los em JSON.

Então, vamos fazer isso! Criaremos uma constante chamada jsonData, que será igual a try, porque isso pode lançar um erro. Seguindo, passaremos JSONEncoder().encode() e appointment como parâmetro.

 func scheduleAppointment(specialistID: String,
                             patientID: String,
                             date: String) async throws -> ScheduleAppointmentResponse? {
        let endpoint = baseURL + "/consulta"
        
        guard let url = URL(string: endpoint) else {
            print("Erro na URL!")
            return nil
        }
        
        let appointment = ScheduleAppointmentRequest(specialist: specialistID, patient: patientID, date: date)
        
        let jsonData = try JSONEncoder().encode(appointment)
COPIAR CÓDIGO
Configurando a Requisição POST
Assim, realizamos a conversão para JSON. Seguindo, vamos criar a nossa requisição de fato. Ela será um pouco diferente da requisição GET, porque é do tipo POST, além disso, precisamos passar o jsonData como o corpo da nossa requisição e adicionar um cabeçalho.

Começaremos criando uma variável chamada Request que será igualada a uma URLRequest. Em seguida, vamos abrir parênteses, escolher a opção com url:, e passar a variável url, ou seja: url: url.

O request possui alguns métodos e atributos. Então, vamos escrever request.httpMethod, que é o método HTTP, no caso, o POST. Então, vamos passar "POST" para definir qual é o método HTTP dessa requisição.

func scheduleAppointment(specialistID: String,
                             patientID: String,
                             date: String) async throws -> ScheduleAppointmentResponse? {
        let endpoint = baseURL + "/consulta"
        
        guard let url = URL(string: endpoint) else {
            print("Erro na URL!")
            return nil
        }
        
        let appointment = ScheduleAppointmentRequest(specialist: specialistID, patient: patientID, date: date)
        
        let jsonData = try JSONEncoder().encode(appointment)
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
COPIAR CÓDIGO
Também adicionaremos um cabeçalho. Para isso, utilizaremos o método setValue. Mas por que estamos adicionando esse cabeçalho? O cabeçalho ou header são informações úteis da nossa requisição.

Se retornarmos ao Insomnia, logo quando fazemos um POST para uma consulta, temos uma parte de headers. Quando clicamos nesses headers, encontramos um atributo, contentType, com o valor application/json, definindo que os dados que estamos enviando são do tipo JSON.

Precisamos adicionar isso em nossa requisição também, para que o back-end realize o tratamento de forma correta.

De volta ao webService, o valor será "application", portanto, adicionaramos uma string, application/json. Para qual cabeçalho ou campo do cabeçalho? O "Content-Type".

// Código omitido 

  var request = URLRequest(url: url)
        request.httpMethod = "DELETE"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")

}

// Código omitido. 
COPIAR CÓDIGO
Para consultar o arquivo webService, basta acessar o GitHub do curso
Envio da Requisição e Decodificação da Resposta
Por fim, precisamos enviar o corpo da requisição, a "JSON data". Vamos escrever: request.httpBody = jsonData.

// Código omitido. 

 var request = URLRequest(url: url)
        request.httpMethod = "DELETE"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = jsonData
        
// Código omitido. 
COPIAR CÓDIGO
A parte de chamar a requisição em si é bem similar ao que já fizemos. Vamos escrever:

let (_, response) = try await URLSession.shared.data(for: request)
COPIAR CÓDIGO
Hora de decodificar esses dados:

let (_, response) = try await URLSession.shared.data(for: request)
let appointmentResponse = try JSONDecoder().decode(ScheduleAppointmentResponse.self, from: data)
COPIAR CÓDIGO
Por fim, devemos retornar os dados decodificados:

let (_, response) = try await URLSession.shared.data(for: request)
let appointmentResponse = try JSONDecoder().decode(ScheduleAppointmentResponse.self, from: data)

return appointmentResponse

}
COPIAR CÓDIGO
Próximos passos
Dessa forma, temos nossa requisição criada. Ainda não testamos, mas, esperamos que ela esteja funcionando. No próximo vídeo, chamaremos, efetivamente, essa função ScheduleAppointment na nossa ScheduleAppointmentView.

Até mais!!

@@03
Chamando a função para realizar o agendamento

Agora, precisamos chamar a função ScheduleAppointment dentro do nosso WebService, na nossa View que está em ScheduleAppointmentView. Mas, onde vamos chamar essa função? Logo após o usuário clicar no botão de agendar consulta.
Organizando a Estrutura da Requisição
Começaremos criando uma instância de WebService, ou seja, led service = webService. Também criaremos uma função chamada scheduleAppointment(), que será assíncrona.

import SwiftUI

struct ScheduleAppointmentView: View {
    
    let service = WebService()
    
        @State private var selectedDate = Date()
        
        func scheduleAppointment() async {
        }
COPIAR CÓDIGO
Dentro da ação do botão, vamos remover o print(), escrever Task, inserindo o contexto assíncrono e, então, chamaremos await scheduleAppointment.

Button(action: {
    Task {
            await scheduleAppointment()
        }
COPIAR CÓDIGO
Na função ScheduleAppointment(), começaremos criando o do e o catch.

@State private var selectDate = Date()

func scheduleAppointment() async {
    do {
        
        } catch {
        
        }
 }
COPIAR CÓDIGO
Dentro do catch, simplesmente escreveremos print("Ocorreu um erro ao agendar consulta: ", e faremos uma interpolação da variável error.

@State private var selectDate = Date()

func scheduleAppointment() async {
    do {
        
        } catch {
            print("Ocorreu um erro ao agendar consulta: \(error)")
        
        }
 }
COPIAR CÓDIGO
O do retornará uma opcional, portanto, dsembrulharemos a variável. Para isso, escreveremos if let appointment é igual a service.scheduleAppointment.

@State private var selectDate = Date()

func scheduleAppointment() async {
    do {
           if let appointment = 
                service.scheduleAppointment()
        
        } catch {
            print("Ocorreu um erro ao agendar consulta: \(error)")
        
        }
 }
COPIAR CÓDIGO
Precisamos passar o ID do especialista, o ID do paciente e a data. Não temos acesso ao ID do especialista e nem ao do paciente, só temos acesso à data. Quando enviarmos a data na string, simplesmente escreveremos selectDate.convertToString(), função que criamos na extension.

@State private var selectDate = Date()

func scheduleAppointment() async {
    do {
           if let appointment = 
                service.scheduleAppointment(specialistID: String, patientID: String, date: selectedDate.ConvertToString())
        
        } catch {
            print("Ocorreu um erro ao agendar consulta: \(error)")
        
        }
 }
COPIAR CÓDIGO
A ScheduleAppointmentView é chamada do arquivo SpecialistCardView. Nele, há uma propriedade do tipo Specialist, portanto, temos acesso ao ID do especialista e podemos passá-lo como parâmetro.

Voltando à ScheduleAppointmentView, logo após o let service, colocaremos var specialistId, que é do tipo string.

import SwiftUI

struct ScheduleAppointmentView: View {
    
    let service = WebService()
        var specialistID: String
    
        @State private var selectedDate = Date()
        
        func scheduleAppointment() async {
        }
COPIAR CÓDIGO
Poderíamos passar o objeto especialista com todas as informações, mas como só utilizaremos o ID, passaremos apenas ele.

Então, ao chamarmos a função, passaremos o valor SpecialistId.

@State private var selectDate = Date()

func scheduleAppointment() async {
    do {
           if let appointment = 
                service.scheduleAppointment(specialistID: specialistID, patientID: String, date: selectedDate.ConvertToString())
        
        } catch {
            print("Ocorreu um erro ao agendar consulta: \(error)")
        
        }
 }
COPIAR CÓDIGO
Agora, no arquivo SpecialistCardView, vamos passar o specialist.id.

NavigationLink {
    ScheduleAppointmentView(specialistID: specialist.id)
} label: {
    ButtonView(text: "Agendar consulta")
}
COPIAR CÓDIGO
Definindo Provisoriamente IDs de Paciente e Especialista
Resolvemos a questão do SpecialistId. Mas e o patientId? Como não estamos lidando com cadastro de pacientes nem com autenticação, precisaremos copiar o ID do paciente que criamos no Insomnia e colocá-lo no arquivo, que pode ser o arquivo WebService para, então, utilizarmos esse ID como provisório.

Vamos fazer isso! Abriremos o Insomnia, localizaremos a requisição dos pacientes e copiaremos o ID desse paciente. Voltando ao ScheduleAppointmentView, arquivo WebService, fora da struct, criaremos uma constante chamada patientId, que será igual ao ID do paciente em forma de string.

import UIKit

let patientID = "b25aa67b-203e-4a79-b0e0-3f5c560cd317"

struct WebService {
COPIAR CÓDIGO
Essa variável está definida de maneira global, o que significa que podemos acessá-la de qualquer lugar do nosso código, sem a necessidade de importá-la ou exportá-la. Mas, isso é totalmente provisório. Futuramente, entenderemos como cadastrar ou autenticar um paciente e muito mais.

Voltaremos à ScheduleAppointmentView, que é uma variável global, então, podemos simplesmente escrever patientId.

@State private var selectDate = Date()

func scheduleAppointment() async {
    do {
           if let appointment = 
                service.scheduleAppointment(specialistID: specialistID, patientID: patientID, date: selectedDate.ConvertToString())
        
        } catch {
            print("Ocorreu um erro ao agendar consulta: \(error)")
        
        }
 }
COPIAR CÓDIGO
Além disso, precisamos passar try await antes de chamar a função.

@State private var selectDate = Date()

func scheduleAppointment() async {
    do {
           if let appointment = try await 
                service.scheduleAppointment(specialistID: specialistID, patientID: patientID, date: selectedDate.ConvertToString())
        
        } catch {
            print("Ocorreu um erro ao agendar consulta: \(error)")
        
        }
 }
COPIAR CÓDIGO
Dentro das chaves, passaremos print(appointment) para conferir se tudo está correto.

@State private var selectDate = Date()

func scheduleAppointment() async {
    do {
           if let appointment = try await 
                service.scheduleAppointment(specialistID: specialistID, patientID: patientID, date: selectedDate.ConvertToString()) {
                    print(appintment)
                }
        
        } catch {
            print("Ocorreu um erro ao agendar consulta: \(error)")
        
        }
 }
COPIAR CÓDIGO
Gerenciamento de Erros e Validações
Está aparecendo um erro no Preview. Vamos clicar em "Fix" e passar o ID como "1, 2, 3", já não se trata de algo funcional, logo, podemos colocar qualquer valor.

#Preview {
    ScheduleAppointmentView(specialistID: "123")
}
COPIAR CÓDIGO
O próximo passo é apertar o comando "R" para executarmos nossa aplicação. Vamos testar agendando uma consulta com o Dr. João da Silva, marcando o dia 20 de setembro e o horário será às 3 da tarde.

Recebemos na tela de console o scheduleAppointmentResponse com o ID da consulta, o ID do especialista, o ID do paciente, a data e também o motivo de cancelamento, que está nulo.

ScheduleAppointmentResponse(id:
"3aa3c4d7-4f6d-4739-9f3f-484f4ff0f88d", specialist:
"b6156d16-8329-4690-980c-eb3b30eaa585", patient:
"e34db020-3445-4fbf-a744-ba578754da04", date:
"2023-09-20T15:00:00.000-0300", reasonToCancel: nil)
COPIAR CÓDIGO
Significa que ele caiu no print da linha 20, portanto, está funcionando! Já conseguimos agendar consultas.

Mas, conseguimos fazer isso de fato? Vamos abrir o Insomnia. Na lista de todas as consultas (pasta "Consulta", que é uma requisição Get) vamos apertar o botão "Send".

Agora, já temos uma consulta criada. Na verdade, são duas, porque já criamos uma antes.

É importante destacarmos alguns pontos, para isso, retornaremos ao ScheduleAppointmentView. A API contém uma série de validações referentes à consulta. Por exemplo, a clínica só funciona das sete da manhã até às sete da noite.

Então, se executarmos o aplicativo novamente e tentarmos agendar uma consulta quando a clínica estiver fechada, ou seja, às nove da noite, receberemos um erro no console: "Ocorreu um erro ao agendar consulta".

Ocorreu um erro ao agendar consulta:
keyNotFound (CodingKeys(stringValue: "id", intValue: nil), Swift.DecodingError.Context(codingPath: [], debugDescription: "No value associated with key CodingKeys(stringValue: \"id\", intValue: nil) (\"id\").", underlyingError: nil))
COPIAR CÓDIGO
Na verdade, é um erro de decodificação de dados: Swift.DecodingError. Significa que a API retornou uma mensagem como "Não foi possível agendar a consulta", ou algo do tipo. Porém, isso não corresponde ao que estamos tentando decodificar, que é o ScheduleAppointmentResponse, que definimos na struct. Esse é o motivo de ter ocorrido um erro de decodificação de dados.

Existem outras validações também, como, por exemplo, determinado paciente ou especialista não estar disponível naquele horário, a clínica também não funciona aos domingos. Por fim, temos uma validação em que é possível criar a consulta com mais de 30 minutos de antecedência. Se alguém tentar criar uma consulta 15 minutos antes, não funcionará.

Mas como este curso não é focado exatamente em tratamento de erros e exceções, não vamos nos concentrar nessas questões. Entretanto, é importante saber disso ao testar seu aplicativo, ou seja, que a API contém uma série de validações.

Próximos passos
Agora que já temos a consulta sendo criada, é hora de mostrarmos alertas para a pessoa usuária, fornecendo um feedback visual.

Até o próximo vídeo!

@@04
Requisições POST

Estamos construindo o aplicativo Voll med e precisamos fazer uma requisição POST para enviar dados:
func scheduleAppointment(specialistID: String,
                         patientID: String,
                         date: String) async throws -> ScheduleAppointmentResponse? {
    let endpoint = baseURL + "/consulta"

    guard let url = URL(string: endpoint) else {
        print("Erro na URL!")
        return nil
    }

    let appointment = ScheduleAppointmentRequest(specialist: specialistID, patient: patientID, date: date)

    let jsonData = try JSONEncoder().encode(appointment)

    var request = URLRequest(url: url)
    request.httpMethod = "POST"
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")
    request.httpBody = jsonData

    let (data, _) = try await URLSession.shared.data(for: request)
    let appointmentResponse = try JSONDecoder().decode(ScheduleAppointmentResponse.self, from: data)

    return appointmentResponse

}
COPIAR CÓDIGO
Analisando o trecho de código para realizar a requisição POST, qual das seguintes alterações resultaria em um erro ao tentar enviar a requisição?


Alternativa correta
Substituir let jsonData = try JSONEncoder().encode(appointment) por let jsonData = try? JSONEncoder().encode(appointment).
 
Ainda funcionaria! Ao utilizar try?, estamos optando por um tratamento de erro que retorna um valor opcional. Se o encoding falhar, jsonData será nil. Como nossa função retorna um **ScheduleAppointmentResponse opcional**, então tudo bem utilizarmos desta maneira.
Alternativa correta
Substituir let (data, _) = try await URLSession.shared.data(for: request) por let (data, response) = try await URLSession.shared.data(for: request).
 
Ambos os trechos são sintaticamente corretos. A única diferença é que na primeira versão estamos descartando a resposta usando _, enquanto na segunda estamos armazenando-a na variável response. Se não usarmos a response posteriormente no código, não haverá diferença funcional.
Alternativa correta
Remover a linha request.setValue("application/json", forHTTPHeaderField: "Content-Type").
 
Esta linha especifica que o corpo da requisição está sendo enviado como JSON. Se você remover essa linha, o servidor pode não interpretar corretamente os dados enviados, levando a erros na requisição.
Alternativa correta
Substituir baseURL + "/consulta" por **"\(baseURL)/consulta”**.
 
Sem problemas essa substituição. No caso, estamos trocando uma adição de strings para uma interpolação de strings, que ocorre sem problemas.

@@05
Mostrando um alerta para o usuário

Vamos mostrar um feedback visual para a pessoa usuária, tanto para quando o agendamento foi concluído com sucesso, quanto se houve algum erro. Faremos isso utilizando alertas, através de um modificador de propriedade chamado alert.
Preparando o Feedback Visual
Mas, antes de definirmos esse modificador na nossa view, vamos criar duas novas variáveis de estado no arquivo ScheduleAppointmentView.swift. A primeira será a showAlert. Ela é um booleano que representará se o alerta deve ser mostrado ou não. Inicializaremos com valor false, porque ele não será exibido inicialmente, mas sim após a nossa requisição.

@State private var selectedDate = Date()
@State private var showAlert = false
COPIAR CÓDIGO
Também vamos criar outra variável de estado chamada isAppointmentScheduled, que também será inicializada como false, para representar se a requisição foi feita com sucesso ou não.

@State private var selectedDate = Date()
@State private var showAlert = false
@State private var isAppointmentScheduled = false
COPIAR CÓDIGO
Manipularemos o alerta de acordo com essa variável, se a requisição for feita com sucesso, exibiremos uma mensagem indicando que deu tudo certo. No entanto, se falhar, forneceremos uma mensagem de erro, pedindo que a pessoa usuária tente novamente.

Dentro da função scheduledAppointment, a variável showAlert mostrará o alerta em qualquer situação: tanto se a requisição for bem-sucedida, quanto se falhar. Logo após o catch, vamos definir showAlert = true, para exibir o alerta em qualquer caso.

 func rescheduleAppointment() async {
        guard let appointmentID else {
            print("Houve um erro ao obter o ID da consulta")
            return
        }
        do {
            if let appointment = try await service.rescheduleAppointment(appointmentID: appointmentID, date: selectedDate.convertToString()) {
                isAppointmentScheduled = true
            } else {
                isAppointmentScheduled = false
            }
        } catch {
            print("Ocorreu um erro ao remarcar consulta: \(error)")
            isAppointmentScheduled = false
        }
        showAlert = true
    }
COPIAR CÓDIGO
Na variável scheduleAppointmentScheduled, vamos apagar o print(appointment) e escrever isAppointmentScheduled = true, porque a requisição foi feita com sucesso.

func scheduleAppointment() async {
        do {
            if let appointment = try await  service.scheduleAppointment(specialistID: specialistID, patientID: patientID, date: selectedDate.convertToString()) {
                isAppointmentScheduled = true
           
        } catch {
          
            print("Ocorreu um erro ao agendar consulta: \(error)")
        }
        showAlert = true
    }
COPIAR CÓDIGO
Também criaremos um else, porque se a resposta for negativa, vamos definir isAppointmentScheduled = false. Além disso, no catch, também definiremos isAppointmentScheduled = false.

func scheduleAppointment() async {
        do {
            if let appointment = try await  service.scheduleAppointment(specialistID: specialistID, patientID: patientID, date: selectedDate.convertToString()) {
                isAppointmentScheduled = true
            } else {
                isAppointmentScheduled = false
            }
        } catch {
            isAppointmentScheduled = false
            print("Ocorreu um erro ao agendar consulta: \(error)")
        }
        showAlert = true
    }
COPIAR CÓDIGO
Portanto, recapitulando, o showAlert será true em qualquer caso, pois queremos que ele mostre um alerta tanto de erro quanto de sucesso. Já a variável isAppointmentScheduled só se torna true quando a requisição for bem-sucedida.

Como não estamos usando a variável appointment, podemos simplesmente substituí-la por um underline, _ , indicando que está tudo bem.

func scheduleAppointment() async {
        do {
            if let _ = try await  service.scheduleAppointment(specialistID: specialistID, patientID: patientID, date: selectedDate.convertToString()) {
                isAppointmentScheduled = true
            } else {
                isAppointmentScheduled = false
            }
        } catch {
            isAppointmentScheduled = false
            print("Ocorreu um erro ao agendar consulta: \(error)")
        }
        showAlert = true
    }
COPIAR CÓDIGO
Implementação do Modificador .alert()
Agora, vamos implementar este alerta. Logo após o modificador onAppear, vamos escrever .alert. Anteriormente, usávamos a primeira opção com os parâmetros isPresented e content, mas ela ficará obsoleta em uma futura versão do iOS. Portanto, temos que usar parâmetros diferentes.

.alert(titleKey: LocalizedStringKey, isPresented: 
    Binding<Bool>, presenting: T?, actions: (T) ->
        view, message: (T) -> View)
COPIAR CÓDIGO
O primeiro parâmetro que precisamos passar é o título do alerta, que mudará dependendo do caso. Se a variável isAppointmentScheduled for verdadeira, o título será "Sucesso". Se for falsa, será "Ops, algo deu errado".

No .alert, vamos fazer uma verificação ternária. Escreveremos isAppointmentScheduled ?. Se for verdadeira, então, "Sucesso!". Se for falsa, então, "Ops, algo deu errado".

.alert(isAppointmentScheduled ? "Sucesso!" : "Ops, algo deu errado!", isPresented: Binding<Bool>, presenting: T?, actions: (T) ->
        view, message: (T) -> View)
COPIAR CÓDIGO
No isPresented precisamos passar como Binding a variável que controla se o alerta está sendo mostrado ou não. Neste caso, é a variável showAlert. Como se trata de um binding, precisamos adicionar cifrão: $showAlert.

.alert(isAppointmentScheduled ? "Sucesso!" : "Ops, algo deu errado!", isPresented: $showAlert, presenting: T?, actions: (T) ->
        view, message: (T) -> View)
COPIAR CÓDIGO
O presenting é um pouco diferente. Nele, conseguimos definir quais serão os botões do nosso alerta. Vamos passar a nossa variável isAppointmentScheduled, pois é a partir dela que a apresentação do alerta vai mudar.

Essa variável determinará se teremos uma mensagem de erro ou uma mensagem de sucesso.

.alert(isAppointmentScheduled ? "Sucesso!" : "Ops, algo deu errado!", isPresented: $showAlert, presenting: isAppointmentScheduled, actions: (T) ->
        view, message: (T) -> View)
COPIAR CÓDIGO
Na parte de actions, precisamos passar uma função que represente as ações do botão. Nós queremos apenas um botão com a palavra "OK", que fará o alerta desaparecer.

Portanto, podemos pressionar "Enter" e a IDE fará toda a reorganização necessária. Em seguida, substituiremos o T por isScheduled, que é o nome da variável. O in delimita o que estamos passando como parâmetro e o que é o corpo da função.

  .alert(isAppointmentScheduled ? "Sucesso!" : "Ops, algo deu errado!",     isPresented: $showAlert, presenting: isAppointmentScheduled) { isScheduled in
    
} message: { T in
   
}
COPIAR CÓDIGO
Na linha 60, vamos adicionar um Button() e escolher a opção action e label. Mas, dentro de action, não queremos que ele faça nada, porque, por padrão, ao clicarmos no botão, o alerta vai desaparecer. Sendo assim, a action ficará vazia.

  .alert(isAppointmentScheduled ? "Sucesso!" : "Ops, algo deu errado!",      isPresented: $showAlert, presenting: isAppointmentScheduled) { isScheduled in
      Button(action: {}, label: {
      
        })
    
} message: { T in
   
}
COPIAR CÓDIGO
O label será um Text("Ok").

  .alert(isAppointmentScheduled ? "Sucesso!" : "Ops, algo deu errado!",      isPresented: $showAlert, presenting: isAppointmentScheduled) { isScheduled in
      Button(action: {}, label: {
            Text("Ok") 
        })
    
} message: { T in
   
}
COPIAR CÓDIGO
Em message, vamos inserir a mensagem do alerta. Novamente, criaremos uma variável isSchedule. Na linha seguinte, faremos uma verificação com if isScheduled. Dentro dele, escreveremos Text("A consulta foi agendada com sucesso!") e um else, com Text("Houve um erro ao agendar sua consulta. Por favor tente novamente ou entre em contato via telefone.)

 .alert(isAppointmentScheduled ? "Sucesso!" : "Ops, algo deu errado!", isPresented: $showAlert, presenting: isAppointmentScheduled) { isScheduled in
            Button(action: {}, label: {
                Text("Ok")
            })
        } message: { isScheduled in
            if isScheduled {
                Text("A consulta foi agendada com sucesso!")
            } else {
                Text("Houve um erro ao agendar sua consulta. Por favor tente novamente ou entre em contato via telefone.")
            }
        }
        }
}
 
COPIAR CÓDIGO
Demonstração e Testes
Finalizamos essa parte relacionada ao alerta. Sei que pode parecer um pouco complicado devido à quantidade de código, mas quando passamos isScheduled no botão, na verdade, não estamos usando a variável isScheduled para nada. Estamos apenas utilizando na mensagem. Portanto, vamos substituí-la por underline, _.

 .alert(isAppointmentScheduled ? "Sucesso!" : "Ops, algo deu errado!", isPresented: $showAlert, presenting: isAppointmentScheduled) { _ in
            Button(action: {}, label: {
                Text("Ok")
            })
        } message: { isScheduled in
            if isScheduled {
                Text("A consulta foi agendada com sucesso!")
            } else {
                Text("Houve um erro ao agendar sua consulta. Por favor tente novamente ou entre em contato via telefone.")
            }
        }
        }
}
 
COPIAR CÓDIGO
Vamos testar se está funcionando! Agendaremos uma consulta com a Maria Souza para o dia 26 às 14h15. Após clicar em "Agendar consulta", recebemos o alerta de sucesso.

Se tentarmos marcar, por exemplo, quando a clínica está fechada, às 23h15, ele envia um alerta indicando que algo deu errado. Portanto, exibe a mensagem será "Houve um erro ao agendar a sua consulta".

Próximos passos
Dessa maneira, concluímos toda a parte de agendamento de consultas. O próximo passo é criar uma tela onde a pessoa usuária consiga visualizar todas as consultas agendadas.

https://cursos.alura.com.br/course/ios-swiftui-navegacao-gerenciamento-estados

@@06
Para saber mais: voltando para a tela anterior

Você pode ter percebido que, ao agendar uma consulta, o usuário continua na tela de agendamento. Isso acontece em outras telas também, como a de cancelamento.
Neste para saber mais, vamos discutir sobre a implementação do redirecionamento à tela anterior. No SwiftUI, esse comportamento pode ser implementado de forma simples.

Vamos entender como você pode fazer isso, especificamente no contexto da tela ScheduleAppointmentView.

Se você deseja que o usuário seja redirecionado de volta à tela anterior depois de clicar no botão "Ok" do alerta, você pode usar o @Environment property wrapper com a variável presentationMode.

Nós já vimos sobre essa property wrapper quando implementamos um toolbarItem no curso iOS com SwiftUI: implementando navegação e gerenciamento de estados.

Primeiro, adicione esta linha no topo da sua struct ScheduleAppointmentView:

@Environment(\.presentationMode) var presentationMode
COPIAR CÓDIGO
Essa variável permite que você controle a maneira como a view é apresentada. Agora, no seu alerta, atualize a ação do botão "Ok" para:

Button(action: {
    presentationMode.wrappedValue.dismiss()
}, label: {
    Text("Ok")
})
COPIAR CÓDIGO
A função dismiss() faz exatamente o que parece: ela descarta a view atual e retorna à view anterior.

Dessa forma, sempre que o usuário clicar em "Ok" após receber a notificação do alerta, ele será redirecionado automaticamente para a tela anterior. Isso melhora a experiência do usuário ao tornar a navegação do app mais intuitiva e fluida.

@@07
Implementando a TabView

Agora, vamos implementar uma TabView ao nosso aplicativo.
O que é TabView?
TabView é um componente visual que representa uma interface de navegação baseada em abas. Normalmente, essas abas estão localizadas na parte inferior do aplicativo. Assim, a pessoa usuária pode alternar entre as telas de uma maneira muito mais simples.

Nós teremos uma aba para representar a HomeView, tela que mostra todas as pessoas especialistas, e outra aba para representar uma tela que vai mostrar todas as consultas do paciente.

Criando a tela de consultas
Vamos começar criando a View para mostrar todas as consultas. Dentro da pasta "Views", criaremos um novo arquivo "SwiftUI View"e chamá-lo de MyAppointmentsView, ou seja, minhas consultas.

Dentro do MyAppointmentsView, removeremos o Text e criaremos um VStack e nele, um texto provisório: Text("Minhas consultas"). No VStack, adicionaremos os modificadores de navegação, por exemplo, o NavigationTitle, cujo valor será "Minhas consultas". Ele ficará em formato grande, portanto .navigationBartTittleDisplayMode(.large).

import SwiftUI

struct MyAppointmentsView: View {
   var body: some View {
         VStack {
                 Text("Minhas consultas")
             }
             .navigationTitle("Minhas consultas")
             .navigationBarTitleDisplayMode(.large)
     }
}
COPIAR CÓDIGO
Criando as abas
Agora que temos a tela de consultas criada, podemos fazer a TabView no arquivo ContentView, que é aquele arquivo que não manipulamos até agora. Portanto, vamos remover todo o VStack, inclusive o padding, e escreveremos TabView.

import SwidtUI

struct ContentView: View {
    var body: some View {
            TabView
        }
  }

}
COPIAR CÓDIGO
Dentro dessa TabView, definiremos as abas que serão exibidas. A primeira será a HomeView e a segunda, a MyAppointmentsView.

import SwidtUI

struct ContentView: View {
    var body: some View {
            TabView {
                    HomeView()
                        
                        MyAppointmentsView()
        }
  }

}
COPIAR CÓDIGO
Se observarmos nosso Preview, nossa primeira página está funcionando, mas não tem nenhum texto ou imagem. Portanto, criaremos um texto e uma imagem para cada aba. Para isso, no HomeView, vamos adicionar um modificador chamado .TabItem, abrir chaves passando Label e selecionar a opção title:icon. O title é um Text() e o icon é uma Image.

import SwidtUI

struct ContentView: View {
    var body: some View {
            TabView {
                    HomeView()
                            .tabItem {
                                   Label(
                                          title: { Text("Label") },
                                                icon> { Image(systemName: "42.circle") }
                                     )
                              }
                        
                        MyAppointmentsView()
        }
  }

}
COPIAR CÓDIGO
Para o title, vamos passar um Text("Home") e para o icon, passaremos Image(systemName: "house"), sendo que house representará o ícone de uma pequena casa.

import SwidtUI

struct ContentView: View {
    var body: some View {
            TabView {
                    HomeView()
                            .tabItem {
                                   Label(
                                          title: { Text("Home") },
                                                icon> { Image(systemName: "house") }
                                     )
                              }
                        
                        MyAppointmentsView()
        }
  }

}
COPIAR CÓDIGO
Agora, precisamos fazer o mesmo para o MyAppointmentView():

import SwidtUI

struct ContentView: View {
    var body: some View {
            TabView {
                    HomeView()
                            .tabItem {
                                   Label(
                                          title: { Text("Home") },
                                                icon> { Image(systemName: "house") }
                                     )
                              }
                        
                        MyAppointmentsView()
                            .tabItem {
                                    Label(
                                            title: { Text("Minhas consultas")}
                                                icon: {Image(systemName: "calendar") }
        }
  }

}
COPIAR CÓDIGO
Refinando a HomeView
Com isso, já é possível navegar entre a tela HomeView e as consultas. No entanto, a TabView ainda apresenta alguns problemas com a navegação. Precisaremos agrupar cada View dentro do TabView em uma NavigationStack.

Para isso, após o TabView, escreveremos NavigationStack e moveremos nossa HomeView() para dentro do NavigationStack e manteremos a propriedade NavigationStack.

import SwidtUI

struct ContentView: View {
    var body: some View {
            TabView {
                   NavigationStack {
                       HomeView()
                     }
                     .tabItem {
                                   Label(
                                          title: { Text("Home") },
                                                icon> { Image(systemName: "house") }
                                     )
                              }
                        
                        MyAppointmentsView()
                            .tabItem {
                                    Label(
                                            title: { Text("Minhas consultas")}
                                                icon: {Image(systemName: "calendar") }
        }
  }

}
COPIAR CÓDIGO
Vamos fazer o mesmo para o MyAppointmmentsView(): moveremos a declaração do MyAppointmentsView para dentro da NavigationStack.

import SwidtUI

struct ContentView: View {
    var body: some View {
            TabView {
                   NavigationStack {
                       HomeView()
                     }
                     .tabItem {
                                   Label(
                                          title: { Text("Home") },
                                                icon> { Image(systemName: "house") }
                                     )
                              }
                            
                     NavigationStack						
                            MyAppointmentsView()
                     }
                            .tabItem {
                                    Label(
                                            title: { Text("Minhas consultas")}
                                                icon: {Image(systemName: "calendar") }
        }
  }

}
COPIAR CÓDIGO
O próximo passo é identar todo nosso código.

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationStack {
                HomeView()
            }
            .tabItem {
                Label(
                    title: { Text("Home") },
                    icon: { Image(systemName: "house") }
                )
            }
            
            NavigationStack {
                MyAppointmentsView()
            }
            .tabItem {
                Label(
                    title: { Text("Minhas consultas") },
                    icon: { Image(systemName: "calendar") }
                )
            }
        }
    }
}
COPIAR CÓDIGO
A ContentView não está sendo chamada de nenhum lugar. Se acessarmos o arquivo VollmedApp, notaremos que estamos chamando a HomeView().

import SwiftUI

@main
struct vollmedApp: App {
    var body: some Scene {
            windowGroup {
                    NavigationStack {
                            HomeView()
                        }
                }
        }
}
COPIAR CÓDIGO
Agora, vamos apagar o NavigationStack junto com a HomeView, porque já colocamos a Navigation Stack em outras Views, e chamaremos a contentView(), que era exatamente o que fazemos ao criar uma aplicação SwiftUI.

import SwiftUI

@main
struct vollmedApp: App {
    var body: some Scene {
        windowGroup {
            ContentView
            }
        }
    }
}
COPIAR CÓDIGO
Demonstração e Testes
Por fim, executaremos e verificaremos se tudo está funcionando corretamente.

Temos TabView na seção inferior do nosso aplicativo, representando a tela "Home". Se alterarmos para "Minhas Consultas", a tela de "Minhas Consultas", ou seja, a MyAppointmentsView, é chamada.

Próximos passos
Agora que já temos esse fluxo funcionando, vamos começar a construção da tela de "Minhas Consultas", fazendo uma nova requisição para a API e obter todas as consultas de um paciente.

Nos encontramos no próximo vídeo!

@@08
Faça como eu fiz: agendando consulta com requisição POST

Vamos colocar em prática o que você assistiu durante os vídeos!
1 - Implementando a requisição POST:

a) Defina e implemente a função para agendar uma consulta, que envia uma requisição POST:
func scheduleAppointment(specialistID: String, patientID: String, date: String) async throws -> ScheduleAppointmentResponse? { ... }
COPIAR CÓDIGO
2 - Chamando a função para realizar o agendamento:

a) Estabeleça o patientID:
let patientID = "id-do-paciente-que-veio-do-insomnia"
COPIAR CÓDIGO
b) Passe o specialistID para a ScheduleAppointmentView:
ScheduleAppointmentView(specialistID: specialist.id)
COPIAR CÓDIGO
c) Chame a função para agendar o compromisso:
        func scheduleAppointment() async { ... }
        
        // Na ação do botão:
        Task {
            await scheduleAppointment()
        }
COPIAR CÓDIGO
3 - Mostrando um alerta para o usuário:

a) Adicione propriedades para controlar o alerta:
@State private var showAlert = false
@State private var isAppointmentScheduled = false
COPIAR CÓDIGO
b) Modifique a função de agendamento para definir o estado do alerta:
func scheduleAppointment() async { ... showAlert = true ... }
COPIAR CÓDIGO
c) Mostre um alerta com base no sucesso ou fracasso do agendamento:
        .alert(isAppointmentScheduled ? "Sucesso!" : "Ops, algo deu errado!", isPresented: $showAlert, presenting: isAppointmentScheduled) { ... }
COPIAR CÓDIGO
4 - Implementando a TabView:

a) Crie uma TabView contendo duas tabs - Home e Minhas consultas:
TabView { ... }
COPIAR CÓDIGO
b) Defina a view MyAppointmentsView:
struct MyAppointmentsView: View { ... }
COPIAR CÓDIGO
c) Integre sua TabView no ponto de entrada do aplicativo:
struct VollmedApp: App { ... }
COPIAR CÓDIGO
Bons estudos!

A capacidade de enviar informações para um back-end é fundamental em muitos aplicativos . Ao implementar a requisição POST, você não apenas aprendeu a técnica, mas também a melhor forma de fornecer feedback ao usuário. Lembre-se de sempre de pensar na experiência do usuário ao desenvolver novas funcionalidades.
Dê uma olhada no progresso do projeto e no código até agora no link para a branch no GitHub.

Sempre que tiver dúvidas ou desafios, saiba que estamos aqui para ajudar! Não hesite em contatar-nos pelo fórum, discord ou qualquer outro canal de suporte.

https://github.com/alura-cursos/swiftui-vollmed-crud/tree/aula-04

@@09
O que aprendemos?

Nesta aula, você aprendeu a:
Implementar a requisição POST para enviar dados ao servidor;
Mostrar alertas ao usuário após certas ações, melhorando o feedback;
Integrar e utilizar a TabView em seu projeto.
Excelente! O processo de agendamento está funcional.

Até a próxima aula!

#### 08/04/2024

@05-Layout da tela de consultas

@@01
Projeto da aula anterior

Você pode revisar o seu código e acompanhar o passo a passo do desenvolvimento do nosso projeto através desta branch no Github e, se preferir, pode baixar o projeto da aula anterior.
Bons estudos!

https://github.com/alura-cursos/swiftui-vollmed-crud/tree/aula-04

https://github.com/alura-cursos/swiftui-vollmed-crud/archive/refs/heads/aula-04.zip

@@02
Criando a requisição para obter todas as consultas de um paciente

Vamos implementar a tela de "Minhas consultas". Precisamos fazer uma nova requisição com o verbo GET para obter todas as consultas de determinado paciente.
Obtendo consultas de paciente
Voltamos ao Insomnia para analisar como essa requisição GET funciona. No painel da lateral esquerda, vamos em "Paciente > Consultas de um paciente". Sua rota é /paciente/:id/consultas.

Vamos pegar o ID de um paciente. Para isso, entramos na requisição denominada "Todos os pacientes", copiamos o ID do Lucas e o colamos no lugar de :id na rota "Consultas de um paciente".

localhost:3000/paciente/e34db020-3445-4fbf-a744-ba578754da04/consultas
COPIAR CÓDIGO
Após enviar a requisição, ela retorna um array de consultas com atributos como id, data e especialista, que é um tipo Specialist:

[
    {
        "id": "25aeee0a-2d94-41c6-82c3-d98e42236a61",
        "data": "2023-10-16T13:15:00.000Z",
        "especialista": {
            "nome": "Dr. João da Silva",
            "crm": "12345",
            "imagem": "https://images.unsplash.com/photo-
1637059824899-a441006a6875?ixlib=rb-
4.0.3&ixid=M3wxMjA3 fDB8MHxwaG90by1wYWdlfHx8fGVu fDB8fHx8f
A%3D%3D&auto=format&fit=crop&w=752&q=80",
            "especialidade": "Cardiologia",
            "email": "joao.silva@example.com",
            "telefone": "(11) 99999-9999",
            "id": "b6156d16-8329-4690-980c-eb3b30eaa585"
        }
    },
COPIAR CÓDIGO
Voltando para o Xcode, é necessário criar um novo modelo para representar este retorno. Clicando com o botão direito na pasta "Models", vamos selecionar "New File > Switch File" para criar um arquivo chamado Appointment.

Vamos definir uma struct Appointment, que vai conformar ao protocolo Identifiable e também ao Codable.

Em seguida, vamos criar uma constante id, que é do tipo String, uma constante date do tipo String, e uma constante specialist do tipo Specialist.

Agora, vamos para o enum CodingKeys que será do tipo String e que irá se adequar ao protocolo Coding Keys.

Entre chaves, vamos passar case id que não irá mudar. Também passaremos case date que na nossa API é tratado como data. Por fim, o case specialist que é tratado como especialista. Com isso, fizemos a conversão.

Appointment.swift:
import Foundation

struct Appointment: Identifiable, Codable {
    let id: String
    let date: String
    let specialist: Specialist
    
    enum CodingKeys: String, CodingKey {
        case id
        case date = "data"
        case specialist = "especialista"
    }
}
COPIAR CÓDIGO
Temos a estrutura criada, agora vamos implementar essa requisição efetivamente.

Para isso, vamos navegar para o arquivo "Services > WebService.swift. Acima da função scheduleAppointment(), vamos criar outra função chamada getAllAppointmentsFromPatient para pegar todas as consultas de um paciente.

Como parâmetro, passaremos o ID do paciente, ou seja, patientID que é do tipo String. Em seguida, vamos passar async throws onde o retorno será um array do tipo Appointment opcional.

No corpo da função, vamos começar criando um let para o endpoint. Ele será igual à baseURL mais uma string /paciente/ mais o patientID mais a string /consultas. Essa é a rota assim como verificamos no Insomnia. Você também poderia fazer uma interpolação de variáveis.

Agora, vamos tratar a URL. Para isso, basta copiar o bloco de guard let url da função scheduleAppintment(), da linha 27 a 30. Será exatamente o mesmo código.

Em seguida, precisamos chamar o URLSession para fazer a chamada de rede. Basta digitar let(data, _) para desestruturar a tupla. Isso será igual à try await URLSession.shared.data(), passando from: url.

Na próxima linha, escrevemos let appointments igual à try JSONDecoder() para decodificar os dados. Depois, acrescentamos .decode(), passando o type como [Appointment].self e o from como data.

Desse modo, decodificamos os dados vindos do JSON para uma instância do tipo Appointment. Colocamos Appointment entre colchetes, pois é um array de consultas já que são várias consultas.

Por fim, vamos dar um return appointments.

WebService.swift:
func getAllAppointmentsFromPatient(patientID: String) async throws -> [Appointment]? {
    let endpoint = baseURL + "/paciente/" + patientID + "/consultas"
    
    guard let url = URL(string: endpoint) else {
        print("Erro na URL!")
        return nil
    }
    
    let (data, _) = try await URLSession.shared.data(from: url)
    
    let appointments = try JSONDecoder().decode([Appointment].self, from: data)
    
    return appointments
}
COPIAR CÓDIGO
Agora, vamos chamar essa função na MyAppointmentsView.

Primeiro, vamos instanciar o WebService. Por isso, vamos criar uma constante let service igual à WebService().

Também precisaremos modificar a própria View. Em vez de um VStack, adicionaremos uma ScrollView(), pois podemos rolar a tela caso haja várias consultas.

Vamos passar o atributo showIndicators como false, porque não queremos que mostre a barra de rolagem.

Além disso, vmaos criar uma função assíncrona chamada getAllAppointments().

Ela será chamada assim que a View aparecer. Então, vamos adicionar um modificador de propriedade .onAppear logo após navigationBarTitleDisplayMode.

No onAppear, adicionaremos contexto assíncrono como Task. E dentro dele, chamareremos o await getAllAppointments().

Também vamos criar uma variável de estado logo após a instância do WebService(). Basta digitar um @State private var e nomear como appointments. Ela será um array de Appointment. E vamos inicializá-la com um array vazio, ou seja, [].

MyAppointmentsView.swift:
struct MyAppointmentsView: View {

    let service = WebService()

    @State private var appointments: [Appointment] = []

    func getAllAppointments() async {
    }

    var body: some View {
        ScrollView(showsIndicators: false) {
            Text("Minhas consultas")
        }
        .navigationTitle("Minhas consultas")
        .navigationBarTitleDisplayMode(.large)
        .onAppear {
            Task {
                await getAllAppointments()
            }
        }
    }
}
COPIAR CÓDIGO
Dentro da ScrollView(), vamos remover esse Text(). No lugar, vamos escrever um ForEach, porque agora queremos que seja mostrada uma lista de SpecialistCardView, assim como temos na HomeView.

Qual será a variável que passaremos no ForEach()? Será appointments. Vamos abrir as chaves. Para cada appointment, criaremos uma variável chamada appointment in.

Dentro do ForEach, chamaremos o SpecialistCardView(), passando o appointment.specialist, porque a API retorna o objeto especialista completo.

O preview continua em branco, porque o array está vazio. Só vamos adicionar um .padding() após essa navigationBarTitleDisplayModel, para dar um espaçamento.

Agora, vamos implementar a função getAllAppointments(). Começaremos com o do-catch, afinal essa função pode lançar erros.

Dentro do catch, faremos um print() da string Ocorreu um erro ao obter consultas, interpolando a variável \(error), a qual temos acesso.

Dentro do do, faremos um if let appointments, já que é um retorno opcional, igual à try await service.getAllAppointmentsFromPatient().

E qual é o id do paciente? É o patientID que está definido dentro do arquivo Webservice de forma temporária.

Como é uma condicional, abrimos e fechamos chaves. Dentro dessa condicional, escreveremos self.appointments é igual a appointments. Estamos atualizando a variável de estado.

struct MyAppointmentsView: View {
    
    let service = WebService()
    
    @State private var appointments: [Appointment] = []
    
    func getAllAppointments() async {
        do {
            if let appointments = try await service.getAllAppointmentsFromPatient(patientID: patientID) {
                self.appointments = appointments
            }
        } catch {
            print("Ocorreu um erro ao obter consultas: \(error)")
        }
    }
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            ForEach(appointments) { appointment in
                SpecialistCardView(specialist: appointment.specialist)
            }
        }
        .navigationTitle("Minhas consultas")
        .navigationBarTitleDisplayMode(.large)
        .padding()
        .onAppear {
            Task {
                await getAllAppointments()
            }
        }
    }
}
COPIAR CÓDIGO
Vamos apertar "Command+R" para verificar se o código está funcionando.

No aplicativo, vamos para a aba "Minhas consultas". As consultas já apareceram, como esperado.

Mas note, ainda aparece o botão "Agendar Consulta". Isso não faz muito sentido se a consulta já está agendada. Além disso, seria interessante se mostrássemos também qual é o horário dessa consulta.

Então, te espero para o próximo vídeo para implementarmos essas funcionalidades.

@@03
Mudanças no retorno na API

Considere a struct Appointment desenvolvida nesta aula:
struct Appointment: Identifiable, Codable {
    let id: String
    let date: String
    let specialist: Specialist

    enum CodingKeys: String, CodingKey {
        case id
        case date = "data"
        case specialist = "especialista"
    }
}
COPIAR CÓDIGO
Suponha que a API seja atualizada e agora forneça informações adicionais sobre o paciente em cada consulta, incluindo o nome e o número de telefone. Você precisa atualizar o modelo Appointment para incluir essas informações.

Dada essa nova necessidade, qual das seguintes opções é a implementação mais adequada?

    struct Appointment: Identifiable, Codable {
        let id: String
        let date: String
        let specialist: Specialist
    
        enum CodingKeys: String, CodingKey {
            case id
            case date = "data"
            case specialist = "especialista"
                    case patientName = "nomePaciente"
            case patientPhone = "telefonePaciente"
        }
    }
 
Alternativa correta
    struct Appointment: Identifiable, Codable {
        let id: String
        let date: String
        let specialist: Specialist
        let patientName: String
        let patientPhone: String
    
        enum CodingKeys: String, CodingKey {
            case id
            case date = "data"
            case specialist = "especialista"
            case patientName = "nomePaciente"
            case patientPhone = "telefonePaciente"
        }
    }
 
Esta é uma abordagem correta para adicionar as novas propriedades. Ela inclui o nome e o telefone do paciente diretamente no modelo Appointment e define os CodingKeys adequados para mapear os nomes das propriedades para os nomes dos campos JSON retornados pela API.
Alternativa correta
    struct Appointment: Identifiable, Codable {
        let id: String
        let date: String
        let specialist: Specialist
        let patient: Patient
    }
    
    struct Patient: Codable {
        let name: String
        let phone: String
    }
 
Alternativa correta
    struct Appointment: Identifiable, Codable {
        let id: String
        let date: String
        let specialist: Specialist
        let patientName: String?
        let patientPhone: String?
    }
    
    enum CodingKeys: String, CodingKey {
        case id
        case date = "data"
        case specialist = "especialista"
        case patientName = "nomePaciente"
        case patientPhone = "telefonePaciente"
    }
 
A inclusão de valores opcionais (usando ?) para os novos campos pode não ser a abordagem ideal, a menos que a API possa ocasionalmente omitir esses campos. Além disso, o enum CodingKeys está fora do escopo do struct, tornando-o inválido.

@@04
Adicionando botões de remarcação e cancelamento de uma consulta

Agora precisamos fazer duas alterações na nossa aplicação.
Inicialmente, na tela "Minhas Consultas", não queremos mais mostrar o botão "Agendar Consulta", pois já não é relevante. Em seu lugar, queremos exibir dois botões diferentes, um ao lado do outro. Um botão para remarcar e outro para cancelar a consulta.

Seria interessante mostrarmos também a data e a hora da consulta. Lembram da função que criamos, que formata as datas para uma string mais legível para a pessoa usuária? Este é o momento perfeito para utilizá-la.

Botões de remarcar e cancelar consulta
Como vamos fazer isso? Na nossa opinião, a abordagem mais flexível é passar um parâmetro opcional ao SpecialistCardView. Após var specialist, vamos começar definindo uma variável var chamada appointment, que será do tipo Appointment opcional.

SpecialistCardView.swift:
struct SpecialistCardView: View {
    
    var specialist: Specialist
    var appointment: Appointment?

    // código omitido…
}
COPIAR CÓDIGO
Isso significa que, se passamos um agendamento para o SpecialistCardView, os dois botões irão aparecer, além da data e hora da consulta.

Vamos agora fazer uma verificação. No NavigationLink nesse mesmo arquivo, é onde temos o ButtonView() com o texto "Agendar Consulta".

Vamos criar uma verificação acima disso: if let appointment = appointment. Contudo, vale lembrar que nas versões mais recentes do Swift não é mais preciso igualar uma variável.

Então, poderíamos simplesmente escrever if let appointment. Estamos tentando desembrilhar a variável opcional.

Se tivermos um agendamento, vamos criar um contêiner horizontal HStack que terá dois botões. Portanto, teremos um Button() com uma action e label.

O primeiro botão tem como action um simples print() da string Botão de remarcar pressionado!. Posteriormente, vamos alterar isso para um NavigationLink, mas não vamos focar nisso agora.

Enquanto a label desse botão será uma ButtonView(), para a qual passaremos o text como Remarcar.

Vamos copiar este botão e colá-lo logo abaixo. Agora, a ação do segundo botão será um print() de Botão de cancelar pressionado. E, na ButtonView(), o texto será Cancelar, ao invés de Remarcar.

Agora passaremos o parâmetro buttonType para ButtonView(), porque vamos passar o tipo .cancel, para que fique com a cor vermelha.

Depois, vamos criar um else logo após o if. Basta mover o NavigationLink do botão de "Agendar Consulta" para dentro desse else, usando "Command+X" e "Command+V".

    if let appointment {
        HStack {
            Button(action: {
                print("Botão de remarcar pressionado!")
            } label: {
                ButtonView(text: "Remarcar")
            })
            
            Button(action: {
                print("Botão de cancelar pressionado!")
            }, label: {
                ButtonView(text: "Cancelar", buttonType: .cancel)
            })
        }
    } else {
        NavigationLink {
            ScheduleAppointmentView(specialistID: specialist.id)
        } label: {
            ButtonView(text: "Agendar consulta")
        }
    }
}
COPIAR CÓDIGO
Data e hora da consulta
Agora, dentro do VStack() com o nome do especialista, após o texto de specialist.specialty que é a especialidade do médico, também faremos uma verificação.

Para isso, digitamos if let appointment. Entre chaves, colocamos um novo Text() que será appointment.date.convertDateStringToReadableDate().

Desse modo, o novo texto será a data da consulta, convertida pela função que criamos na extensão de uma String.

Em seguida, vamos adicionar um modificador .bold(), para que o texto fique em negrito.

VStack(alignment: .leading, spacing: 8.0) {
    Text(specialist.name)
        .font(.title3)
        .bold()
    Text(specialist.specialty)
    if let appointment {
        Text(appointment.date.convertDateStringToReadableDate())
            .bold()
    }
}
COPIAR CÓDIGO
Agora, vamos voltar em MyAppointmentsView. Na linha 29, quando chamamos o SpecialistCardView(), após passar o specialist, também passaremos o appointment e a variável appointment.

MyAppointmentsView.swift:
ScrollView(showsIndicators: false) {
    ForEach(appointments) { appointment in
        SpecialistCardView(specialist: appointment.specialist, appointment: appointment)
    }
}
COPIAR CÓDIGO
Com isso, a tela de pré-visualização já nos mostra tanto o botão de remarcar, quanto o botão de cancelar, e também o texto com a data da consulta.

Pronto, agora temos uma tela totalmente funcional, mostrando os cards de SpecialistCardView, de forma totalmente adaptável e reutilizável.

@@05
Adaptando a tela de agendamento para ser dinâmica

Vamos começar a criar a tela de reagendamento de uma consulta. Essa tela será idêntica à tela de agendamento. Teremos o texto "selecione a data e horário", e também um calendário, com algumas exceções.
Por exemplo, na ScheduleAppointmentView, que é a tela de agendamento, tem um botão "Agendar Consulta". Mas, na tela de reagendamento, será "Remarcar Consulta".

Entretanto, são extremamente parecidas. Por isso, ao invés de criar uma nova view chamada RescheduleApoointmentView, vamos fazer algumas modificações na ScheduleAppointmentView, para que ela trate tanto do agendamento quanto do reagendamento.

Mas, como faremos isso?

Reagendamento da consulta
Primeiro, vamos passar um novo parâmetro para a tela de ScheduleAppointmentView. Vamos criar uma variável var chamada isRescheduleView, do tipo booleano.

Em seguida, criaremos um construtor para que, caso essa variável isRescheduleView não seja passada como parâmetro, o valor dela deve ser falso por padrão.

Vamos definir o init(). Como parâmetro, vamos passar specialistID do tipo String e isRescheduleView do tipo Bool, mas ela terá um valor padrão. Por isso, vamos acrescentar que ela é igual à false.

Dentro do construtor, vamos colocar self.specialistID igual à specialistID e self.isRescheduleView igual à isRescheduleView.

Agora vamos fazer algumas modificações. Vamos criar outra função chamada rescheduleAppointment(), que será assíncrona.

ScheduleAppointmentView.swift:
struct ScheduleAppointmentView: View {
    
    let service = WebService()
    var specialistID: String
    var isRescheduleView: Bool
    
    @State private var selectedDate = Date()
    @State private var showAlert = false
    @State private var isAppointmentScheduled = false
    
    init(specialistID: String, isRescheduleView: Bool = false) {
        self.specialistID = specialistID
        self.isRescheduleView = isRescheduleView
    }

    func rescheduleAppointment() async {
    } 

    // código omitido…
}
COPIAR CÓDIGO
Na linha 61, onde definimos o botão "Agendar Consulta", vamos usar um operador ternário. Após text:, vamos verificar isRescheduleView ?. Se for verdadeiro, vamos mostrar a string Reagendar Consulta. Caso contrário, acrescentamos dois-pontos e mantemos Agendar Consulta.

Assim, verificamos se isRescheduleView é verdadeiro. Se sim, entramos na primeira condição que mostra o texto Reagendar consulta. Senão, entramos na outra condição e vai mostrar o texto Agendar Consulta.

Faremos o mesmo para o navigationTitle() definido na linha 65. Podemos até copiar o operador ternário de isRescheduleView com as strings. No navigationTitle(), apagamos a string antiga e colamos a nova operação.

Mas, ainda temos outros lugares para verificar se a view é de reagendamento ou agendamento. Dentro da ação do botão, dentro do Task do contexto assíncrono, também faremos essa verificação com if e else.

Se isRescheduleView for verdadeira, colocaremos um await e chamaremos a função de reagendamento, rescheduleAppointment(). Senão, colocamos um else onde passamos um await e chamamos a função de agendamento, scheduleAppointment().

    Button(action: {
        Task {
            if isRescheduleView {
                await rescheduleAppointment()
            } else {
                await scheduleAppointment()
            }
        }
    }, label: {
        ButtonView(text: isRescheduleView ? "Reagendar consulta" : "Agendar consulta")
    })
}
.padding()
.navigationTitle(isRescheduleView ? "Reagendar consulta" : "Agendar consulta")
.navigationBarTitleDisplayMode(.large)
COPIAR CÓDIGO
Outro lugar de verificação é no .alert(), porque nas mensagens do alerta, temos a string a consulta foi agendada com sucesso.

Então, devemos fazer uma interpolação de variável dentro do Text() do if da mensagem. Após a palavra foi, vamos colocar uma barra invertida e parênteses para acrescentar novamente um operador ternário.

Com isso, vamos verificar se isRescheduleView é verdadeira. Se sim, a string será "reagendada". Caso contário, será "agendada". Podemos remover a palavra "agendada" que estava duplicada fora da interpolação.

De modo semelhante, faremos o mesmo no else, onde está a mensagem de erro. Copiamos a interpolação, mas trocamos as strings para "reagendar" e "agendar", respectivamente.

.alert(isAppointmentScheduled ? "Sucesso!" : "Ops, algo deu errado!", isPresented: $showAlert, presenting: isAppointmentScheduled) { _ in
    Button(action: {}, label: {
        Text("Ok")
    })
} message: { isScheduled in
    if isScheduled {
        Text("A consulta foi \(isRescheduleView ? "reagendada" : "agendada") com sucesso!")
    } else {
        Text("Houve um erro ao \(isRescheduleView ? "reagendar" : "agendar") sua consulta. Por favor tente novamente ou entre em contato via telefone.")
    }
}
COPIAR CÓDIGO
Com isso, temos todas as modificações necessárias. Entretanto, temos mais um parâmetro para lidar.

Na rota Atualiza consulta no Insomnia, podemos verificar que deve-se passar também o ID da consulta:

localhost:3000/consulta/:id
COPIAR CÓDIGO
Se voltarmos ao Xcode, notamos que a ScheduleAppointmentView não tem esse ID da consulta. Somente adicionamos um parâmetro isRescheduleView indicando se a tela em questão é de marcação ou de remarcação.

Portanto, vamos acrescentar mais um parâmetro, que chamaremos de appointmentID. Ele será do tipo String e também opcional.

Agora, é preciso fazer algumas modificações no construtor. Vamos incluir o atributo appointmentID, que é uma String opcional. Se não for passado um valor, ela terá o valor nil por padrão.

Por fim, vamos passar o self.appointmentID igual ao appointmentID.

struct ScheduleAppointmentView: View {
    
    let service = WebService()
    var specialistID: String
    var isRescheduleView: Bool
    var appointmentID: String?

    // código omitido…
    
    init(specialistID: String, isRescheduleView: Bool = false, appointmentID: String? = nil) {
        self.specialistID = specialistID
        self.isRescheduleView = isRescheduleView
        self.appointmentID = appointmentID
    }

    // código omitido…
}
COPIAR CÓDIGO
Agora precisamos passar este appointmentID para a ScheduleAppointmentView, quando estivermos na tela de "Minhas consultas". Para isso, vamos ao arquivo SpecialistaCardView, pois precisamos fazer uma modificação na action do botão de remarcar consulta.

Em vez da função de print("Botão de remarcar pressionado!"), queremos que este botão chame a ScheduleAppointmentView.

Por isso, vamos substituir o Button() por um NavigationLink, passando destination.

Qual a tela de destino? Será ScheduleAppointmentView(). O specialistID será appointment.specialist.id. Mas, na verdade, também temos o specialist, portanto, você poderia passar somente specialist.id. Fica a seu critério.

Agora, vamos passar o parâmetro isRescheduleView, que será true e também o parâmetro appointmentID, que será appointment.id.

Como label, vamos passar um ButtonView() com o texto Remarcar.

SpecialistaCardView.swift:
if let appointment {
    HStack {
        NavigationLink {
            ScheduleAppointmentView(specialistID: appointment.specialist.id, isRescheduleView: true, appointmentID: appointment.id)
        } label: {
            ButtonView(text: "Remarcar")
        }
        
        // código omitido…
    }
COPIAR CÓDIGO
Vamos testar se o código funciona. Após executar o código, vamos em "Minhas consultas" para tentar remarcar uma consulta do Dr. João da Silva.

Com isso, vamos para uma tela intitulada "Reagendar consulta" que contém o botão de "Reagendar consulta". Está funcionando da maneira esperada.

Para garantir que tudo está funcionando corretamente, vamos voltar na ScheduleAppointmentView.

Dentro dessa função rescheduleAppointment(), vamos desembrulhar a variável appointmentID, porque ela é opcional. Então, colocaremos guard let appointmentID else.

Dentro das chaves, vamos colocar um print("Houve um erro ao obter o ID da consulta."), porque isso cairá no caso de else. Em seguida, iremos simplesmente fazer um return.

Em versões mais recentes do Swift, você não precisa fazer guard let id = appointmentID, só de fazer guard let appointmentID, a variável já será desembrulhada.

Por fim, fora das chaves, vamos dar um print(appointmentID) apenas para verificar se está funcionando corretamente.

ScheduleAppointmentView.swift:
func rescheduleAppointment() async {
    guard let appointmentID else {
        print("Houve um erro ao obter o ID da consulta")
        return
    }
    print(appointmentID)
}
COPIAR CÓDIGO
Em "Minhas Consultas", vamos remarcar uma consulta com o Dr. João da Silva, clicando em "Remarcar". Em seguida, vamos clicar em "Reagendar Consulta".

25aeee0a-2d94-41c6-82c3-d98e42236a61
É impresso o ID dessa consulta. Está tudo funcionando conforme o esperado.

Agora, tudo o que precisamos fazer é implementar a requisição em si. Te esperamos no próximo vídeo.

@@06
Faça como eu fiz: tela de consultas de um paciente

Hora de colocar seus conhecimentos em prática com o que vimos durante os vídeos!
1 - Criando a requisição para obter todas as consultas de um paciente:

a) Defina o modelo Appointment e a função para obter todas as consultas de um paciente:
struct Appointment: Identifiable, Codable { ... }

func getAllAppointmentsFromPatient(patientID: String) async throws -> [Appointment]? { ... }
COPIAR CÓDIGO
2 - Adicionando botões de remarcação e cancelamento de uma consulta:

a) Estenda o SpecialistCardView para aceitar um Appointment opcional e mostrar botões diferentes com base na presença de uma consulta:
        struct SpecialistCardView: View {
            var specialist: Specialist
            var appointment: Appointment?
            ...
        }
COPIAR CÓDIGO
b) Altere o uso do SpecialistCardView na tela de consultas para passar a consulta:
SpecialistCardView(specialist: appointment.specialist, appointment: appointment)
COPIAR CÓDIGO
3 - Adaptando a tela de agendamento para ser dinâmica:

a) Adicione uma propriedade isRescheduleView à ScheduleAppointmentView para determinar se a visualização está sendo usada para reagendar ou agendar uma nova consulta.
b) Com base nessa propriedade, mostre o título e o texto do botão apropriados. Além disso, modifique o alerta também:
.navigationTitle(isRescheduleView ? "Reagendar consulta" : "Agendar consulta")

ButtonView(text: isRescheduleView ? "Reagendar consulta" : "Agendar consulta")
COPIAR CÓDIGO
c) Adapte a lógica do botão de ação para lidar com reagendamento ou agendamento com base na flag isRescheduleView.
Bons estudos!

A capacidade de adaptar a interface do usuário com base no estado ou nas propriedades do aplicativo é uma habilidade essencial para criar aplicativos dinâmicos e interativos. Com essas modificações, a aplicação agora oferece uma experiência de usuário mais flexível e intuitiva.
Fique à vontade para experimentar mais combinações e fluxos de UI para melhorar ainda mais a experiência do usuário. E, como sempre, se tiver dúvidas, estou aqui para ajudar!

Dê uma olhada em como o projeto se parece agora no link para a branch no GitHub.

Até a próxima aula!

https://github.com/alura-cursos/swiftui-vollmed-crud/tree/aula-05

@@07
O que aprendemos?

Nesta aula, você aprendeu a:
Criar uma requisição para obter todas as consultas associadas a um paciente;
Adicionar botões para a remarcação e cancelamento de consultas;
Adaptar a tela de agendamento para ser dinâmica e reutilizável.
Continue assim! O aplicativo está ficando mais completo.

Vejo você na última aula!

#### 09/04/2024

@06-Requisições PATCH e DELETE

@@01
Projeto da aula anterior

Você pode revisar o seu código e acompanhar o passo a passo do desenvolvimento do nosso projeto através desta branch no Github e, se preferir, pode baixar o projeto da aula anterior.
Bons estudos!

https://github.com/alura-cursos/swiftui-vollmed-crud/tree/aula-05

https://github.com/alura-cursos/swiftui-vollmed-crud/archive/refs/heads/aula-05.zip

@@02
Implementando a requisição PATCH

Vamos entender como funciona a requisição para remarcarmos uma consulta. Voltaremos ao Insomnia e, na coluna da esquerda, acessaremos "Consulta > Atualiza consulta" para abrimos nossa requisição. A Atualiza consulta possui o verbo PATCH.
Quando lidamos com a atualização de informações, temos dois verbos principais: PUT e PATCH. Estamos utilizando PATCH em vez de PUT porque estamos atualizando apenas uma informação, no caso, a data da consulta. Deste modo, ao atualizarmos uma informação em um arquivo JSON, utilizamos o PATCH ao invés do PUT.

Nessa requisição JSON, enviamos um único atributo: a data que representa a nova data da consulta. Para isso, a URL é composta de consulta/:id, no caso, estamos passando o ID da minha consulta.

PATCH localhost:3000/consulta/:id
{
"data": "2023-10-15T13:45/:00.000"
}
COPIAR CÓDIGO
Vamos testar essa requisição. Para isso, enviaremos a requisição Lista todas consultas e, com o resultado, copiaremos o ID do primeiro registro, selecionando o ID e pressionando "Cmd + C". Depois, voltamos para requisição Atualiza consulta e colaremos o ID no endereço, com "Cmd + V".

Entretanto, a data que está no JSON da nossa requisição, dia 15 de outubro, é um domingo, quando a clínica não opera, então ocorreria um erro. Sendo assim, mudaremos a data para 16 de outubro e clicaremos em "Send" para enviar a requisição de mudança.

PATCH localhost:3000/consulta/25aeee0a-2094-41c6-82c3-d98e42236a61
{
"data": "2023-10-16T13:45/:00.000"
}
COPIAR CÓDIGO
Retorno da requisição:
{
"especialista": "b6156016-8329-4698-988c-b3b38aa585",
"paciente": "e34db028-3445-4fbf-a744-ba578754da84",
"data": "2023-18-16T13:45:00.000",
"motivoCancelamento": null,
"id": "25aeee0a-2094-41c6-82c3-d98e42236a61"
}
COPIAR CÓDIGO
Ótimo, a atualização da consulta foi bem-sucedida! O retorno é igual ao agendamento de uma consulta, isto é, os mesmos atributos definidos na struct ScheduleAppointmentResponse do projeto em iOS.

Continuando, vamos implementar a função. Para isso, voltaremos ao Xcode e, na coluna da esquerda, acessaremos "Service > WebService.swift. No arquivo WebService,na linha 16 criaremos a função rescheduleAppointment(), que receberá dois parâmetros: o appointmentId: String e date: String. Ambos são arquivos strings, sendo que o primeiro representa a data antiga e o segundo a data nova.

func rescheduleAppointment(appointmenteID: String, date: String) async throws -> ScheduleAppointmentResponse? {
    let endpoint = baseUrl + "/consulta/" + appointmentId

        guard let url = URL(string: endpoint) else {
                print("Erro na URL!")
                return nil
        }
}
COPIAR CÓDIGO
Nossa função é uma async throws cujo retorno é um ScheduleAppointmentResponse opcional. E nosso endpoint é uma variável constante que é igual à URL base concatenado à /consulta/ e o ID da consulta.

Criada essa função, dentro dela iremos tratar a URL. Para isso, recortaremos o trecho de código da url, que está na linha 25, e colaremos dentro dessa função. Por fim, precisamos enviar o JSON contendo o atributo data.

func rescheduleAppointment(appointmenteID: String, date: String) async throws -> ScheduleAppointmentResponse? {
    let endpoint = baseUrl + "/consulta/" + appointmentId
}
COPIAR CÓDIGO
Na requisição post que fizemos ao criar uma consulta, utilizamos o modelo de dados ScheduleAppointmentRequest(), que criamos passando os três atributos necessários. Em seguida, convertemos eles para JSON no jsonData. Contudo, no rescheduleAppointment() temos apenas um atributo: a data.

Não precisamos criar um modelo para armazenar esse único atributo. Ao invés disso, criaremos a constante resquestData que será um dicionário, isto é, um tipo de dado que contém uma chave e um valor.

A chave desse dicionário será uma string, assim como o valor, então escrevemos [String: String]. Em seguida, podemos definir a chave, que é o atributo "data", ou seja, o JSON que a API está recebendo. O valor é a date, que passamos para função rescheduleAppointment(). Portanto. após o fechamento do else na url codamos:

let resquestData: [String: String] = ["data":date]
COPIAR CÓDIGO
Agora precisamos converter o dicionário requestData em um JSON. Isso pode ser feito utilizando o JSONSerialization. Então criaremos uma constante chamada jsonData para converter o dicionário em JSON.

// código omitido

let requestData: [String: String] = ["data":date]

let jsonData = try JSONSerialization.data(withJSONObject: requestData)

// código omitido
COPIAR CÓDIGO
Não precisamos instanciar o JSONSerialization, e nele usamos a primeira sugestão do XCode ao digitarmos data, que é o data(withJSONObject:), para o qual passamos o resquestData, que é o nosso dicionário. Dessa forma compartilhamos nosso dicionário em formato JSON. Continuaremos com a requisição, que será bastante similar à requisição POST.

// código omitido

let requestData: [String: String] = ["data": date]

let jsonData = try JSONSerialization.data(withJSONObject: requestData)

var request = URLRequest(url: url)
request.httpMethod = "PATCH"
request.setValue("application/json", forHTTPHeaderField: "Content-Type")
request.httpBody = jsonData

// código omitido
COPIAR CÓDIGO
Então criamos outra variável, chamada request, equivalente à URLRequest(url: URL). Abaixo de resquest, definimos nosso método HTTP como request.httpMethod = "PATCH".

Também definimos o cabeçalho, codando request.setValue("application/json", forHTTPHeaderField: "Content-Type"), indicando que estamos passando um JSON par essa requisição. Por fim, estabelecemos o request.httpBody = jsonData.

Depois chamamos a URLSession, novamente resetando a dupla com o let (data, _). Em seguida, decodificamos esses dados para o meu modelo ScheduleAppointmentResponse(), codando o appointmentResponse. Por último, retornamos o AppointmentResponse.

func rescheduleAppointment(appointmentID: String, date: String) async throws -> ScheduleAppointmentResponse? {
        let endpoint = baseURL + "/consulta/" + appointmentID

        guard let url = URL(string: endpoint) else {
                print("Erro na URL!")
                return nil
        }

        let requestData: [String: String] = ["data": date]

        let jsonData = try JSONSerialization.data(withJSONObject: requestData)

        var request = URLRequest(url: url)
        request.httpMethod = "PATCH"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = jsonData

        let (data, _) = try await URLSession.shared.data(for: request)

        let appointmentResponse = try JSONDecoder().decode(ScheduleAppointmentResponse.self, from: data)

        return appointmentResponse
}
COPIAR CÓDIGO
Não posso garantir que está funcionando no momento, mas ao menos a requisição foi criada. Agora acessaremos o ScheduleAppointmentView.swift, onde chamaremos essa função. Será muito similar à função scheduleAppointment que já temos.

Dentro da função rescheduleAppoint(), que começa por volta da linha 28, apagaremos o print(appointmentID), que está na linha 33. No lugar, escreveremos um do/cacth. Nesse catch, codaremos um print("Ocorreu um erro ao remarcar consulta: \(error)") para tratarmos o erro. Depois, codaremos o do.

do {
        if let _ = try await service.rescheduleAppointment(appointmentID: appointmentID, date: selectedDate.convertToString()) {
                isAppointmentScheduled = true
        } else {
                isAppointmentScheduled = false
        }
} catch {
        print("Ocorreu um erro ao remarcar consulta: \(error)")
        isAppointmentScheduled = false
}
showAlert = true
COPIAR CÓDIGO
Com essa estrutura, se tudo der certo, manipulamos as variáveis referentes ao alerta. Por isso, após o fechamento de chaves do catch, codamos showAlert = true, para mostrar o alerta em qualquer caso. E no meu catch, estabelecemos isAppointmentSchedule = false, pois ocorreu um erro.

Também criamos no if outra variável isAppointmentSchedule, dessa vez como true. Já no else, codamos o isAppointmentSchedule = false. E como eu não utilizamos a variável appointment para nada, substituímos ela com um underline (_) em if let _. Vamos verificar se está funcionando, pressionando "Cmd + R"

func rescheduleAppointment() async {
        guard let appointmentID else {
                print("Houve um erro ao obter o ID da consulta")
                return
        }
        do {
                if let _ = try await service.rescheduleAppointment(appointmentID: appointmentID, date: selectedDate.convertToString()) {
                        isAppointmentScheduled = true
                } else {
                        isAppointmentScheduled = false
                }
        } catch {
                print("Ocorreu um erro ao remarcar consulta: \(error)")
                isAppointmentScheduled = false
        }
        showAlert = true
}
COPIAR CÓDIGO
No nosso emulador, temos uma consulta com o Dr. João da Silva marcada para o dia 16 de outubro. Clicamos no botão "Remarcar", e vamos para tela de calendário, onde clicaremos no dia 29, mudando a consulta para 29 de setembro. Também mudaremos o horário para 4:30PM (16h30).

Ao clicarmos em "Reagendar consulta", na parte inferior da tela, recebemos uma mensagem de sucesso no centro da tela. Quando voltamos para tela "Minhas consultas", observamos que a data da consulta do card que escolhemos mudou. Agora, a consulta está marcada para o dia 29 de setembro às 16h30. Portanto, conseguimos reagendar a consulta com sucesso.

@@03
Para saber mais: requisição PATCH

Nesta aula, conhecemos um novo tipo de requisição: PATCH.
O que é a requisição PATCH?
Como vimos em aula, existem situações de uma consulta em que vamos alterar apenas alguns dados, mas não todos. É nesses casos em que utilizamos a requisição PATCH.

A requisição PATCH é um método HTTP que permite que você atualize parcialmente um recurso no servidor. Ao contrário da requisição PUT, que substitui completamente um recurso, o PATCH permite que você envie apenas as modificações desejadas para o servidor, economizando largura de banda e tempo. No Swift UI, você pode usar essa requisição para interagir com APIs RESTful ou outras fontes de dados remotas de forma eficiente.

Assim, se pensamos no CRUD, a requisição PATCH está dentro de update (atualizar).
Para que serve a requisição PATCH?
A principal finalidade da requisição PATCH é permitir atualizações parciais e precisas de recursos no servidor. Ela é especialmente útil quando você deseja alterar apenas alguns campos de um objeto sem modificar o resto do conteúdo. Além disso, a requisição PATCH é fundamental quando se trata de manter a integridade dos dados, uma vez que evita sobrescrever informações desnecessariamente.

Vamos ver outros exemplos práticos?

Exemplos práticos
1) Atualização de perfil de usuário
Imagine um aplicativo de rede social em que os usuários podem atualizar informações do perfil, como a foto do perfil, a descrição e as configurações de privacidade. Usando a requisição PATCH, você pode enviar apenas as alterações feitas pelo usuário, garantindo que outros detalhes do perfil permaneçam intactos.

2) Marcação de itens como favoritos
Em um aplicativo de lista de tarefas, você pode permitir que os usuários marquem itens como favoritos. A requisição PATCH pode ser usada para atualizar apenas o estado "favorito" de um item, sem afetar outros campos.

3) Personalização de configurações
Se o seu aplicativo permitir que os usuários personalizem configurações, como tema de cores ou notificações, a requisição PATCH pode ser usada para atualizar apenas as preferências selecionadas, sem afetar outras configurações.

Conclusão
A requisição PATCH é uma ferramenta poderosa no Swift UI para atualizar recursos de forma eficiente e precisa. Ela permite que você economize dados e internet, mantenha a integridade dos dados e forneça uma experiência de usuário mais rápida.

@@04
Construindo a tela de cancelamento

Agora criaremos a nossa tela para cancelar uma consulta. Para isso, na coluna de esquerda, clicaremos com o botão direito na pasta "Views". Selecionamos "New File" para criar um novo arquivo e, na janela que abre no centro da tela, escolhemos "SwiftUI View" e clicamos em "Next". Na janela de especificações do arquivo, o nomearemos como CancelAppointmentView. Pressionamos "Enter" e criamos o arquivo.
O CancelAppointmentView.swift é uma tela que terá um campo de texto onde a pessoa usuária precisa explicar o motivo pelo qual está cancelando a consulta. Passaremos esse motivo para a nossa requisição à API.

Por alguma razão, quando tentamos rodar nosso Preview, encontramos um erro. Não consigo entender o porquê. Não se preocupem, porque esses erros podem ocorrer no Xcode. Como a nossa aplicação continua funcionando com sucesso, vamos continuar.

Na linha 12, ao invés do Text("Hello, World"), escreveremos um VStack(spacing: 16.0), para adicionarmos um espaçamento entre as views de 16. Dentro do meu VStack(), escreveremos um Text("Conte-nos o motivo do cancelamento da sua consulta").

Adicionaremos alguns modificadores de propriedade nesse texto. Começando pelo .font(.title3), depois escreveremos .bold() para deixá-lo em negrito e foregroundStyle(.accent) para deixá-lo na tonalidade de azul que definimos. Também acrescentaremos um padding(.top) e centralizaremos o texto com multilineTextAlignment(.center).

struct CancelAppointmentView: View {
    var body: some View {
        VStack(spacing: 16.0) {
            Text("Conte-nos o motivo do cancelamento da sua consulta")
                .font(.title3)
                .bold()
                .foregroundStyle(.accent)
                .padding(.top)
                .multilineTextAlignment(.center)
        }
    }
}
COPIAR CÓDIGO
Agora nossa visualização carregou e podemos ver como o texto está ficando na View à direita. E para permitir que a pessoa usuária digite o motivo do cancelamento, podemos utilizar um componente chamado TextEditor().

Quando digitamos TextEditor após nossas formatações de texto, ainda dentro do VStack, o XCode mostra algumas sugestões. Selecionaremos a TextEditor(text:), que é a segunda opção, por ela passar um binding para uma String.

struct CancelAppointmentView: View {

    var body: some View {
        VStack(spacing: 16.0) {
            Text("Conte-nos o motivo do cancelamento da sua consulta")
                .font(.title3)
                .bold()
                .foregroundStyle(.accent)
                .padding(.top)
                .multilineTextAlignment(.center)
        }
    }
}
COPIAR CÓDIGO
Isso significa que precisaremos criar uma variável de estado, então, na linha acima do body, escreveremos @State: private var reasonToCancel = "", ou seja, estamos iniciando essa variável como uma string vazia. Além disso, como biding, passaremos a variável $reasonToCancel.

struct CancelAppointmentView: View {

    @State private var reasonToCancel = ""

    var body: some View {
        VStack(spacing: 16.0) {
            Text("Conte-nos o motivo do cancelamento da sua consulta")
                .font(.title3)
                .bold()
                .foregroundStyle(.accent)
                .padding(.top)
                .multilineTextAlignment(.center)

            TextEditor(text: $reasonToCancel)
        }
    }
}
COPIAR CÓDIGO
Na nossa View, embora não consigamos ver exatamente o campo de texto, ao clicarmos na tela em branco abaixo do título, aparece uma barra vertical de cursor, indicando que podemos escrever um texto.

Agora adicionaremos alguns modificadores nesse Text Editor. Primeiro, um padding(). Também aumentaremos a fonte do texto que será escrito pela pessoa usuária, com .font(.title3) e mudaremos o estilo do texto com .foregroundStyle(accent), deixando em um tom de azul. Caso queiram, podem deixar preto, isso não muda muito.

Adicionaremos também uma cor de fundo ao TextEditor(). Para isso, adicionaremos o modificador .scrollContentBackground(.hidden) e codaremos .background(Color(.ligthBlue)) para adicionarmos a cor de fundo azul clara. Como esse azul é muito intenso, após Color() aplicaremos o .opacity(0.015).

Observação: Se o modificador scrollContrentBackgroud() não for aplicado, a cor do plano de fundo ficará somente como uma borda e haverá um retângulo branco no centro da caixa de texto. Com esse modificador, ele esconde o plano de fundo branco e conseguimos ver toda tela abaixo do texto com a escolhida.
Além disso, também adicionaremos um .cornerRadius (16.0) para deixar as pontas do Textditor() com um formato arredondado. Não ficou tão visível na View porque precisamos adicionar um .padding() ao VStack(), portanto, após o fechamento de chaves no VStack(), mas dentro do body, codaremos .padding().

Com isso, visualizamos melhor o arredondamento dos cantos. Por fim, delimitaremos a altura do Text Editor, porque estou achando muito grande. Para isso, ao final de modificações do TextEditor(), codaremos .frame(maxHeight: 300), inserindo o valor 300 para altura máxima.

var body: some View {
    VStack(spacing: 16.0) {
        Text("Conte-nos o motivo do cancelamento da sua consulta")
            .font(.title3)
            .bold()
            .foregroundStyle(.accent)
            .padding(.top)
            .multilineTextAlignment(.center)

        TextEditor(text: $reasonToCancel)
            .padding()
            .font(.title3)
            .foregroundStyle(.accent)
            .scrollContentBackground(.hidden)
            .background(Color(.lightBlue).opacity(0.15))
            .cornerRadius(16.0)
            .frame(maxHeight: 300)
    }
    .padding()
}
COPIAR CÓDIGO
Após o .padding(), adicionaremos os modificadores de navegação. Começaremos pelo .navigationTitle("Cancelar consulta"). Em seguida, adicionaremos o navigationBarTitleDisplayMode(.large).

var body: some View {
    VStack(spacing: 16.0) {
        //código omitido
    }
    .padding()
    .navigationTitle("Cancelar consulta")
    .navigationBarTitleDisplayMode(.large)
COPIAR CÓDIGO
Agora, precisamos apenas adicionar um botão. Para isso, dentro do VStack(), após o TextEditor() e seus atributos, codaremos Button(action: {}, label:{}). Para a ação, neste momento escreveremos apenas print("Botão pressionado!"). Já na label, passaremos o componente ButtonView(text: "Cancelar consulta", buttonType: .cancel), ou seja, definimos o texto como "Cancelar consulta" e o tipo do botão como .cancel para torná-lo vermelho.

VStack(spacing: 16.0) {
    Text("Conte-nos o motivo do cancelamento da sua consulta")
        .font(.title3)
        .bold()
        .foregroundStyle(.accent)
        .padding(.top)
        .multilineTextAlignment(.center)

    TextEditor(text: $reasonToCancel)
        .padding()
        .font(.title3)
        .foregroundStyle(.accent)
        .scrollContentBackground(.hidden)
        .background(Color(.lightBlue).opacity(0.15))
        .cornerRadius(16.0)
        .frame(maxHeight: 300)

    Button(action: {
        Task {
            print("Botão pressionado!")
        }
    }, label: {
        ButtonView(text: "Cancelar consulta", buttonType: .cancel)
    })
}
COPIAR CÓDIGO
Agora temos nossa tela de cancelamento pronta para cancelar uma consulta. A seguir, precisamos chamar esta tela, então, na coluna da esquerda, navegaremos para "Views > Components > SpecialistCardView.swift.

No SpecialistCardView, ainda não temos o NavigationLink para o botão de cancelamento, então criaremos um. Na linha 62, acima do Button de cancelar, codaremos o NavigationLink com o Destination (Destino) para tela CancelAppointmentView().

Já a label será o ButtonView() que copiaremos de dentro da label do botão abaixo, na linha 72. Em seguida apagaremos este botão, ou seja, apagaremos da linha 69 a 73.

NavigationLink {
    CancelAppointmentView()
} label: {
    ButtonView(text: "Cancelar", buttonType: .cancel)
}
COPIAR CÓDIGO
Vamos executar este código e verificar se está funcionando. Quando abrimos a tela "Minhas consultas" no emulador, clicando no botão inferior direito, e clicamos no botão "Cancelar" no card, temos um direcionamento para tela "Cancelar consulta" que criamos.

@@05
Implementando a requisição DELETE

Vamos retornar ao Insomnia e analisar como funciona a requisição para deletar, ou seja, para remover uma consulta. No JSON "Apaga consulta", passamos um JSON com um único atributo, o "motivo_cancelamento", que é a única chave. E a nossa rota termina em /consulta/:id. Isso significa que nós precisamos ter o ID da consulta na tela de cancelamento, e, no momento, ainda não temos isso.
Portanto, retornaremos ao meu Xcode e acessaremos o arquivo CancelAppointmentView. No começo da estrutura, na linha acima da variável de estado reasonToCancel, codaremos a var appointmentID: String.

Agora, preciso passar essa variável para a minha tela CancelAppointmentView(), que está sendo chamada na SpecialistCardView.swift. Ao acessarmos esse arquivo, já recebemos a mensagem de erro e, ao clicarmos em "Fix" (Consertar), no canto inferior direito da mensagem, o CancelAppointmentView() recebeu como parâmetro (appointmentID: ).

O appointmentID será obtido através da variável appointment, que está no nosso body, porque nós estamos descompactando. Dessa variável, extrairemos o ID, então passaremos appointment.id.

Arquivo ScheduleAppointmentView
//código omitido

if let appointment {
    HStack {
        NavigationLink {
            ScheduleAppointmentView(specialistID: appointment.specialist.id, isRescheduleView: true, appointmentID: appointment.id)
        } label: {
            ButtonView(text: "Remarcar")
        }

        NavigationLink {
            CancelAppointmentView(appointmentID: appointment.id)
        } label: {
            ButtonView(text: "Cancelar", buttonType: .cancel)
        }
    }
}
//código omitido
COPIAR CÓDIGO
Portanto, nossa CancelAppointmentView está solicitando o parâmetro necessário e já o passamos na ScheduleAppointmentView. Voltando ao CancelAppointmentView.swift, temos um erro dentro do #Preview. Ao clicarmos em "Fix", ele adiciona o appointmentID, e passaremos como String "123", porque é só o preview.

Arquivo CancelAppointmentView
#Preview {
    CancelAppointmentView(appointmentID: "123")
}
COPIAR CÓDIGO
Agora, precisamos implementar a função no WebService. Então, na coluna da esquerda, acessaremos "Service > WebService", implementarmos a função que permitirá a pessoa usuária conseguir desmarcar uma consulta.

Antes de começarmos a criar essa função, voltaremos ao Insomnia rapidamente para tentarmos remover uma consulta através dele. Na coluna da esquerda do Insomnia, navegaremos para "Consulta > Lista todas consultas. Ao executarmos essa requisição, recebemos as consultas na coluna da esquerda.

Copiaremos o ID da primeira consulta e voltaremos para requisição Apagar consulta. Na rota, substituiremos o /:id pelo ID que copiamos. Na mensagem de requisição, manteremos como motivo de cancelamento a "Emergência Familiar".

DELETE localhost:3000/consulta/25aeee0a-2094-41c6-82c3-d98e42236a61
{
    "motivo_cancelamento": "Emergência familiar"
}
COPIAR CÓDIGO
"Consulta cancelada com sucesso"

Ao clicarmos no botão "Send" (Enviar), ao lado da barra de endereços, recebemos como retorno um texto simples: "Consulta cancelada com sucesso". Não retornou nenhum modelo de dados, e o status code do retorno foi 200, indicando que a requisição foi bem-sucedida.

Trabalharemos em cima desse código de status, porque o retorno em si não tem nenhuma informação que possamos utilizar, uma vez que não tem nenhum modelo de dados. Então, nossa requisição será um pouco diferente. Antes nós não estávamos trabalhando com informações da resposta da minha requisição, mas agora vamos. Se o status code for 200, significa que a consulta foi cancelada com sucesso.

Voltando ao Xcode, começaremos nossa implementação no WebService.swift. Por volta da linha 16, após a linha da baseURL, criaremos uma função chamada CancelAppointment(), recebendo dois parâmetros: appointmentID e reasonToCancel (motivoParaCancelar), ambos do tipo String. Usaremos o async throws e essa função retornará um booleano, indicando se a requisição foi feita com sucesso ou não.

struct WebService {

    private let baseURL = "http://localhost:3000"

    func cancelAppointment(appointmentID: String, reasonToCancel: String) async throws -> Bool { }
    
    //código omitido
COPIAR CÓDIGO
Dentro da função, criaremos endpoint, codando let endpoint = base url + "/consulta/" + appointmentId. Esse endpoint é exatamente igual ao da função rescheduleAppointment(), a única diferença é que uma tem como verbo o PATCH, e a outra tem como verbo de requisição o DELETE.

Sendo assim, podemos copiar o trecho código da url da função rescheduleAppointment e colar na cancelAppointment(). Entretanto, ao invés do retorno nill, retornaremos false nos casos de erro.

func cancelAppointment(appointmentID: String, reasonToCancel: String) async throws -> Bool {
    let endpoint = baseURL + "/consulta/" + appointmentID

    guard let url = URL(string: endpoint) else {
        print("Erro na URL!")
        return false
    }
}
COPIAR CÓDIGO
Em seguida, faremos do mesmo modo que na função rescheduleAppointment(): vamos criar um dicionário e o converter para JSON, porque temos uma única chave, que é o "motivo de cancelamento". Para fazermos isso, depois da url codaremos uma let requestData.

func cancelAppointment(appointmentID: String, reasonToCancel: String) async throws -> Bool {
    let endpoint = baseURL + "/consulta/" + appointmentID

    guard let url = URL(string: endpoint) else {
        print("Erro na URL!")
        return false
    }
    
    let requestData: [String: String] = ["motivoCancelamento" : reasonToCancel]

    let jsonData = try JSONSerialization.data(withJSONObject: requestData)
}
COPIAR CÓDIGO
Feito isso, podemos começar a adicionar informações à requisição, na linha abaixo ao jsonData. Para isso, codaremos var request, passando a URLRequest(url: url). Em seguida, fazemos a requisição do método HTTP "DELETE", a requisição do setValue e a requisição httpBody.

//código omitido

var request = URLRequest(url: url)
request.httpMethod = "DELETE"
request.setValue("application/json", forHTTPHeaderField: "Content-Type")
request.httpBody = jsonData
COPIAR CÓDIGO
Em seguida, chamaremos a nossa urlSession. Começaremos criando o let(data, response), mas dessa vez será diferente: não usaremos as informações do data, apenas da response. Sendo assim, no lugar de data, deixaremos apenas um undeline: let(_, response).

let (_, response) = try await URLSession.shared.data(for: request)
COPIAR CÓDIGO
Agora, faremos a verificação para certificar que a variável response, obtida ao chamar a função data da urlSession, é do tipo httpUrlResponse. Dessa forma, conseguimos verificar o código de status dessa resposta. Para isso codamos:

if let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 
COPIAR CÓDIGO
Se esta condição for verdadeira, significa que a resposta é do tipo httpUrlResponse e que o meu statusCode é igual a 200, então apenas retornaremos true. Caso contrário, sequer precisamos escrever else, apenas codamos return false, porque ele cairá nesse outro retorno.

func cancelAppointment(appointmentID: String, reasonToCancel: String) async throws -> Bool {
    let endpoint = baseURL + "/consulta/" + appointmentID

    guard let url = URL(string: endpoint) else {
        print("Erro na URL!")
        return false
    }

    let requestData: [String: String] = ["motivoCancelamento" : reasonToCancel]

    let jsonData = try JSONSerialization.data(withJSONObject: requestData)

    var request = URLRequest(url: url)
    request.httpMethod = "DELETE"
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")
    request.httpBody = jsonData

    let (_, response) = try await URLSession.shared.data(for: request)

    if let httpResponse = response as? HTTPURLResponse,
        httpResponse.statusCode == 200 {
        return true
    }

    return false

}
COPIAR CÓDIGO
Ainda não sabemos se está funcionando, então vamos verificar, chamando essa função na CancelAppointmentView. Então retornaremos para "Views > CancelAppointmentView.swift" e, na linha abaixo da variável de estado, criaremos uma função assíncrona chamada cancelAppointment(). Além disso, na linha abaixo do appointmentID, codaremos let service = WebService.

Arquivo CancelAppointmentView.swift
struct CancelAppointmentView: View {

    var appointmentID: String
    let service = WebService()

    @State private var reasonToCancel = ""

    func cancelAppointment() async {

    }

//código omitido
COPIAR CÓDIGO
Chamarei essa cancelAppointment() no botão. Então na linha 40, ao invés de colocarmos o print("Botão pressionado") como ação, usaremos o Task{} e, dentro dele, chamaremos o await cancelAppointment().

Button(action: {
    Task {
        await cancelAppointment()
    }
}, label: {
    ButtonView(text: "Cancelar consulta", buttonType: .cancel)
})
COPIAR CÓDIGO
Voltando para a função cancelAppointment() que está fora do body, dentro dessa função precisamos fazer o do/catch. No catch adicionaremos um print("Ocorreu um erro ao desmarcar a consulta: \(error)"). Já no do codaremos um if contendo o cancelAppointment() e passando as variáveis que equivalem aos parâmetros essa função. Para o appointmentId, utilizamos como parâmetro a variável da linha 12 e, para o reasonToCancel, a variável declarada na linha 15.

func cancelAppointment() async {
    do {
        if try await service.cancelAppointment(appointmentID: appointmentID, reasonToCancel: reasonToCancel) {
        print ("Consulta cancelada com sucesso!")
        }
    } catch {
        print("Ocorreu um erro ao desmarcar a consulta: \(error)")
    }
}
COPIAR CÓDIGO
Além disso, não declaramos nenhuma variável no if porque retornamos simplesmente um booleano, ou seja, não obtemos nenhuma informação muito relevante. Fizemos esse if porque se a minha função service.cancelAppointment retornar true, ela cairá dentro desse if, que imprimirá "Consulta cancelada com sucesso."

Vamos pressionar "Cmd + R" para testarmos se está funcionando. No emulador, clicamos na aba "Minhas consultas". Já cancelamos uma consulta através do Insomnia e agora tentaremos cancelar a da Dra. Maria Souza.

Clicamos no botão "Cancelar", no card, abrindo a tela "Cancelar consulta". Como motivo da consulta, escreveremos a mensagem "Emergência familiar" e clicaremos em "Cancelar consulta". No Console do XCode, recebemos a mensagem "Consulta cancelada com sucesso".

Um ponto importante é que a consulta precisa ser cancelada com mais de um dia de antecedência. Se você tentar cancelar uma consulta com menos de um dia, ocorrerá um erro de decodificação dos dados. Além disso, deixo para você como um desafio implementar um alerta que dê um feedback visual para a pessoa usuária, caso a consulta seja cancelada com sucesso ou caso dê algum erro.

Com isso, finalizamos! Nós temos uma aplicação completa que consome dados de um serviço externo. Realizamos operações como leitura de dados, envio de dados, atualização de dados e também remoção de dados.

@@06
Para saber mais: Requisição DELETE

Por fim, abordamos o último tipo de requisição: DELETE.
Essa requisição faz a remoção de dados de um servidor. Assim, os usuários do app conseguem deletar seus dados. Se considerarmos o CRUD, a requisição DELETE é representada justamente pelo “delete”.

Em termos simples, ela permite que um aplicativo solicite a exclusão de informações específicas em um servidor remoto por meio da interação com uma API.

Para que serve a requisição DELETE?
A requisição DELETE desempenha um papel essencial no desenvolvimento de aplicativos móveis. Suas principais funções incluem:

Exclusão de recursos: Ela permite que o aplicativo solicite a exclusão de recursos específicos em um servidor. Isso inclui a remoção de itens em um carrinho de compras, a eliminação de mensagens de um sistema de mensagens ou a exclusão de registros de uma base de dados.
Limpeza de dados: A requisição DELETE é frequentemente usada para limpar ou "desfazer" ações anteriores. Por exemplo, você pode usar DELETE para desfazer uma inscrição em um evento ou para remover uma avaliação que um usuário havia feito anteriormente.
Gerenciamento de dados: Ela auxilia na manutenção e gerenciamento de dados do servidor. Quando um recurso não é mais necessário ou relevante, a requisição DELETE permite que ele seja removido de forma adequada, mantendo a integridade dos dados.
Exemplos e casos de uso
Vamos examinar alguns exemplos para ilustrar como a requisição DELETE pode ser aplicada no desenvolvimento de aplicativos SwiftUI:

Exemplo 1: Remoção de um Item de Carrinho de Compras
Imagine um aplicativo de compras onde o usuário adicionou vários itens ao carrinho. Quando a pessoa decide remover um item do carrinho, o aplicativo pode enviar uma requisição DELETE para a API do servidor com o ID do item a ser removido. Isso atualiza o carrinho do usuário no servidor, refletindo a remoção do item.

Exemplo 2: Cancelamento de reserva
Suponha que você esteja construindo um aplicativo para reservar passagens aéreas. Se um usuário desejar cancelar uma reserva, o aplicativo pode enviar uma requisição DELETE com o ID da reserva. Isso instruirá o servidor a cancelar a reserva e liberar os recursos associados.

Exemplo 3: Exclusão de postagem em rede social
Em uma rede social, os usuários podem criar postagens. Se um usuário decidir excluir uma postagem, o aplicativo pode enviar uma requisição DELETE para a API da rede social com o ID da postagem. Isso resultará na exclusão da postagem no servidor e na remoção dela do feed do usuário.

Fez sentido?

@@07
Desafio: implementação do alerta na tela de cancelamento

O objetivo deste desafio é fazer com que, quando o usuário decidir cancelar uma consulta, após confirmar essa ação, seja exibido um alerta para informar se o cancelamento foi bem-sucedido ou se houve algum problema.
Veja uma imagem de como deve ser o resultado final:

Imagem da tela de cancelamento de uma consulta. Na parte superior, há o título “cancelar consulta”. Em seguida, há o texto: “conte-nos o motivo do cancelamento da sua consulta, um botão vermelho de cancelar consulta e uma caixa de texto com a mensagem: “Sucesso! A consulta foi cancelada com sucesso”

Imagem da tela de cancelamento de uma consulta. Na parte superior, há o título “cancelar consulta”. Em seguida, há o texto: “conte-nos o motivo do cancelamento da sua consulta, um botão vermelho de cancelar consulta e uma caixa de cancelamento com a mensagem: “Ops, algo deu errado! Houve um erro ao cancelar sua consulta. Por favor, novamente ou entre em contato via telefone”

Bom desafio! Lembre-se, o processo de resolução e experimentação é tão importante quanto o resultado final. Qualquer dúvida, chama a gente no discord ou no fórum!

@@08
Desafio: verificação se há consultas na tela de agendamentos de um paciente

O objetivo deste desafio é implementar uma lógica que, se não houver consultas agendadas na tela de agendamentos de um paciente, mostre uma mensagem indicando que "Não há consultas agendadas" ao invés de deixar a tela em branco.
Veja uma imagem de como deve ser o resultado final:

Imagem que mostra a tela de “minhas consultas”. No centro da tela do aplicativo há a mensagem “Não há nenhuma consulta agendada no momento!”. Na parte inferior da tela, há um menu com as opções “home” e “minhas consultas”.

Esses desafios ajudarão a solidificar o conhecimento e aprimorar as habilidades. Boa sorte com a implementação! Qualquer dúvida, estamos à disposição!

@@09
Modificações no endpoint

Dado o código e o fluxo de trabalho descritos na aula, analise os métodos de requisição HTTP, as funcionalidades implementadas e os detalhes técnicos mencionados. Com base nisso, responda à seguinte questão:
Suponha que haja uma modificação na API onde o endpoint de remarcação de consulta agora também requer um motivo para a remarcação, e o motivo é enviado no corpo da requisição, juntamente com a nova data.

Como deveríamos adaptar o método rescheduleAppointment para acomodar essa nova necessidade?

Adicionar um parâmetro adicional reasonToReschedule: String e incorporá-lo ao requestData como ["data": date, "reason": reasonToReschedule].
 
Uma vez que agora precisamos enviar um motivo para a remarcação junto com a nova data, seria lógico modificar a função rescheduleAppointment para incluir este novo parâmetro. Em seguida, ao formar o corpo da requisição, você combinaria a nova data e o motivo em requestData.
Alternativa correta
Modificar o httpMethod para "PUT" e enviar os dados conforme necessário.
 
Não é necessário modificar para PUT, pois ainda estamos alterando apenas um dado: a data da consulta. O motivo da remarcação é apenas uma informação adicional que estamos passando.
Alternativa correta
Criar um novo método chamado rescheduleWithReason e manter o método original inalterado para fins de compatibilidade.
 
Não é necessário no nosso caso criar um novo método para isso, visto que a mudança se tornou necessária. Essa abordagem pode levar a redundâncias e complicar o código ao longo do tempo, especialmente se várias versões de um método existirem simultaneamente.
Alternativa correta
Alterar o endpoint para /consulta/remarcacao/ + appointmentID.
 
A URL não foi alterada, portanto não há necessidade de alterar o endpoint.

@@10
Faça como eu fiz: aplicando as requisições PATCH e DELETE

Hora de colocar em prática o que vimos durante a aula!
1 - Implementando a requisição PATCH:

a) Criamos uma função rescheduleAppointment para fazer uma requisição PATCH e atualizar a data de uma consulta.
func rescheduleAppointment(appointmentID: String, date: String) async throws -> ScheduleAppointmentResponse? { ... }
COPIAR CÓDIGO
b) Usamos essa função para reagendar a consulta baseada no ID e na nova data selecionada.
if let _ = try await service.rescheduleAppointment(...) { ... }
COPIAR CÓDIGO
2 - Construindo a tela de cancelamento:

a) Definimos a CancelAppointmentView que apresenta uma caixa de texto para que o usuário insira um motivo para cancelar a consulta.
struct CancelAppointmentView: View { ... }
COPIAR CÓDIGO
b) Adicionamos um link de navegação para a tela de cancelamento:
NavigationLink {
    CancelAppointmentView()
} label: {
    ButtonView(text: "Cancelar", buttonType: .cancel)
}
COPIAR CÓDIGO
3 - Implementando a requisição DELETE:

a) Desenvolvemos a função cancelAppointment para fazer uma requisição DELETE e cancelar uma consulta;
func cancelAppointment(appointmentID: String, reasonToCancel: String) async throws -> Bool { ... }
COPIAR CÓDIGO
b) Esta função recebe o ID da consulta e um motivo para cancelar. Os dados são enviados para o servidor, que, em caso de sucesso, retorna um código de status 200;
c) Em nossa tela de cancelamento, chamamos a função cancelAppointment quando o botão é pressionado:
Task {
    await cancelAppointment()
}


A capacidade de adaptar a interface do usuário e as ações por trás dela com base nas necessidades do usuário é crucial para um aplicativo de sucesso. O uso de requisições PATCH e DELETE nos permite modificar e remover registros do nosso servidor.
Dê uma olhada em como o projeto se parece agora no link para a branch no GitHub.

Neste ponto, nosso aplicativo já possui uma funcionalidade robusta para gerenciar consultas, o que foi o objetivo proposto.

Parabéns pelo empenho!

https://github.com/alura-cursos/swiftui-vollmed-crud/tree/aula-06

@@11
Projeto final

Você pode baixar ou acessar o código fonte do projeto final. Aproveite para explorá-lo e revisar pontos importantes do curso.
Bons estudos!

https://github.com/alura-cursos/swiftui-vollmed-crud/archive/refs/heads/main.zip

https://github.com/alura-cursos/swiftui-vollmed-crud/tree/main

@@12
Recados finais

Parabéns, você chegou ao fim do nosso curso. Tenho certeza que esse mergulho foi de muito aprendizado.
Após os créditos finais do curso, você será redirecionado para uma tela na qual poderá deixar seu feedback e avaliação do curso. Sua opinião é muito importante para nós.

Aproveite para conhecer a nossa comunidade no Discord da Alura e se conectar com outras pessoas com quem pode conversar, aprender e aumentar seu networking.

Continue mergulhando com a gente.

@@13
O que aprendemos?

Nesta aula, você aprendeu a:
Implementar a requisição PATCH para atualizar informações;
Construir uma tela dedicada para o cancelamento de consultas;
Implementar a requisição DELETE para remover consultas.
Parabéns! Suas habilidades em desenvolvimento e integração estão se aprofundando.

@@14
Conclusão

Parabéns por concluir mais um curso de Swift UI, desta vez envolvendo operações CRUD e requisições HTTP.
Ao longo deste curso, construímos o projeto VollMed, onde é possível para uma pessoa paciente visualizar a lista de especialistas disponíveis e agendar consultas. Para isso, aprendemos a adicionar o calendário utilizando o DatePicker, que permite a seleção de um horário de consulta e, consequentemente, realizar de uma requisição POST para a nossa API externa, para criação de dados.

A pessoa paciente também pode visualizar suas consultas agendadas. Durante este processo, também abordamos a formatação de datas. No aplicativo, há botões para reagendar e cancelar consultas.

Para remarcar as consultas, utilizamos o verbo PATCH para atualizar os dados. Já para o cancelamento, aprendemos um novo componente: o TextEditor(). O TextEditor() nos permite inserir um texto e, em seguida, realizar uma requisição do tipo DELETE.

Com os conhecimentos adquiridos neste curso, você pode criar uma aplicação de ponta a ponta, consumindo uma API externa e a tornando muito mais flexível e dinâmica. Caso tenha qualquer dúvida, sinta-se à vontade para acessar fórum do curso, que iremos te ajudar.

Você também pode acessar o Discord da Alura para pedir ajuda e encontrar outras pessoas desenvolvedoras que já concluíram ou estão fazendo este curso, prontas para trocar ideias e experiências!

Não esqueça de compartilhar seu projeto finalizado nas redes sociais e nos marcar!

Agradeço por chegar até aqui!

Novamente,** parabéns pela conclusão de mais um curso** e até a próxima!