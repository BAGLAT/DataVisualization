# DataVisualization
Minard's Map visualization using R and Nightangle Coxcomb using Python Plotly.
1. Minard’s Map with Toner Mapping

The chart depicts Napoleon's army retreating the Polish-Russian border.
A thick band depicts the size of his army at specific geographic points during their advance and retreat. It displays six types of
data in two dimensions: the number of Napoleon's troops; the distance travelled, temperature, latitude and longitude, direction of 
travel, and location relative to specific dates without making mention of Napoleon.
The numbers of men present are represented by the widths of the coloured zones at a rate of one millimetre for every ten thousand men, 
they are further written across the zones. The golden designates the men who enter Russia, the red those who leave it.

Tool: R Studio
Language: R
Library:  library(tidyverse), library(lubridate), library(ggmap), library(ggrepel), library(gridExtra)
library(pander)

The Minard’s chart is made using R. ggmap package is used to retrieve map tiles from popular online mapping services 
like Google Maps and Stamen Maps and plot them using the ggplot2 framework. Mapping style used here is “toner-background”. 
Key items displayed on the chart are as below:
•	Position of cities and the forward and retrieval path.
•	Number of survivors along the path.
•	Temperature (In Celsius) is shown both on the departure path as well as a separate graph.

2. Minard’s Map with Terrain Mapping

Focused on colour variation and mapping styles. 
•	Used Terrain Mapping style of stamenmap function of ggmap package.
•	Used colour Light blue for forward path and green to show departure.
•	Used steelblue colour to depict temperature on the retreating path.

Tool: R Studio
Language: R
Library:  library(tidyverse), library(lubridate), library(ggmap), library(ggrepel), library(gridExtra)
library(pander)

3. Nightingale's Coxcomb
Above wind rose chart depicts the annual rate of death toll per 10’000 in Hospitals of Turkey from Apr’1854-Mar’1855 where 
soldiers were hospitalized due to the severe health conditions mainly due to Wounds & injury and Zymotic diseases.Each trace 
displays a death count, year and the reason for death along with radius. Three main causes of deaths are shown as legends using 
three colors(Black, Yellow and Red). Highlighted trace shows that in year 1855 around 10228 people per 10’000 died through 
Zymotic disease had the circumstances of month Jan’1855 has been replicated throughout the year. 
The above polar bar chart is made through plotly.graph_objects library in Python.

Tool: Jupyter Notebook
Language: Python
Library: plotly.graph_objects

4. Nightingale's Coxcomb Zoomed and Rotated
Above wind rose chart is the zoomed rotated version of Fig1 where least amount of death toll from Wounds
and injury is displayed for the year Nov’1854. Highlighted trace shows that in year 1854 around 1158 people per 10’000 died through
Wounds & injury had the circumstances of month Nov’1854 has been replicated throughout the year. As per the chart we can understand
that from Apr’1854-Mar’1855 least number of deaths were caused by Wounds & Injury. Nightingale has depicted clearly through the 
coxcomb chart that soldiers were dying needlessly from malnutrition, poor sanitation, and lack of activity. Using drag, 
rotate and zoom options of plotly polar chart can be rotated and visualized through different angles.

Tool: Jupyter Notebook
Language: Python
Library: plotly.graph_objects

