# GitHub workflow guidance

- Keep one workflow shape for Velnor, GitHub, and `both` lanes.
- Velnor is the default; GitHub uses pinned `ubuntu-26.04` only when selected.
- Pin every third-party action to a full commit SHA.
- Keep permissions least-privilege, concurrency bounded, and every job timed out.
- Preserve identical non-mutating semantics across lanes.
- Gate repository mutation with `matrix.config.writer`; `both` has one writer.
