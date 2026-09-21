# Dentiva architecture

The repository currently contains a dependency-free, offline-first application shell intended as the UI foundation for a native Windows implementation. It uses semantic HTML/CSS and a small state-driven JavaScript presentation layer; the first-run clinic name is persisted locally and no clinical/demo records are seeded.

The production target is C#/.NET 8 WPF with MVVM, SQLite, EF Core migrations, DPAPI-protected credentials, local attachment storage and an MSIX/installer pipeline. This Linux checkout cannot compile or validate a Windows-native binary.
