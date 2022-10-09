# House Rocket Data

![House Rocket Data](img/house_rocket.png)

# Problema de negócios

Identificação de imóveis abaixo do preço médio de venda e definição do preço ideal de revenda, a partir de uma análise exploratória de dados em Python.

# Estratégia da Solução

Realizar a análise exploratória de dados nas propriedades disponíveis no conjunto de dados.
Determinar quais propriedades deveriam ser compradas de acordo com os critérios do negócio.
Desenvolver um dashboard online que possa ser acessado pelo CEO através de um celular ou computador.

# Top Data Insights 

Uma visualização de mapa com propriedades disponíveis.
![HouseMap](img/house_map.png)


Uma visualização de tabela com filtros de atributos.
![HouseMap](img/house_data.png)


# Conjunto de Dados

O conjunto de dados está disponível na plataforma kaggle(https://www.kaggle.com/harlfoxem/housesalesprediction).


# Top Data Insights 


Sales grow more the shorter the distance to a competitor. 

![salesByCompetitionDistance](img/sales_by_competition_distance.png)

Sales grow more to store types "A" and "D". 
Sales grow more in public Holidays.
Sales grow more to smaller assortment.

![sales](img/sales_by_store_type_hollidays.png)


## Machine Learning Models

I used in this step the models:
* Average - Baseline
* Linear Regression
* Lasso Regression
* Random Forest Regressor
* XGBoost Regressor

The perfromance result indicate that i continue with XGBoost and Random Forest Models.


## Models Performance

XGBoost presents the best performance and time of execution, with a accuracity of **98.1%**.

![xgboostFinalPerformance](img/xgboostFinalPerformance.png)


## Convert Model Performance to Business Values

In test data, I calcuted the prediction and comparision with the worst and better cenaries. The model brings a safety data to the CEO decision to sales reform investiment.

![businessPerformance](img/businessPerformance.png)


# Who i am

My name is Saulo Ferreira Cunha, IT student since 2004 and i'm a Data scientist in formation. 

Email: saulofcunha@outlook.com

Linkedin: https://www.linkedin.com/in/saulo-ferreira-cunha-6a6ba232/
