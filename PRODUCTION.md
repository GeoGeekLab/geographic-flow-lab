# Production contract

`geographic-flow-lab` is the public entrypoint for the production *GEOGRAPHIC FLOW LABORATORY*.

## Runtime

- Source repository: `GeoGeekLab/GeoGeekLab.github.io`
- Tested source revision: `064ce2c718499fc26a744a9e58cad09d97a323fb`
- Production channel: `https://geogeeklab.github.io/`
- Shared bootstrap: `/core/observatory-entry.js`
- Flow runtime: `/flow-lab.js` + `/flow-lab-polish.js`
- Provider control: `/core/provider-stability.js` + `/core/data-supply.js`

The entrypoint and main Lab use the same field, OD, trajectory, release, and display runtime.

## Data and reference supply

Current wind sampling uses the production Flow provider path. Natural Earth reference geometry is normalized by the shared provider-stability layer to a fixed source revision. Teaching OD and trajectory datasets remain defined by the main production runtime.

## Release checks

The repository validates the source revision, shared bootstrap reference, Chromium instrument mount, absence of `.instrument-error`, provider/Data Supply installation, absence of floating Natural Earth requests, instrument screenshot, Pages deployment, and the deployed public endpoint.
