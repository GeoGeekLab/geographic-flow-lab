# Geographic Flow Laboratory

**Field / OD / trajectory / release.**

Geographic Flow Laboratory is an independent GeoGeek Observatory deployment of the production movement-representation instrument. It keeps vector fields, origin-destination networks, timestamped trajectories, and Lagrangian releases separate so their meanings are not collapsed into one geometry.

## Public instrument

https://geogeeklab.github.io/geographic-flow-lab/

## Runtime

The production runtime is pinned to a specific commit of `GeoGeekLab/GeoGeekLab.github.io`. See `PRODUCTION.md` for the exact baseline, source semantics, interpretation limits, and deployment policy.

## Local shell

```bash
python -m http.server 8000
```

Open `http://localhost:8000`.

The instrument requires network access for its pinned runtime and declared upstream field/reference sources.

## Deployment

Pushes to `main` deploy through `.github/workflows/pages.yml`. Static production-contract checks run before the Pages artifact is uploaded.

Third-party software and data remain subject to their respective terms and licenses. This repository does not introduce a project license that is absent from the source project.
