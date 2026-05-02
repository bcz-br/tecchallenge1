# 🩺 Sistema de Inteligência para Diagnóstico Cardíaco

## 📌 Objetivo e Contexto
Este projeto desenvolve uma ferramenta de auxílio diagnóstico baseada em **Inteligência Artificial** para a classificação de risco cardíaco (**Alto Risco vs. Baixo Risco**). Utilizando o dataset clínico [Heart Disease Prediction (Kaggle)](https://www.kaggle.com/datasets/aminasalamt/heart-disease-prediction-using-machine-learning/data), o sistema identifica padrões complexos em variáveis de exames para prever a probabilidade de patologias cardíacas com alta precisão.

---

## 🧪 Metodologia e Experimentação
O núcleo do projeto baseia-se em uma abordagem comparativa dividida em duas frentes principais:

### 1. 🔍 Análise de Agrupamento e Anomalias (Não Supervisionado)
*   **K-Means vs. Isolation Forest**: Foi realizado um estudo comparativo para avaliar qual algoritmo é mais eficaz na segmentação natural dos grupos de risco.
*   **Propósito**: Identificar se os dados permitem uma separação clara em clusters (**K-Means**) ou se os casos de risco se comportam como anomalias estatísticas (**Isolation Forest**).

### 2. 📈 Modelagem Preditiva (Supervisionado)
*   **Regressão Logística vs. Random Forest**: Implementação de classificadores para determinar a melhor arquitetura de predição.
*   **Diferencial**: Enquanto a **Regressão Logística** oferece uma interpretação estatística linear, o **Random Forest** captura relações não-lineares e interações complexas, visando maximizar a acurácia e o *recall* do diagnóstico.

---

## 📊 Pipeline de Dados
O fluxo de trabalho está consolidado no notebook `main.ipynb` e segue as etapas:

1.  **📥 Coleta**: Dados carregados localmente da pasta `/data`.
2.  **⚙️ Pré-processamento**:
    *   **Encoding**: Transformação de variáveis categóricas para formato numérico.
    *   **Normalização**: Escalonamento de recursos para equilíbrio das variáveis.
    *   **PCA (Principal Component Analysis)**: Redução de dimensionalidade para extração de componentes relevantes.
3.  **🤖 Modelagem**:
    *   **Não Supervisionado**: Agrupamento (`K-Means`) e Detecção de Anomalias (`Isolation Forest`).
    *   **Supervisionado**: Classificação via `Regressão Logística` e `Random Forest`.

---

## 🛠️ Tecnologias Utilizadas
*   **Linguagem**: ![Python](https://img.shields.io/badge/Python-3.11-3776AB?style=flat&logo=python&logoColor=white)
*   **Machine Learning**: `Scikit-learn`
*   **Análise de Dados**: `Pandas`, `NumPy`
*   **Visualização**: `Seaborn`, `Matplotlib`


---

## 🚀 Como Testar

### 💻 Via Jupyter Notebook (Local)
1.  **Instale as dependências**:
    ```bash
    pip install -r requirements.txt
    ```
2.  **Execute a aplicação**:
    Abra o Jupyter e execute o arquivo `main.ipynb`.



