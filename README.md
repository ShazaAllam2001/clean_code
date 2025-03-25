# Clean Code

## Project Structure
lib/
├── core/
│   └── service/
├── feature/display_screen/data/
│   ├── data_sources/
│   ├── models/
│   └── repositories/
├── feature/display_screen/domain/
│   ├── entities/
│   └── usecases/
└── feature/display_screen/presentation/
    ├── cubit/
    └── pages/

### service 
has dependency injection file for Cubit, UseCases, Repositories and Data sources

### data_sources
has a local data source to get tasks

### models
Task model with fields (id, title, description, isCompleted)

### repositories
Task Repository with functions (addTask, updateTask, removeTask)

### entities
Task Entity with fields (id, title, description, isCompleted)

### usecases
usecase with function for fetching task from data source

### cubit
cubit using the GetTasks UseCase to get tasks from data source with states (TaskInitial, TaskLoading, TaskLoaded, TaskError)

### pages
showing a listview of tasks with check mark to show each task if completed or not