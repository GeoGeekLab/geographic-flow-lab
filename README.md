# Geographic Flow Laboratory

**Vector field · origin–destination graph · trajectory · Lagrangian advection**

*GEOGRAPHIC FLOW LABORATORY* is a GIS and geovisual-analytics instrument for comparing four distinct representations of movement through geographic space. It places Eulerian vector fields, origin–destination relations, timestamped trajectories, and Lagrangian particle releases in a common analytical environment while preserving the spatial ontology, temporal support, and measurement unit of each representation.

<p align="center">
  <a href="https://geogeeklab.github.io/geographic-flow-lab/">
    <img src="https://geogeeklab.github.io/geographic-flow-lab/assets/instrument.png" alt="Geographic Flow Laboratory instrument" width="720">
  </a>
</p>

## Representation model

| Representation | Formal object | Geographic interpretation |
| --- | --- | --- |
| Vector field | Spatially distributed vector function **u(x, t)** | Direction and magnitude defined over geographic space |
| Origin–destination network | Weighted directed graph between discrete places | Spatial interaction, connectivity, and aggregate flow intensity |
| Trajectory | Time-ordered coordinate sequence **xᵢ(t)** | Movement history of an individual entity through space and time |
| Lagrangian release | Numerical solution of **dx/dt = u(x, t₀)** for seeded particles | Flow-following transport through a frozen field realization |

The four representations answer different classes of geographic questions. A field characterizes a property distributed over space; an OD matrix encodes relational intensity between places; a trajectory records an ordered path through time; and a particle release derives transport pathways from a velocity field.

This distinction is central to spatial analysis because geometry alone does not determine semantics. Two visually similar lines may represent an inferred OD relation, an observed trajectory, or a numerically integrated streamline, each with a different analytical meaning.

## Spatial computation

Field mode can request near-current wind variables from the [Open-Meteo Weather API](https://open-meteo.com/en/docs), producing a spatially sampled velocity field for geovisual inspection. OD and trajectory modes use reproducible teaching datasets with geographic coordinates, weights, and timestamps. Release mode performs numerical advection through one frozen field state, providing an explicit bridge between Eulerian and Lagrangian descriptions of motion.

The laboratory therefore spans several GIScience domains:

- **spatial interaction modeling**, through weighted origin–destination relations;
- **network geography**, through node–edge connectivity and flow magnitude;
- **trajectory analysis**, through ordered spatiotemporal positions;
- **field-based GIS**, through continuous-space vector representation;
- **Lagrangian transport**, through numerical particle advection; and
- **geovisual analytics**, through coordinated comparison of multiple spatial representations.

## Analytical scale and support

Interpretation depends on the support of the represented variable. Field sampling density controls the spatial resolution of the velocity representation; OD nodes aggregate interaction at place locations; trajectory timestamps determine temporal granularity; and numerical integration step size affects the geometry of advected particles. These parameters make scale an explicit part of the analysis rather than a display-only setting.

## Instrument access

**Live instrument:** https://geogeeklab.github.io/geographic-flow-lab/

*GEOGRAPHIC FLOW LABORATORY* is a public entrypoint to the production module maintained in [`GeoGeekLab/GeoGeekLab.github.io`](https://github.com/GeoGeekLab/GeoGeekLab.github.io). [`SOURCE.json`](./SOURCE.json) records the pinned upstream revision, and [`PRODUCTION.md`](./PRODUCTION.md) specifies representation semantics, data conditions, and deployment behavior.

*GeoGeek note — representation determines the question you can ask.*
