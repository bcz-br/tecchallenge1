Objetivo e Contexto
Este projeto desenvolve uma ferramenta de auxílio diagnóstico baseada em Inteligência Artificial para a classificação de risco cardíaco (Alto Risco vs. Baixo Risco). Utilizando o dataset clínico Heart Disease Prediction (Kaggle), o sistema identifica padrões complexos em variáveis de exames para prever a probabilidade de patologias cardíacas com maior precisão.

Metodologia e Experimentação
O núcleo do projeto baseia-se em uma abordagem comparativa dividida em duas frentes principais:

1. Análise de Agrupamento e Anomalias (Não Supervisionado):

K-Means vs. Isolation Forest: Foi realizado um estudo comparativo entre estes dois algoritmos para avaliar qual deles é mais eficaz na segmentação natural dos grupos de risco.

O objetivo foi identificar se a estrutura dos dados clínicos permite uma separação clara de clusters (K-Means) ou se os casos de risco se comportam como anomalias estatísticas dentro da amostra (Isolation Forest).

2. Modelagem Preditiva (Supervisionado):

Regressão Logística vs. Random Forest: Implementação de modelos classificadores para determinar a melhor arquitetura de predição.

Enquanto a Regressão Logística oferece uma interpretação estatística clara das variáveis, o Random Forest foi explorado para capturar relações não-lineares e interações complexas entre os dados clínicos, buscando maximizar a acurácia e o recall do diagnóstico.

## 📊 Pipeline de Dados

O fluxo de trabalho no notebook `main.ipynb` segue as etapas:

1.  **Coleta**: Dados carregados localmente da pasta `/data`.
2.  **Pré-processamento**:
    *   **Encoding**: Transformação de variáveis categóricas para formato numérico.
    *   **Normalização**: Escalonamento de recursos para garantir que todas as variáveis contribuam igualmente.
    *   **PCA (Principal Component Analysis)**: Redução de dimensionalidade para extração das características mais relevantes.
3.  **Modelagem**:
    *   **Não Supervisionado**: Agrupamento com `K-Means` e detecção de anomalias com `Isolation Forest`.
    *   **Supervisionado**: Classificação através de `Regressão Logística` e `Random Forest`.

## 🛠️ Tecnologias Utilizadas

*   **Linguagem**: Python 3.11
*   **Bibliotecas de ML**: Scikit-learn
*   **Manipulação e Visualização**: Pandas, NumPy, Seaborn, Matplotlib
*   **Containerização**: 
