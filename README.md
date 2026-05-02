O objetivo principal é fornecer uma ferramenta de auxílio diagnóstico que identifique padrões em dados clínicos para prever a probabilidade de condições cardíacas, e classificar em alto ou baixo risco. Foi utilizado o dataset "Heart Disease Prediction" do Kaggle. link: (https://www.kaggle.com/datasets/aminasalamt/heart-disease-prediction-using-machine-learning/data) 

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
