# appium-robot  

## Pré-requisitos   

### Python   
Como utilizaremos o Robot Framework neste projeto, é um pré-requisito termos a instalação do Python, uma vez que precisaremos utilizar o `pip`, gernciador de pacotes do Python, para instalar a libraries do Robot.

Baixar [Python](https://www.python.org/)    

### Robot Framework  
Com o Python instalado, podemos agora instalar o Robot Framework com seguinte comando no terminal: `pip install robotframework`. Para garantir que foi instalado corretamente, execute: `robot --version`. A saída do comando deverá exibir a versão do Robot.  

Vamos aproveitar e instalar a biblioteca Appium para o Robot: `pip install --upgrade robotframework-appiumlibrary`. 

Para garantir que foi instalada corretamente, vamos ver se ela foi listada ao executar o comando `pip freeze` .  

Documentação:  
[Robot Framework](https://robotframework.org/)   
[Appium Robot](https://github.com/serhatbolsu/robotframework-appiumlibrary)  



### JDK 8   
Precisaremos do Java 8 porque iremos emular os dispositivos mobile com AdroidStudio. A versão Java JDK 8 é compatível com o Appium e Selenium o que permite que o ambiente que estamos construindo se mantenha estável.  
Baixar [JDK 8](https://www.oracle.com/br/java/technologies/javase/javase8-archive-downloads.html).    
Fazer a instalação do Java junto ao JRE que será exibido como opção de instalação automática.  
 
#### Configurar as variáveis de ambiente do Java.   
Em Variáveis do Ambiente. Criar a __Variável de Sistema__ `JAVA_HOME` com o caminho do diretório em que está o arquivo `jdk`, ficará algo como: C:\Program Files\Java\jdk1.8.0_202.  Ficará assim:    
![image](https://user-images.githubusercontent.com/38733166/202262403-546e84c2-4262-40b7-b964-9fdfe581aa48.png)  
 Precisamos, ainda em __Variáveis do Sistema__, passar o caminho dos binários (que é um subdiretório da pasta Java que setamos acima) do Java 8, para isso, precisamos adcionar na variável `PATH` o seguinte valor `%JAVA_HOME%\bin`.  Ficará assim:   
![image](https://user-images.githubusercontent.com/38733166/202263608-e128cd72-4793-49a2-a5db-32d85ebe54de.png)   
Tudo que é passado para a variável PATH, se tornará global no sistema. Ou seja, seu escopo será toda parte do sistema, não exclusivamente um diretório.     

### Android Studio  
O Android Studio é uma plataforma para desenvolvimento de aplicativos Mobile, precisamos dele porque o SDK (Conjunto de ferramentas para desenvolvimento Android) e AVD (Android Virtual Device) está acomplado na plataforma e será útil para automação dos testes.    
Baixar [Android Studio](https://developer.android.com/studio)  


 #### Configurar as variáveis de ambiente do Android Studio, a `ANDROID_HOME`.    
 Em Variáveis do Ambiente. Criar uma nova __Variável de Sistema__ chamada `ANDROID_HOME`. O valor dessa variável, será o caminho do __SDK__ que está dentro de: `C:\Users\my_profile\AppData\Local\Android\Sdk`. O diretório __AppData__, é um __diretório oculto__, portanto, para facilitar pode ser informado manualmente na barra do Windows Explorer após o diretório do seu usuário.  Esse será o valor da variável `ANDROID_HOME`:   
 ![image](https://user-images.githubusercontent.com/38733166/202271692-b7f57ac3-d57c-4a45-88e0-e8899c508a00.png)   
 Mais uma vez em __variáveis do sistema__, devemos adicionar novos diretórios na variável `PATH`, passando os valores com `%ANDROID_HOME%\` . Essa 'sintaxe', já traz o diretório que informamos incialmente quando definimos o diretório valor para `ANDROID_HOME` acima. Então, agora precisaremos apenas de algumas outras pastas que são exibidas abaixo, mas você pode encontrar no local que está o `SDK`.  
 
 ![image](https://user-images.githubusercontent.com/38733166/202273642-d829e038-f1a4-48a6-9022-6a4d34950bcb.png)  


### Appium     
![image](https://upload.wikimedia.org/wikipedia/commons/8/84/Appium.png?20220131094201)    


Appium é uma ferramenta que permite inspecionar componentes da interface gráfica de apps nativos e híbrido para Android e IOS, os quais utilizamos para automação de testes.
Appium possui um client em que configuramos o app e device que vamos interagir e também possui um servidor que recebe as requisições que enviamos para o device (que pode ser um dispositivo físico ou emulado).    

#### Instalar o server do Appium com NodeJS.
 Baixar uma versão LTS (versão estável) do NodeJS.  
 Baixar [NodeJS](https://nodejs.org/en/)  
 
* Agora precisamos instralar de maneira global o servidor Appium:  
 `npm install appium -g`   
 
* Instalar o Appium Doctor:    
 `npm install appium-doctor -g`  
 
 * Executar o Appium Doctor para verificar se o ambiente está com todas as configurações corretas para executar os testes.  
 `appium-doctor --android`  
 
 A saída esperada deve ser como o print abaixo. Onde está destacado, não precisamos nos preocupar porque são dependência opcionais, por isso destaquei.  
 ![image](https://user-images.githubusercontent.com/38733166/202278652-c3c334e5-3149-40ee-9627-43bd5e386209.png)   
 
 
 #### Instalar Appium Client versão v1.17.1-1   
 Baixar o executável para Windows do [Appium](https://github.com/appium/appium-desktop/releases/tag/v1.17.1-1).  
 
Ao terminar a instalação e abrir o Appium, devemos abrir o ícone e cair na seguinte tela:  
![image](https://user-images.githubusercontent.com/38733166/202280078-aaad1b57-e85e-4f23-a0ca-19a02ce0bb3e.png)


Se clicarmos em __Edit Configurations__, podemos notar que se as variáveis `JAVA_HOME` e `ANDROID_HOME` foram informadas corretamente e passou pela verificação do `appium-doctor`, ela será exibida como na imagem seguinte:  

![image](https://user-images.githubusercontent.com/38733166/202280600-22a0bdc4-0c02-4940-b6e0-efe38a3a390e.png)   


De volta à tela inicial do Appium se e clicarmos em __Start Server__, será aberta a tela que mostra as requisições que enviamos e respostas do servidor Appium.Neste momento, o servidor está online na porta 4723. Nesta tela, podemos clicar na lupa do lado superior direito. Será aberto o __Inspector__ no qual faremos a configuração do device após o criarmos no Android Studio.  

#### Lupa fica no canto superior direito   

![image](https://user-images.githubusercontent.com/38733166/202282657-a825bb6a-a683-4908-8e98-bc27ddc9ba80.png)


#### Tela do Appium Inspector

![image](https://user-images.githubusercontent.com/38733166/202281632-d15d786e-125a-4a3f-87e4-0c6f56aeabfd.png)   

Nesta tela, iremos passar as informações do Device que iremos criar no Android Studio e do aplicativo que iremos testar e startar o app no Android.  Voltaremos a ela mais adiante.  

Para mais detalhes: [Appium](https://appium.io/docs/en/about-appium/api/#appium-api-documentation)      

### Emulando um aparelho de celular com AVD (Android Virtual Device) no Android Studio  

Levando em consideração que tudo acima foi instalado corretamente, podemos agora escolher o aparelho no AVD que utilizaremos para executar os testes no Android Studio.
Como testes mobile consomem muito recurso computacional (memória e cpu principalmente), geralmente se opta por um aparelho mais simples.  

Para criar um aparelho virtualizado, devemos na tela de boas vindas, clicar ao lado direito nos 3 pontinhos, e escolher a opção: Virtual Device Manager:

![image](https://user-images.githubusercontent.com/38733166/206177335-911b85a3-b658-4131-b24b-83c5dda4349a.png)  

Depois abrirá a janela pra criarmos o aparelho, então devemos clicar em  __Create Device__, como indica  a figura abaixo:  

![image](https://user-images.githubusercontent.com/38733166/206177726-d7d089e9-0677-47a0-8628-1ae1524c2ecc.png)   









