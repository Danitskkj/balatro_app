# BalatroApp

![Balatro Logo](assets/balatro.png)

## Sobre o Projeto

BalatroApp é um aplicativo de consulta baseado no jogo Balatro, um roguelike de poker onde os
jogadores constroem estratégias usando curingas com diferentes habilidades para multiplicar
pontuações.

Este aplicativo foi desenvolvido como trabalho para a disciplina de Algoritmos e Programação III, com o objetivo de criar uma interface de usuário funcional utilizando Flutter ao longo dos 3 trimestres.

## Tema Escolhido

**Balatro - Jogo de Cartas Roguelike**

Balatro é um jogo indie popular que mistura elementos de poker com mecânicas roguelike. O jogador
utiliza uma coleção de cartas especiais chamadas "Jokers" para criar combinações poderosas que
multiplicam os pontos obtidos com mãos de poker.

O aplicativo funciona como uma wiki interativa que permite aos jogadores consultar informações sobre
as diferentes cartas do jogo, suas raridades, efeitos e custos.

## Telas Desenvolvidas

### 1. Tela Inicial

- Apresentação do jogo
- Logo centralizada
- Descrição do conceito do jogo
- Informações sobre o aplicativo

### 2. Tela de Coleção

- Lista de categorias de cartas (Curingas, Tarô, Planetas)
- Cards clicáveis com ícones e contagens
- Navegação para subcategorias

### 3. Tela de Curingas

- Listagem de todos os curingas do jogo
- Sistema de filtragem por raridade
- Cards com aparência semelhante ao jogo original
- Tamanho proporcional às cartas reais (71x95px)

### 4. Tela de Detalhes do Curinga

- Visualização ampliada da carta
- Informações detalhadas sobre efeitos
- Dados como raridade, custo e ID
- Bordas coloridas de acordo com a raridade da carta

### 5. Tela de Perfil

- Imagem do usuário
- Estatísticas de progresso
- Opções de configuração
- Menu de acesso a funcionalidades futuras

## Recursos Utilizados

### Componentes Flutter

- **BottomNavigationBar**: Para navegação principal entre abas
- **AnimatedSwitcher**: Transições suaves entre telas
- **GridView**: Exibição em grade dos curingas
- **ListView**: Listagens verticais nas telas de coleção
- **ChoiceChip**: Sistema de filtros interativos por raridade
- **Containers estilizados**: Cards personalizados com bordas coloridas
- **ClipOval**: Para recorte circular em imagens de perfil

### Design

- **Tema escuro**: Interface com fundo preto/cinza escuro
- **Design monocromático**: Uso de gradientes de roxo como cor principal
- **Cores por raridade**: Sistema visual para diferentes níveis de raridade
- **UI minimalista**: Layout limpo com foco no conteúdo

### Funcionalidades Implementadas

- Navegação entre múltiplas telas
- Filtragem de conteúdo
- Exibição detalhada de itens
- Layout responsivo
- Tema personalizado

## Próximos Passos (Futuras Implementações)

- Implementação das telas de Tarô e Planetas
- Banco de dados completo com todas as cartas
- Sistema de login 
