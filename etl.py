import streamlit as st
import pandas as pd
data={
    'name':['subhra','mukti','pradhan'],
    'age':[22,33,25]
}
st.title("Streamlit App")
df=pd.DataFrame(data)
st.write(df)