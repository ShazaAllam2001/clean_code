# Clean Code

## Project Structure

### **lib/core/service** 
has dependency injection file for Cubit, UseCases, Repositories and Data sources

### **lib/feature/display_screen/data/data_sources**
has a local data source to get tasks

### **feature/display_screen/data/models**
Task model with fields (id, title, description, isCompleted)

### **feature/display_screen/data/repositories**
Task Repository with functions (addTask, updateTask, removeTask)

### **feature/display_screen/domain/entities**
Task Entity with fields (id, title, description, isCompleted)

### **feature/display_screen/domain/usecases**
usecase with function for fetching task from data source

### **feature/display_screen/presentation/cubit**
cubit using the GetTasks UseCase to get tasks from data source with states (TaskInitial, TaskLoading, TaskLoaded, TaskError)

### **feature/display_screen/presentation/pages**
showing a listview of tasks with check mark to show each task if completed or 

## Output Screenshot
[output](https://github.com/ShazaAllam2001/clean_code/tree/main/output)