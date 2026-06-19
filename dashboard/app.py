import streamlit as st
import pandas as pd
import plotly.express as px
import time

st.set_page_config(
    page_title="FPGA Traffic Light Controller",
    page_icon="🚦",
    layout="wide"
)

st.title("🚦 FPGA Traffic Light Controller Dashboard")
st.markdown("### Verilog FSM Simulation Visualization")

if "state" not in st.session_state:
    st.session_state.state = 0

states = [
    ("NS Green", "🟢", "🔴"),
    ("NS Yellow", "🟡", "🔴"),
    ("EW Green", "🔴", "🟢"),
    ("EW Yellow", "🔴", "🟡")
]

col1, col2 = st.columns(2)

with col1:
    st.subheader("North-South Road")

with col2:
    st.subheader("East-West Road")

current = states[st.session_state.state]

with col1:
    st.markdown(f"# {current[1]}")

with col2:
    st.markdown(f"# {current[2]}")

st.success(f"Current State: {current[0]}")

c1, c2, c3 = st.columns(3)

with c1:
    if st.button("▶ Next State"):
        st.session_state.state = (st.session_state.state + 1) % 4
        st.rerun()

with c2:
    if st.button("🔄 Reset"):
        st.session_state.state = 0
        st.rerun()

with c3:
    auto = st.checkbox("Auto Cycle")

if auto:
    time.sleep(1)
    st.session_state.state = (st.session_state.state + 1) % 4
    st.rerun()

st.divider()

st.subheader("State Timing")

timing = pd.DataFrame({
    "State": [
        "NS Green",
        "NS Yellow",
        "EW Green",
        "EW Yellow"
    ],
    "Seconds": [
        12,
        3,
        12,
        3
    ]
})

fig = px.bar(
    timing,
    x="State",
    y="Seconds",
    title="Traffic Signal Timing"
)

st.plotly_chart(fig, use_container_width=True)

st.divider()

st.subheader("FSM State Transition")

transition = pd.DataFrame({
    "Order":[1,2,3,4],
    "State":[
        "NS Green",
        "NS Yellow",
        "EW Green",
        "EW Yellow"
    ]
})

st.dataframe(
    transition,
    use_container_width=True
)

st.divider()

st.subheader("Project Summary")

st.info("""
FPGA Traffic Light Controller implemented in Verilog HDL.

Features:
- Finite State Machine (FSM)
- Traffic Signal Sequencing
- Verilog Simulation
- Icarus Verilog Verification
- Streamlit Visualization Dashboard
- FPGA Deployment Ready
""")