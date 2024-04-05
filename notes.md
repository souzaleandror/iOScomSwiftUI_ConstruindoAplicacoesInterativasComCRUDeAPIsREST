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