# Geographic Flow Laboratory

**Vector field · origin–destination graph · trajectory · Lagrangian advection**

*GEOGRAPHIC FLOW LABORATORY* is a GIS and geovisual-analytics instrument for comparing four representations of movement through geographic space: Eulerian vector fields, origin–destination relations, timestamped trajectories, and Lagrangian particle releases.

<p align="center">
  <a href="https://geogeeklab.github.io/geographic-flow-lab/">
    <img src="https://geogeeklab.github.io/geographic-flow-lab/assets/instrument.png" alt="Geographic Flow Laboratory instrument" width="720">
  </a>
</p>

## Laboratory capabilities

- **Examine vector fields.** Visualize spatially distributed direction and magnitude and change field sampling density.
- **Analyze origin–destination relations.** Compare weighted links among discrete places and inspect connectivity and interaction intensity.
- **Inspect trajectories.** Follow time-ordered coordinate sequences and examine route geometry and temporal ordering.
- **Run particle releases.** Seed particles into a vector field and numerically advect them through the selected field state.
- **Switch representations.** Compare field, OD, trajectory, and release modes within one geographic view.
- **Control analytical support.** Adjust field sampling, release conditions, and representation-specific parameters.

## Representation model

| Representation | Formal object | Geographic interpretation |
| --- | --- | --- |
| Vector field | Spatially distributed vector function **u(x, t)** | Direction and magnitude defined over geographic space |
| Origin–destination network | Weighted directed graph between discrete places | Spatial interaction, connectivity, and aggregate flow intensity |
| Trajectory | Time-ordered coordinate sequence **xᵢ(t)** | Movement history through space and time |
| Lagrangian release | Numerical solution of **dx/dt = u(x, t₀)** for seeded particles | Flow-following transport through a selected field state |

Each representation carries its own spatial unit, temporal support, and measurement semantics. Field mode describes a variable over space. OD mode describes relations between places. Trajectory mode records ordered positions. Release mode computes transport from a velocity field.

## Spatial computation

Field mode can request near-current wind variables from the [Open-Meteo Weather API](https://open-meteo.com/en/docs) and construct a sampled velocity field for inspection. OD and trajectory modes use reproducible teaching datasets with geographic coordinates, weights, and timestamps. Release mode performs numerical advection through one selected field state.

The laboratory covers:

- spatial interaction modeling;
- network geography;
- trajectory analysis;
- field-based GIS;
- Lagrangian transport;
- geovisual analytics.

## Scale and support

Field sampling density sets the spatial resolution of the velocity representation. OD nodes set the locations of interaction aggregation. Trajectory timestamps set temporal granularity. Numerical integration step size controls the computed particle path.

These parameters can be changed directly in the analysis workflow.

## Instrument access

**Live instrument:** https://geogeeklab.github.io/geographic-flow-lab/

Source runtime: [`GeoGeekLab/GeoGeekLab.github.io`](https://github.com/GeoGeekLab/GeoGeekLab.github.io)  
Pinned revision: [`SOURCE.json`](./SOURCE.json)  
Production contract: [`PRODUCTION.md`](./PRODUCTION.md)

*GeoGeek note — representation determines the question you can ask.*
