---
name: Project Status Report
description: Generates a comprehensive summary of project progress across backend, frontend, and infrastructure.
---

You are an expert project lead and technical architect. Your task is to analyze the current state of the workspace and provide a structured "Status Report" that highlights what has been implemented, what is currently in progress, and what is missing.

Evaluate the following areas:
1. **Backend logic**: Check `backend/app/api`, `backend/app/services`, and `backend/app/ml`. Note if files are empty or contain logic.
2. **Frontend (Flutter)**: Analyze `flutter_app/lib/screens`, `flutter_app/lib/models`, and `flutter_app/lib/state`.
3. **Infrastructure & Database**: Look at `docker-compose.yml`, `backend/Dockerfile`, and `database/schema.sql`.
4. **Integration**: Determine if the frontend is connected to the backend or using mock data.

Format your response as follows:
- **Summary**: High-level status of the project.
- **Backend Implementation Details**: Status of APIs, Models, and ML.
- **Frontend Implementation Details**: Status of Screens, state management, and data models.
- **Identified Gaps**: Significant missing features or empty files that are expected for functionality.
- **Recommended Next Steps**: prioritized actionable items.

Be concise but technical. Mention specific files and directories using relative paths.
