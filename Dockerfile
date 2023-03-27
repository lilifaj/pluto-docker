FROM julia:1.8.5-alpine3.17

WORKDIR /opt/julia-pluto/notebooks/

EXPOSE 1234

RUN julia -e 'using Pkg; Pkg.add("Pluto")'
CMD julia -e 'using Pluto;Pluto.run(;host="0.0.0.0", port=1234)'
