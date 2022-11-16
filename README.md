# appium-robot  

## Pré-requisitos  

### Python   
Como utilizaremos o Robot Framework neste projeto, é um pré-requisito termos a instalação do Python, uma vez que precisaremos utilizar o `pip`, gernciador de pacotes do Python, para instalar a libraries do Robot.

Baixar [Python](https://www.python.org/)   

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

Para criar nosso device, usaremos o AVD Manager: 

 #### Configurar as variáveis de ambiente do Android Studio.   
 
 
 
![image](https://user-images.githubusercontent.com/38733166/202269152-591d1d69-b43a-47b5-adcd-dca675139f4f.png)


### Appium    
![image](https://upload.wikimedia.org/wikipedia/commons/8/84/Appium.png?20220131094201)    


Appium é uma ferramenta que permite inspecionar componentes da interface gráfica de apps nativos e híbrido para Android e IOS, os quais utilizamos para automação de testes.
Appium possui um client em que configuramos o app e device que vamos interagir e também possui um servidor que recebe as requisições que enviamos para o device (que pode ser um dispositivo físico ou emulado).   

Para mais detalhes: [Appium](https://appium.io/docs/en/about-appium/api/#appium-api-documentation)    

