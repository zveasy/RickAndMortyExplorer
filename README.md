# Rick & Morty Explorer

A lightweight iOS app built with **SwiftUI** and the **MVVM** pattern that consumes the public [Rick and Morty API](https://rickandmortyapi.com/).  
It demonstrates:

* Async/await networking with `URLSession`
* Value‑based navigation using `NavigationStack`
* Image loading via `AsyncImage`
* Clean separation of **Models**, **ViewModels**, **Views**, and **Network** layers

| List Screen | Detail Screen |
|-------------|---------------|
| <img src="Screenshots/list.png" width="250"> | <img src="Screenshots/detail.png" width="250"> |

---

## Features

| Screen | Description |
|--------|-------------|
| **Character List** | Displays all characters (first API page) in a `List` with avatar, name and species. |
| **Character Detail** | Shows large artwork plus status and origin after you tap a row. |
| **Pull‑to‑Refresh** | Simply rebuild after adding `refreshable { await vm.load() }`—architecture already supports it. |

---

## Project Structure

RickAndMortyExplorer
├── RickAndMortyExplorerApp.swift ⇢ entry‑point
└── Sources
├── Network
│ └── APIService.swift ⇢ REST client
├── Models
│ └── Character.swift ⇢ Decodable + Identifiable + Hashable
├── ViewModels
│ ├── CharacterListViewModel.swift
│ └── CharacterDetailViewModel.swift
└── Views
├── CharacterListView.swift
├── CharacterRowView.swift
└── CharacterDetailView.swift

yaml
Copy
Edit

---

## Requirements

* **Xcode 15** or later  
* **iOS 17** SDK (runs on iOS 15+)  
* No API key or authentication needed

---

## Getting Started

```bash
git clone https://github.com/<your‑handle>/RickAndMortyExplorer.git
cd RickAndMortyExplorer
open RickAndMortyExplorer.xcodeproj   # or .xcworkspace if you add Swift Packages
Choose an iPhone simulator (e.g. iPhone 15).

Press ⌘R to build & run.

Scroll the list and tap a character for details.

Attribution
This project uses the Rick and Morty API but is not affiliated with or endorsed by Rick and Morty or Adult Swim.

API Terms → https://rickandmortyapi.com/documentation

License
MIT — see LICENSE for details.
