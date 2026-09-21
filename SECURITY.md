# Security notes

The current shell contains no authentication, clinical persistence, financial logic, or network calls. It intentionally seeds no patient data. Before commercial deployment, implement authentication with Argon2id/PBKDF2, role authorization, SQLite transactions, DPAPI-backed secrets, validated attachment paths, structured privacy-safe logs, backup integrity checks, and audit events.
