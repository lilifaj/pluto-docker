FROM julia:1.8.5-bullseye

WORKDIR /opt/julia-pluto/notebooks/

EXPOSE 1234

RUN julia -e 'using Pkg; Pkg.add("Pluto")'
CMD julia -e 'using Pluto;Pluto.run(;host="0.0.0.0", port=1234, require_secret_for_open_links=false, require_secret_for_access=false)'
