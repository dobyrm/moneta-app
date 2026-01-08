# Moneta

The application allows the user to keep track of expenses, add categories, and view statistics on expenses for periods.

## Running the App

```bash
flutter run
```

## Lib Directory Structure

```
lib/
├─ main.dart
├─ config/
│   └─ app_config.dart
├─ routing/
│   ├─ app_router.dart
│   └─ routes.dart
├─ data/
│   ├─ services/
│   │   ├─ auth_api_service.dart
│   │   ├─ expense_api_service.dart
│   │   ├─ category_api_service.dart
│   │   └─ stats_api_service.dart
│   ├─ repositories/
│   │   ├─ auth_repository.dart
│   │   ├─ expense_repository.dart
│   │   ├─ category_repository.dart
│   │   └─ stats_repository.dart
│   └─ models/
│       ├─ user_api_model.dart
│       ├─ expense_api_model.dart
│       ├─ category_api_model.dart
│       └─ stats_api_model.dart
├─ domain/
│   └─ models/
│       ├─ user.dart
│       ├─ expense.dart
│       ├─ category.dart
│       └─ stats.dart
├─ ui/
│   ├─ core/
│   │   ├─ widgets/
│   │   │   ├─ expense_card.dart
│   │   │   ├─ category_selector.dart
│   │   │   └─ chart_widget.dart
│   │   └─ themes/
│   │       └─ app_theme.dart
│   ├─ auth/
│   │   ├─ view_models/
│   │   │   └─ login_view_model.dart
│   │   └─ views/
│   │       ├─ login_screen.dart
│   │       └─ register_screen.dart
│   ├─ home/
│   │   ├─ view_models/
│   │   │   └─ home_view_model.dart
│   │   └─ views/
│   │       └─ home_screen.dart
│   ├─ expense/
│   │   ├─ view_models/
│   │   │   └─ add_expense_view_model.dart
│   │   └─ views/
│   │       └─ add_expense_screen.dart
│   ├─ category/
│   │   ├─ view_models/
│   │   │   └─ category_view_model.dart
│   │   └─ views/
│   │       └─ category_screen.dart
│   └─ stats/
│       ├─ view_models/
│       │   └─ stats_view_model.dart
│       └─ views/
│           └─ stats_screen.dart

```

## Data Flow

```
[API] → [Service] → [Repository] → [ViewModel] → [UI Widget]
        ^                                        |
        |                                        v
    Data Model (UserApi | ExpenseApi)           Domain Model (User | Expense)
```

## License

MIT License.
