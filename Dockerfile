FROM jupyter/datascience-notebook

USER jovyan

RUN  julia -e 'import Pkg; Pkg.update()' 
RUN   julia -e 'import Pkg; Pkg.add("HDF5") ; Pkg.add("Gadfly"); Pkg.add("Convex");Pkg.add("RDatasets"); Pkg.add("IJulia")' && \
    julia -e 'import Pkg; Pkg.add("Ipopt")' && \
    julia -e 'import Pkg; Pkg.add("DataFrames")' && \
    julia -e 'import Pkg; Pkg.add("JLD")' && \
    julia -e 'import Pkg; Pkg.add("Plots")' && \
    julia -e 'import Pkg; Pkg.add("PyCall")' && \
    julia -e 'import Pkg; Pkg.add("PyPlot")' && \
    julia -e 'import Pkg; Pkg.add("ExcelReaders")' && \
    julia -e 'import Pkg; Pkg.add("Dierckx")' && \
    julia -e 'import Pkg; Pkg.add("ProgressMeter")' && \
    julia -e 'import Pkg; Pkg.add("SCS")' && \
    julia -e 'import Pkg; Pkg.add("Interact")' && \
    julia -e 'import Pkg; Pkg.add("JuMP")'  && \
    julia -e 'import Pkg; Pkg.add("SQLite")' && \
    julia -e 'import Pkg; Pkg.add("LsqFit")' && \
    julia -e 'import Pkg; Pkg.add("Optim")' && \
    julia -e 'import Pkg; Pkg.add("NMF")' && \
    julia -e 'import Pkg; using HDF5' && \
    julia -e 'import Pkg; using Gadfly'&& \
    julia -e 'import Pkg; using RDatasets' && \
    julia -e 'import Pkg; using IJulia' && \
    julia -e 'import Pkg; using Interact' && \
    julia -e 'import Pkg; using Plots'&& \
    julia -e 'import Pkg; Pkg.add("Colors")'&& \
    julia -e 'import Pkg; using Colors'&& \
    julia -e 'import Pkg; Pkg.add("InstantiateFromURL")'&& \
    julia -e 'import Pkg; using InstantiateFromURL'&& \
    julia -e 'import Pkg; Pkg.add("QuantEcon")'&& \
    julia -e 'import Pkg; using QuantEcon'&& \
    julia -e 'import Pkg; Pkg.add("LearnBase"); Pkg.add("ColorTypes");Pkg.add("Queryverse") '
RUN julia -e 'import Pkg ; using ColorTypes;using LearnBase'
RUN julia -e 'import Pkg; Pkg.add("ViscousFlow"); using ViscousFlow '
RUN julia -e 'import Pkg; Pkg.add("Images"); using Images '
RUN julia -e 'import Pkg; Pkg.add("LightGraphs"); using LightGraphs '
RUN julia -e 'import Pkg; Pkg.add("Blink"); using Blink; Blink.AtomShell.install()'



