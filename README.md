# 🎬 Anime Store  

**Anime Store** is a Flutter application designed to provide a smooth and engaging anime browsing experience.  
It showcases anime movies and characters, supports navigation to character details, and includes an upgrade plan screen.  
The project is built following **Clean Architecture** principles for scalability and maintainability.  

---

## 🚀 Features  

- 🎥 **Browse Movies** → Horizontal list of anime movies (dummy data).  
- 🧑‍🤝‍🧑 **Browse Characters** → Horizontal list of characters for each selected movie.  
- 📄 **Character Details Screen** →  
  - Shows character image.  
  - Displays description and info.  
  - Contains **2 buttons**:  
    - 🔍 **Preview** → Navigates to Upgrade Plan screen.  
    - 🎟️ **Upgrade Plan** → Choose subscription plan.  
- 💳 **Upgrade Plan Screen** → Select between **Monthly** or **Annually** subscription.  
- 🎨 **Modern UI** → Built with `google_fonts` & `google_navigation_bar`.  
- 🧪 **Dummy Data** → Used for Movies and Characters during development.  
- 🛠 **Clean Architecture** → Clear separation of concerns across layers.  
- 🗺 **App Routing** → Centralized navigation using `app_router.dart`.  

---

## 🏗 Project Architecture (Clean Architecture)  

```dart
lib/
  core/                      // Shared resources (theme, constants, etc.)
    colors.dart

  features/
    home/                    // Home module
      data/
        data_source/
          characters_dummy_data.dart
          movie_dummy_data.dart
        models/
          characters.dart
          movie.dart
      presentation/
        view/
          widgets/
            character_item.dart
            custom_tab.dart
            movie_item.dart
          home_screen.dart

    details/                 // Character details module
      presentation/
        view/
          widgets/
            action_button.dart
            info.dart
            details_screen.dart

    upgrade/                 // Upgrade plan module
      presentation/
        view/
          upgrade_screen.dart

  app_router.dart            // App navigation & routing
  main.dart                  // Entry point

  ```

  
---

## 📦 Packages Used  

- [google_fonts](https://pub.dev/packages/google_fonts) → Modern fonts.  
- [google_nav_bar](https://pub.dev/packages/google_nav_bar) → Bottom navigation bar.  

---

## 📱 App Screens

-   <img width="1152" height="720" alt="image" src="https://github.com/user-attachments/assets/c80702a2-ad84-4a62-9f99-770d84a73af5" />

  
## 📱 Demo Video    
👉 [Watch the demo here](https://github.com/user-attachments/assets/c22459b9-b258-46f3-8412-5a09bf3e4bf6)

---
## 🚀 Getting Started

To run the app:

```bash
flutter pub get
flutter run


## ▶️ How to Run  

1. Clone the repo:  
   ```bash
   git clone https://github.com/rehab-hamdi-selim/anime-store.git
   cd anime-store

