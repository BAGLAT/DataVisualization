#!/usr/bin/env python
# coding: utf-8

# In[1]:


import pandas as pd
import plotly.express as px


# In[2]:


df = pd.read_csv("Nightangle Dataset Used.csv")


# In[3]:


for row in df.iterrows(): 
    df['Zymotic disease'] = 10*(df['Zymotic diseases'])
    df['Wounds & injury'] = 10*(df['Wounds & injuries'])
    df['All other cause'] = 10*(df['All other causes'])


# In[4]:


df


# In[5]:


from math import pi,sqrt


# In[6]:


import numpy as np


# In[7]:


for row in df.iterrows(): 
    df['Zymotic_disease_R'] = np.sqrt((24*(df['Zymotic disease'])/pi).astype(float)).round(2)
    df['Wounds_injury_R'] = np.sqrt((24*(df['Wounds & injury'])/pi).astype(float)).round(2)
    df['All_other_cause_R'] = np.sqrt((24*(df['All other cause'])/pi).astype(float)).round(2)


# In[8]:


df


# In[9]:


Zymotic_R_list = df.Zymotic_disease_R.tolist()
Wounds_R_list = df.Wounds_injury_R.tolist()
otherCause_R_list = df.All_other_cause_R.tolist()


# In[10]:


df.columns


# In[11]:


Zymotic_disease_list  = df['Zymotic disease'].tolist()
Wounds_injury_list  = df['Wounds & injury'].tolist()
All_otherCause_list = df['All other cause'].tolist()
months = df['Month'].tolist()


# In[12]:


import plotly.graph_objects as go
fig = go.Figure(layout = dict(paper_bgcolor = 'pink'))


fig.add_trace(go.Barpolar(
    theta = months,
    r=Wounds_R_list,
    name='Wounds & injury',
    marker_color='black',
    text = Wounds_injury_list
))
#fig.update_traces(text= Wounds_injury_list)

fig.add_trace(go.Barpolar(
    theta = months,
    r=otherCause_R_list,
    name='All other cause',
    marker_color='orange',
    text = All_otherCause_list
))
#fig.update_traces(text=All_otherCause_list)


fig.add_trace(go.Barpolar(
    theta = months,
    r=Zymotic_R_list,
    name='Zymotic disease',
    marker_color='red',
    text = Zymotic_disease_list
))
#fig.update_traces(text=Zymotic_disease_list)

fig.update_layout(
    #plot_bgcolor='rgb(169,169,169)',
    title='Annual Rates of Mortality per 10000',
    #font_size=110,
    legend_font_size=20,
    polar_radialaxis_ticksuffix = '',
    polar_angularaxis_rotation=90,
    font=dict(
        family="Courier New, monospace",
        size=18,
        color="black")
)

fig.show()


# In[13]:


import plotly.graph_objects as go
fig = go.Figure(layout = dict(paper_bgcolor = 'pink'))


fig.add_trace(go.Barpolar(
    theta = months,
    r=Wounds_R_list,
    name='Wounds & injury',
    marker_color='black',
    text = Wounds_injury_list
))
#fig.update_traces(text= Wounds_injury_list)

fig.add_trace(go.Barpolar(
    theta = months,
    r=otherCause_R_list,
    name='All other cause',
    marker_color='orange',
    text = All_otherCause_list
))
#fig.update_traces(text=All_otherCause_list)


fig.add_trace(go.Barpolar(
    theta = months,
    r=Zymotic_R_list,
    name='Zymotic disease',
    marker_color='red',
    text = Zymotic_disease_list
))
#fig.update_traces(text=Zymotic_disease_list)

fig.update_layout(
    #plot_bgcolor='rgb(169,169,169)',
    title='Annual Rates of Mortality per 10000',
    #font_size=110,
    legend_font_size=20,
    polar_radialaxis_ticksuffix = '',
    polar_angularaxis_rotation=90,
    font=dict(
        family="Courier New, monospace",
        size=18,
        color="black")
)

fig.show()


# In[ ]:




