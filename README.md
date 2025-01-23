# JPApexPredators17

Um aplicativo iOS que exibe uma lista de predadores de topo com informações detalhadas e localização no mapa. O projeto foi desenvolvido usando SwiftUI e demonstra funcionalidades como filtros, pesquisa e navegação.

## Capturas de Tela

### Tela Principal
<div style="display: flex; gap: 10px;">
   <img src="https://github.com/arturvas/JPApexPredators17/blob/main/JPApexPredators17/Screenshots/mainscreenWithFilter.png" alt="Tela Principal com filtro" width=300" />
   <img src="https://github.com/arturvas/JPApexPredators17/blob/main/JPApexPredators17/Screenshots/detail.png" alt="Detalhes do Predador" width="300"/>
   <img src="https://github.com/arturvas/JPApexPredators17/blob/main/JPApexPredators17/Screenshots/location.png" alt="Localização" width="300"/>
   <img src="https://github.com/arturvas/JPApexPredators17/blob/main/JPApexPredators17/Screenshots/locationZoomOut.png" alt="Globo" width="300"/>
</div>

## Funcionalidades

- **Listagem de predadores**: Exibe uma lista com imagens e informações básicas sobre os predadores.
- **Pesquisa**: Permite buscar predadores pelo nome.
- **Filtro**: Classifique os predadores por tipo ou por ordem alfabética.
- **Detalhes do predador**: Visualize informações detalhadas sobre cada predador, incluindo sua localização no mapa.
- **Feedback háptico**: Implementação de feedback para melhorar a experiência do usuário.

## Arquitetura

O projeto segue uma estrutura modular simples para facilitar a organização e manutenção do código:

- **jpapexpredators.json**: Contem toda a informacao dos predadores. 
- **ContentView.swift**: Ponto de entrada da interface principal.
- **ApexPredator.swift**: Define o modelo para os predadores.
- **Predators.swift**: Gerencia a lista e os métodos para filtrar e buscar predadores.
- **PredatorDetail.swift**: Exibe os detalhes de um predador individual.
- **PredatorMap.swift**: Mostra a localização do predador em um mapa interativo.
- **HapticManager.swift**: Gerencia feedbacks hápticos.

## Tecnologias e Ferramentas

- **Linguagem**: Swift
- **Framework**: SwiftUI
- **MapKit**: Para exibir a localização dos predadores.
- **Haptic Feedback**: Para interações mais dinâmicas.
- **Xcode**: Ambiente de desenvolvimento.

## Como Executar o Projeto

1. Clone o repositório:
   ```bash
   git clone <URL_DO_REPOSITORIO>
   ```
2. Abra o projeto no XCODE.
3. Certifique-se de que o simulador ou dispositivo está configurado.
4. Compile e execute o projeto pressionando CMD + R
