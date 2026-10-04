# Geographic Flow Laboratory

**Field / OD / trajectory / release**

Geographic Flow Laboratory is a comparative instrument for studying how movement changes when it is represented in different mathematical forms. A vector field, an origin–destination network, a timestamped trajectory set, and a Lagrangian release can all describe motion, but they do not describe the same thing.

> **GeoGeek principle:** Representation is not phenomenon.

## The question

What changes when the same broad idea — movement through geographic space — is encoded with a different grammar?

The laboratory keeps four representations separate so their assumptions remain inspectable rather than being collapsed into one attractive flow map.

## Four movement grammars

| Representation | What it encodes | What it does not prove |
| --- | --- | --- |
| Vector field | Direction and magnitude sampled over space | A set of observed routes |
| Origin–destination network | Quantity exchanged between named origins and destinations | The path actually travelled |
| Timestamped trajectories | Ordered positions through time | A continuous field between tracks |
| Lagrangian release | Numerically advected particles in a frozen field snapshot | A forecast of future transport |

The field view can use current upstream wind when available. Deterministic fallback data are explicitly identified as fallback. The OD and trajectory examples are reproducible teaching data, not observed transport records.

## Why the distinctions matter

Two maps can look similar while carrying different evidence. An arc between cities may show an OD relation, not a route. A particle path may be a numerical consequence of a field, not an observed object. A dense set of trajectories may reveal repeated motion without defining a continuous velocity field.

The laboratory is designed to make those category errors harder to make.

## Operational use

Use the four modes side by side to examine:

- how spatial continuity differs from discrete connection;
- how time enters a trajectory but may be absent from an OD matrix;
- how a model-derived path differs from an observed track;
- how visual similarity can hide different source semantics.

**Public instrument**  
https://geogeeklab.github.io/geographic-flow-lab/

The entry repository loads the production module from `GeoGeekLab/GeoGeekLab.github.io`, pinned to commit `d949bd75870bfd49f6d12b297e6cca02de107f9c`.

See [`PRODUCTION.md`](./PRODUCTION.md) for source semantics, fallback behavior, and interpretation limits.

For local inspection:

```bash
python -m http.server 8000
```

---

**GeoGeek Observatory** — maps are arguments about data, not just pictures of it.
