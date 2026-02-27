# Formgood MVP Architecture Overview

## Introduction
This document provides an overview of the architecture for the Formgood MVP, a mobile-first survey distribution platform. The architecture is designed to facilitate the distribution of surveys while implementing a reciprocity system that rewards users for their participation.

## High-Level Architecture
The Formgood MVP architecture consists of three main components:

1. **Frontend**: A React application built with TypeScript, responsible for user interactions and displaying survey data.
2. **Backend**: An ASP.NET Core API that handles business logic, user authentication, and data management.
3. **Infrastructure**: Azure PaaS services that host the application and manage resources.

### Component Diagram
- **Frontend**:
  - React + TypeScript
  - Components for authentication, dashboard, survey feed, rewards, and surveys
  - Services for API interaction

- **Backend**:
  - ASP.NET Core API
  - Controllers for handling requests
  - Application layer for business logic
  - Domain models for users, surveys, and points

- **Infrastructure**:
  - Azure App Service for hosting the backend
  - Azure SQL Database for storing user and survey metadata
  - Azure Storage for any static assets or logs

## Key Technologies
- **Frontend**: React, TypeScript, Axios for API calls
- **Backend**: ASP.NET Core, Entity Framework Core for data access
- **Authentication**: Microsoft and Google OAuth for user authentication
- **Cloud Services**: Azure App Service, Azure SQL Database, Azure Storage

## Data Flow
1. **User Authentication**: Users authenticate via Microsoft or Google OAuth, receiving a token for session management.
2. **Survey Distribution**: Users link external surveys and define parameters (completion time, rewards) through the frontend.
3. **Reciprocity Engine**: The backend tracks Time Points and Life Points, enforcing the 1:1 reciprocity rule.
4. **Feed & Discovery**: The frontend displays a feed of available surveys based on freshness, quality, and user preferences.

## Conclusion
The architecture of Formgood MVP is designed to be scalable and maintainable, focusing on delivering a seamless user experience while ensuring robust backend processing. This architecture supports the core functionalities of survey distribution and reciprocity, setting the foundation for future enhancements.