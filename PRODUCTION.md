# Production contract

## Runtime baseline

This repository mounts the Geographic Flow Laboratory production module from `GeoGeekLab/GeoGeekLab.github.io` pinned to commit `d949bd75870bfd49f6d12b297e6cca02de107f9c`.

The runtime exposes four distinct movement representations: vector field, origin-destination network, timestamped trajectories, and Lagrangian release.

## Data contract

- Field: current wind when an upstream field is available; deterministic fallback remains explicitly labeled as fallback.
- OD: reproducible normalized teaching matrix with real city coordinates.
- Trips: reproducible timestamped teaching trajectories.
- Release: numerical advection through one frozen field snapshot.

## Interpretation limits

Representation is not phenomenon. OD arcs are not literal travelled routes. Teaching trajectories are not observed vehicles. Release particles are derived paths, not forecasts.

## Deployment contract

`main` deploys through GitHub Pages Actions. Static contract checks run before the Pages artifact is uploaded.

The production runtime is pinned to an immutable source commit. Runtime upgrades require an explicit pinned-SHA change in `index.html`.
