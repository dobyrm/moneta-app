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
│   │   ├─ expense_api_service.dart
│   │   ├─ category_api_service.dart
│   │   └─ stats_api_service.dart
│   ├─ repositories/
│   │   ├─ expense_repository.dart
│   │   ├─ category_repository.dart
│   │   └─ stats_repository.dart
│   └─ models/
│       ├─ expense_api_model.dart
│       ├─ category_api_model.dart
│       └─ stats_api_model.dart
├─ domain/
│   └─ models/
│       ├─ expense.dart
│       ├─ category.dart
│       └─ stats.dart
├─ ui/
│   ├─ core/
│   │   ├─ widgets/
│   │   │   ├─ expense_card.dart
│   │   │   ├─ category_selector.dart
│   │   │   └─ stats_widget.dart
│   │   └─ themes/
│   │       └─ app_theme.dart
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
