.
├── features
│   ├── authentication
│   │   ├── data
│   │   │   ├── datasource
│   │   │   │   ├── auth_local_data_source_test.dart
│   │   │   │   └── auth_remote_data_source_test.dart
│   │   │   └── repositories
│   │   │       ├── atuhentication_repository_impl_test.dart
│   │   │       └── authentication_repository_impl_test.dart
│   │   ├── domain
│   │   │   ├── providers
│   │   │   │   └── providers_test.dart
│   │   │   └── repositories
│   │   └── presentation
│   │       ├── providers
│   │       │   └── auth_providers_test.dart
│   │       └── screens
│   └── dashboard
│       ├── data
│       │   ├── datasource
│       │   │   ├── dashboard_local_datasource_test.dart
│       │   │   └── dashboard_remote_datasource_test.dart
│       │   └── repositories
│       │       └── dashboard_repository_test.dart
│       ├── domain
│       │   ├── providers
│       │   │   └── dashboard_provider_test.dart
│       │   └── repositories
│       └── presentation
│           └── providers
│               ├── dashboard_provider_test.dart
│               └── state
│                   └── dashboard_state_test.dart
├── fixtures
│   ├── dashboard
│   │   └── dummy_productlist.dart
│   ├── data
│   │   ├── product_response.dart
│   │   └── user_map.dart
│   ├── dummy_data.dart
│   ├── test_fixture.dart
│   └── user_response.json
├── services
│   └── user_cache_service
│       ├── data
│       │   ├── datasource
│       │   │   └── user_local_datasource_test.dart
│       │   └── repositories
│       │       └── user_cache_repository_test.dart
│       ├── domain
│       │   ├── providers
│       │   │   └── user_cache_provider_test.dart
│       │   └── repositories
│       │       └── user_cache_repository_test.dart
│       └── presentation
├── shared
│   ├── data
│   │   ├── local
│   │   │   └── sharedpreferences_storage_service_test.dart
│   │   └── remote
│   │       └── dio_network_service_test.dart
│   ├── domain
│   │   ├── models
│   │   │   ├── paginated_response_test.dart
│   │   │   ├── parse_response_test.dart
│   │   │   ├── product
│   │   │   │   └── product_model_test.dart
│   │   │   ├── response_test.dart
│   │   │   └── user
│   │   │       └── user_model_test.dart
│   │   └── providers
│   │       └── providers_test.dart
│   ├── exceptions
│   │   └── http_exception_test.dart
│   └── mixins
│       └── exception_handler_mixin_test.dart
└── widget_test.dart

45 directories, 33 files
