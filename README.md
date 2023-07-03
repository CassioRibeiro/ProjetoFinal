![bannergithub](https://github.com/CassioRibeiro/ProjetoFinal/assets/120439075/89aadd85-e874-4288-8009-5d2099cce9d9)

<p align="center">
  <img src="https://img.shields.io/badge/Bitcoin-000?style=for-the-badge&logo=bitcoin&logoColor=white" alt="Bitcoin">
  <img src="https://img.shields.io/badge/Binance-FCD535?style=for-the-badge&logo=binance&logoColor=white" alt="Binance">
  <img src="https://img.shields.io/badge/dogecoin-B59A30?style=for-the-badge&logo=dogecoin&logoColor=white" alt="Dogecoin">
  <img src="https://img.shields.io/badge/Ethereum-3C3C3D?style=for-the-badge&logo=Ethereum&logoColor=white" alt="Ethereum">
  <img src="https://img.shields.io/badge/Litecoin-A6A9AA?style=for-the-badge&logo=Litecoin&logoColor=white" alt="Litecoin">
  <img src="https://img.shields.io/badge/polkadot-E6007A?style=for-the-badge&logo=polkadot&logoColor=white" alt="Polkadot">
  <img src="https://img.shields.io/badge/tether-168363?style=for-the-badge&logo=tether&logoColor=white" alt="Tether">
  <img src="https://img.shields.io/badge/Xrp-black?style=for-the-badge&logo=xrp&logoColor=white" alt="Xrp">
</p>


<h1 align="center"> :part_alternation_mark: Visão Geral :chart_with_upwards_trend: </h1>

> Este repositório (FAD-M5) contém os arquivos utilizados para construção dos relatórios de análise referentes ao Módulo 5 (Visualização de Dados com Power BI e Tableau, Postura Profissional e Inovação) do curso de Formação em Análise de Dados promovido pela parceria SENAC/Resilia. Neste caso, é detalhado o projeto em grupo do módulo (projeto final de conclusão).
---
<h1 align="center"> :pencil2: Contexto :pushpin: </h1>

> Nossa equipe representa a empresa Bender Inc, escalada por uma corretora financeira para realizar uma análise exploratória relacionada à série histórica dos valores de criptomoedas. As fontes de dados que serão utilizadas no projeto estão disponíveis no Kaggle. Serão utilizados os arquivos correspondentes à toda a [série histórica](https://www.kaggle.com/datasets/klemdoug/top20coinmarketcapjune2023) do top 20 das criptomoedas, além dos arquivos dos últimos [30 dias](https://www.kaggle.com/datasets/klemdoug/top-20-crypto-last-30-days-june-2023-coinmarketcap) de cada token (consideramos 23/06/2023 o dia da extração desses arquivos).

> As perguntas a serem respondidas estão concentradas no comportamento dos valores para todas as criptomoedas. Isso envolve a análise de tendências de queda, aumento, valores médios, valorizações, medidas de interesse e correlações implícitas.

---
<h1 align="center"> :open_file_folder: Estruturação :paperclip: </h1>

* **[M5] Notebook.ipynb**: arquivo para documentação do tratamento de dados prévio, análise exploratória inicial e registro de insights e referências bibliográficas;
* **M5pbix**: pasta contendo a versão zipada e particionada do arquivo M5.pbix (M5.part1.rar e M5.part1.rar), contendo o conjunto de dashboards interativos que dão continuidade e centralizam a análise exploratória;
* **[M5] CriptoDBCreate&Queries.sql**: montagem do banco de dados na forma não-relacional e códigos de consulta para verificação dos questionamentos pertinentes ao escopo do projeto;
* **[M5] CriptoDBCreate2.sql**: montagem do banco de dados na forma relacional;
* **[M5] CriptoDB_Backup.sql**: arquivo .bak do banco de dados não-relacional anterior;
* **[M5] Presents.pdf**: slides de apoio à apresentação final do projeto;
* **[M5] requirements.txt**: arquivo .txt informando quais bibliotecas foram usadas no projeto;
* **README.md**: visão geral do projeto, documentando o contexto de análise, arquivos utilizados, ferramentas de trabalho envolvidas e equipe de desenvolvimento.

---

<h1 align="center"> :construction: Construção :wrench: </h1>

<div align="center">
  <h4 style="display: inline-block; margin-right: 10px;">Fóruns</h4>
  <img src="https://img.shields.io/badge/Kaggle-035a7d?style=for-the-badge&logo=kaggle&logoColor=white" alt="Kaggle" style="vertical-align: middle;">
</div>

<div align="center">
  <h4 style="display: inline-block; margin-right: 10px;">Editores de Código/IDEs</h4>
  <img src="https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54" alt="Python" style="vertical-align: middle;">
  <img src="https://img.shields.io/badge/Visual%20Studio%20Code-0078d7.svg?style=for-the-badge&logo=visual-studio-code&logoColor=white" alt="Visual Studio Code" style="vertical-align: middle;">
  <img src="https://img.shields.io/badge/jupyter-%23FA0F00.svg?style=for-the-badge&logo=jupyter&logoColor=white" alt="Jupyter Notebook" style="vertical-align: middle;">
</div>

<div align="center">
  <h4 style="display: inline-block; margin-right: 10px;">Bibliotecas</h4>
  <img src="https://img.shields.io/badge/pandas-%23150458.svg?style=for-the-badge&logo=pandas&logoColor=white" alt="Pandas" style="vertical-align: middle;">
  <img src="https://img.shields.io/badge/numpy-%23013243.svg?style=for-the-badge&logo=numpy&logoColor=white" alt="NumPy" style="vertical-align: middle;">
  <img src="https://img.shields.io/badge/Matplotlib-%23ffffff.svg?style=for-the-badge&logo=Matplotlib&logoColor=black" alt="Matplotlib" style="vertical-align: middle;">
  <img src="https://img.shields.io/badge/scikit--learn-%23F7931E.svg?style=for-the-badge&logo=scikit-learn&logoColor=white" alt="scikit-learn" style="vertical-align: middle;">
</div>

<div align="center">
  <h4 style="display: inline-block; margin-right: 10px;">Banco de Dados</h4>
  <img src="https://img.shields.io/badge/Microsoft%20SQL%20Server-CC2927?style=for-the-badge&logo=microsoft%20sql%20server&logoColor=white" alt="Microsoft SQL Server" style="vertical-align: middle;">
</div>

<div align="center">
  <h4 style="display: inline-block; margin-right: 10px;">Visualização de Dados</h4>
  <img src="https://img.shields.io/badge/Microsoft_Excel-217346?style=for-the-badge&logo=microsoft-excel&logoColor=white" alt="Microsoft Excel" style="vertical-align: middle;">
  <img src="https://img.shields.io/badge/power_bi-F2C811?style=for-the-badge&logo=powerbi&logoColor=black" alt="Power BI" style="vertical-align: middle;">
</div>

<div align="center">
  <h4 style="display: inline-block; margin-right: 10px;">Design</h4>
  <img src="https://img.shields.io/badge/figma-%23F24E1E.svg?style=for-the-badge&logo=figma&logoColor=white" alt="Figma" style="vertical-align: middle;">
</div>

<div align="center">
  <div>
     <h4>Gestão de Projeto</h4>
  <p align="center">
    <img src="https://img.shields.io/badge/Trello-%23026AA7.svg?style=for-the-badge&logo=Trello&logoColor=white" alt="Trello">
    <img src="https://img.shields.io/badge/Discord-%235865F2.svg?style=for-the-badge&logo=discord&logoColor=white" alt="Discord">
  </p>
</div>
  
  <div>
    <h4>Apresentação do Projeto</h4>
    <p align="center">
      <img src="https://img.shields.io/badge/Zoom-2D8CFF?style=for-the-badge&logo=zoom&logoColor=white" alt="Zoom">
    </p>
  </div>
  <div>
    <h4>Controle de Versão</h4>
    <p align="center">
      <img src="https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white" alt="GitHub">
    </p>
  </div>
</div>

---
<h1 align="center"> :busts_in_silhouette: Equipe :speech_balloon: </h1>

<div align="center">
  <div>
    <h3>Cássio Ribeiro</h3>
    <a href="https://www.linkedin.com/in/cassiocpr/">
      <img src="https://img.shields.io/badge/linkedin-%230077B5.svg?style=for-the-badge&logo=linkedin&logoColor=white" alt="LinkedIn">
    </a>
    <h3>Diego Nieto</h3>
    <a href="https://www.linkedin.com/in/diego-nieto-85749ab9/">
      <img src="https://img.shields.io/badge/linkedin-%230077B5.svg?style=for-the-badge&logo=linkedin&logoColor=white" alt="LinkedIn">
    </a>
    <h3>Douglas Klem</h3>
    <a href="https://www.linkedin.com/in/klemdoug/">
      <img src="https://img.shields.io/badge/linkedin-%230077B5.svg?style=for-the-badge&logo=linkedin&logoColor=white" alt="LinkedIn">
    </a>
    <h3>Stephanie Vale</h3>
    <a href="https://www.linkedin.com/in/stephanie-ferreira1/">
      <img src="https://img.shields.io/badge/linkedin-%230077B5.svg?style=for-the-badge&logo=linkedin&logoColor=white" alt="LinkedIn">
    </a>
  </div>
</div>


___

