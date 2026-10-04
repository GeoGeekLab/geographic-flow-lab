# Geographic Flow Laboratory

**Vector field · origin–destination · trajectory · Lagrangian release**

Geographic Flow Laboratory is a GIS instrument for comparing four distinct representations of movement through geographic space. It places Eulerian fields, origin–destination relations, timestamped trajectories, and Lagrangian particle releases in a common analytical environment while preserving the different spatial ontologies and measurement supports of each representation.

![Geographic Flow Laboratory instrument](https://geogeeklab.github.io/geographic-flow-lab/assets/instrument.png)

## Representation model

| Representation | Spatial meaning | Analytical use |
| --- | --- | --- |
| Vector field | Direction and magnitude defined over continuous space | Regional flow structure and local directional context |
| Origin–destination network | Weighted relation between discrete places | Interaction intensity and connectivity |
| Trajectory | Time-ordered positions of individual moving entities | Path geometry, timing, and movement sequence |
| Lagrangian release | Numerically advected particles in a velocity field | Flow-following transport and dispersion structure |

The laboratory makes these representations directly comparable because many geographic-flow questions depend on choosing the correct spatial support. A field describes a property of space; an OD matrix describes relations between places; a trajectory records movement through time; and a release derives paths from a field.

## Spatial computation

The field view can use current wind observations when the upstream service is available. OD and trajectory modes use reproducible teaching datasets with geographic coordinates and timestamps. Release mode performs numerical advection through a frozen field realization, linking Eulerian and Lagrangian perspectives on the same spatial process.

This combination supports discussion of network geography, movement ecology, transport geography, spatial interaction, trajectory analysis, and geovisual analytics.

## Instrument access

**Live instrument:** https://geogeeklab.github.io/geographic-flow-lab/

The repository is a public entrypoint to the production module maintained in `GeoGeekLab/GeoGeekLab.github.io`. `SOURCE.json` records the pinned source revision; `PRODUCTION.md` specifies representation semantics, data conditions, and deployment behavior.

*GeoGeek note — representation determines the question you can ask.*
