

## 🚀 Getting Started

Follow these steps to set up and run the project on your machine:

1. **Clone the Repository**

   ```bash
   git clone https://github.com/Ifte234/flutter_clean_architecture_example
   cd your-flutter-project
   ```

2. **Install Dependencies**

   ```bash
   flutter pub get
   ```

3. **Run the App**

   ```bash
   flutter run
   ```

4. **Make It Your Own**

   * Rename the project using tools like `rename` if needed.
   * Update `pubspec.yaml` with your own project information.
   * Replace the package name and app icons for branding.

---

## 📁 Project Structure Overview

Your Flutter project is organized using a clean architecture approach, divided into well-defined layers:

```
lib/
│
├── common/               # Shared BLoC/Cubit logic and reusable widgets
│
├── core/                 # App-wide constants, themes, and network setup
│
├── configuration/        # Localization, routing, theme management
│
├── domain/               # Business logic layer
│   ├── entities/         # Core data structures
│   ├── repositories/     # Repository interfaces
│   └── usecases/         # Application-specific use cases
│
├── data/                 # Data access and handling
│   ├── models/           # Data models
│   ├── datasources/      # APIs, databases, etc.
│   └── repositories/     # Repository implementations
│
├── presentation/         # UI layer: screens, widgets, BLoC/Cubit
│
├── your_feature/         # (Optional) Feature-specific modules
│
├── main.dart             # Application entry point
└── service_locator.dart  # Dependency injection setup
```

---

## ✨ Adding a New Feature

To scale your app cleanly, follow this modular structure for each feature:

1. **Create a Feature Directory**

   Inside `lib/`, create a new folder for your feature:

   ```bash
   mkdir lib/your_feature
   ```

2. **Set Up Feature Layers**

   Inside your feature folder, organize by layers:

   ```
   lib/your_feature/
   ├── data/                 # Models, data sources, repository implementations
   ├── domain/               # Entities, repository interfaces, use cases
   └── presentation/         # Screens, widgets, BLoC/Cubit
   ```

3. **Implement Core Logic**

   * **Entities**: Define your core data models in `domain/entities/`.
   * **Use Cases**: Add your business rules in `domain/usecases/`.
   * **Repositories**: Create interfaces in `domain/repositories/` and implement them in `data/repositories/`.
   * **Data Sources**: Handle API, database, or local storage in `data/datasources/`.
   * **Models**: Map external data to internal entities in `data/models/`.

4. **Build the UI**

   Develop your screens and widgets in `presentation/`, and manage their state using BLoC or Cubit.

5. **Connect Everything**

   * **Dependency Injection**: Register your new feature’s services in `service_locator.dart`.
   * **Routing**: Add your screens to the app’s route configuration (e.g., update `configuration/routes.dart`).

---

## ✅ Benefits of This Structure

* 🔄 **Modular** – Easy to scale and maintain.
* 🧪 **Testable** – Separation of concerns improves testability.
* ♻️ **Reusable** – Logic and UI are decoupled for maximum flexibility.
* 📦 **Organized** – Clean folder structure for efficient collaboration.

---

## 📜 License

This project is licensed under the [MIT License](LICENSE). Feel free to use, modify, and distribute as you see fit.

---

> *Happy coding!* ✨
