# Formgood MVP

## Project Overview

### Project Name & Tagline
**Formgood**: A Mobile-First Survey Distribution Platform

### Summary
Formgood is a mobile-first survey distribution platform designed for students, independent researchers, and grassroots organizations. It enables users to distribute surveys created on external platforms like Google Forms, Qualtrics, or Typeform, leveraging a unique reciprocity system to incentivize participation without the need for payment.

### Problem Statement
Survey distribution today often faces challenges such as high costs, administrative friction, and low motivation among potential respondents. Many platforms require payment or complex setups, which can deter users from participating in surveys.

### Solution Summary
Formgood addresses these issues through a reciprocity model that rewards users for their time and effort. By allowing users to earn Time Points for completing surveys, which can then be spent to distribute their own surveys, Formgood fosters a community-driven approach to survey participation. Additionally, users can earn Life Points that contribute to social good initiatives, enhancing motivation and engagement.

### Key Non-Goals for MVP
- No survey creation tools or builder functionality.
- No storage of survey responses.
- No payment integration or monetization features.
- No public API program for third-party consumers.
- No webhook product surface for external integrations.

### Core Value Propositions
- Free, reciprocal access for researchers.
- Effort-for-effort matching (1:1 reciprocity).
- Social impact rewards via Life Points.
- Transparent, rule-based discovery of surveys.

### High-Level System Diagram
The Formgood architecture consists of:
- **Frontend**: Built with React and TypeScript, providing a mobile-first user interface.
- **Backend**: Developed using ASP.NET C#, handling internal application services and business logic (not exposed as a public developer API).
- **Databases**: Azure SQL or Cosmos DB for storing user and survey metadata.
- **OAuth Providers**: Microsoft and Google for user authentication.
- **Azure Services**: Utilizing Azure PaaS for hosting and scaling the application.

## MVP Scope and Feature Breakdown

### Authentication & User Accounts
- **Description**: Implement user authentication and profile management.
- **Core MVP Features**:
  - Microsoft and Google OAuth integration.
  - Basic profile management.
- **MVP-essential**: Yes

### Survey Integration & Management
- **Description**: Allow users to link external surveys and manage metadata.
- **Core MVP Features**:
  - Linking external surveys (URLs, basic metadata).
  - Defining expected completion time and reward settings.
- **MVP-essential**: Yes

### Reciprocity & Currency Engine
- **Description**: Manage Time Points and Life Points for users.
- **Core MVP Features**:
  - Tracking Time Points earned/spent.
  - Tracking Life Points and conversion from Time Points.
  - Enforcing the 1:1 reciprocity rule.
- **MVP-essential**: Yes

### Feed & Discovery
- **Description**: Create a feed for users to discover surveys based on various parameters.
- **Core MVP Features**:
  - Basic rule-based feed for matching users to surveys.
  - Parameters: freshness, quality signals, effort/reward alignment.
- **MVP-essential**: Yes

### Survey Interaction Flow
- **Description**: Manage user interactions with surveys.
- **Core MVP Features**:
  - Selecting a survey from the feed.
  - Redirecting to external survey.
  - Handling completion self-report with safeguards.
- **MVP-essential**: Yes

### Rewards & Social Impact
- **Description**: Display and manage Life Points and their redemption.
- **Core MVP Features**:
  - Simple UI to view accumulated Time and Life Points.
  - Basic Life Point redemption flow (mock/informational).
- **MVP-essential**: Yes

### User Dashboard
- **Description**: Provide users with insights into their activity and points.
- **Core MVP Features**:
  - View of surveys created and completed.
  - Points earned, spent, and converted.
  - High-level impact summary.
- **MVP-essential**: Yes

### Basic Admin / Moderation (MVP-light)
- **Description**: Implement minimal tools for survey moderation.
- **Core MVP Features**:
  - Tools to mark fraudulent or low-quality surveys.
  - Simple metrics or flags on suspicious behavior.
- **MVP-essential**: Future / nice-to-have

## Roadmap & Phasing (4-Month Solo Developer Plan)

### Phase 0 – Foundations & Setup
- **Goals**: Establish project structure and initial setup.
- **Features/epics**: Project setup, repository initialization.
- **Key tasks**: Set up frontend and backend projects, configure CI/CD.
- **Dependencies**: None.
- **Effort bias**: Infrastructure-heavy.

### Phase 1 – Core Authentication + Survey Linking
- **Goals**: Implement user authentication and survey linking.
- **Features/epics**: Authentication & User Accounts, Survey Integration & Management.
- **Key tasks**: Implement OAuth, create user profile management, link surveys.
- **Dependencies**: Phase 0 completion.
- **Effort bias**: Backend-heavy.

### Phase 2 – Reciprocity Engine + Basic Feed
- **Goals**: Develop the reciprocity system and survey discovery feed.
- **Features/epics**: Reciprocity & Currency Engine, Feed & Discovery.
- **Key tasks**: Implement Time Points and Life Points logic, create survey feed.
- **Dependencies**: Phase 1 completion.
- **Effort bias**: Backend-heavy.

### Phase 3 – Dashboard, Rewards, and Polishing
- **Goals**: Build user dashboard and rewards system.
- **Features/epics**: User Dashboard, Rewards & Social Impact.
- **Key tasks**: Create dashboard UI, implement Life Point redemption.
- **Dependencies**: Phase 2 completion.
- **Effort bias**: Frontend-heavy.

### Phase 4 – Hardening, Documentation, and Launch Prep
- **Goals**: Finalize features, improve documentation, prepare for launch.
- **Features/epics**: Basic Admin / Moderation.
- **Key tasks**: Implement admin tools, finalize documentation, prepare deployment.
- **Dependencies**: Phase 3 completion.
- **Effort bias**: Mixed.

## Task Breakdown (Frontend, Backend, Azure)

### Frontend (React + TypeScript)
- Implement authentication flows.
- Create responsive UI components for dashboard and feed.
- Develop point visualization features.
- Knowledge needed: React, TypeScript, responsive design.
- Resources to study: React Router, CSS Flexbox/Grid.

### Backend (.NET C# / ASP.NET)
- Define domain models for users, surveys, and points.
- Create internal application endpoints for app functionality (not public developer API).
- Implement logging and error handling.
- Knowledge needed: ASP.NET Core, Entity Framework, RESTful APIs.
- Resources to study: ASP.NET Core documentation, Entity Framework tutorials.

### Azure / DevOps
- Set up Azure App Service for hosting.
- Configure Azure SQL Database for data storage.
- Implement CI/CD pipelines for deployment.
- Knowledge needed: Azure services, Bicep templates, GitHub Actions.
- Resources to study: Azure documentation, Bicep language guide.

## KPIs and Success Metrics

### Feature-Level KPIs
- **Survey completion rate**: Measures user engagement and survey effectiveness.
- **Dropoff rate per survey**: Identifies potential issues in survey design.
- **Average time-to-first-response**: Indicates user responsiveness.
- **Average Time Points earned per active user**: Assesses user activity levels.

### Project-Level KPIs
- **Number of active users**: Tracks growth and engagement.
- **Number of surveys successfully distributed**: Measures platform usage.
- **Ratio of Time Points earned vs spent**: Evaluates the effectiveness of the reciprocity model.
- **Number of Life Point redemptions**: Indicates social impact engagement.

## Risks, Assumptions, and Future Extensions

### Assumptions
- Users will honestly self-report survey completions if callbacks are limited.
- The initial user base will be small and manageable.

### Risks
- Potential for gaming the Time Points system.
- Low quality or spam surveys affecting user experience.
- Survey abandonment due to lack of engagement.

### Future Roadmap Items (Post-MVP)
- Anti-bot detection mechanisms.
- Advanced trust systems for survey quality.
- B2B partnerships with universities for survey distribution.
- Enhanced recommendation algorithms for survey matching.

## README Structure Recommendation
- Title & Badges (optional)
- Short Description
- Table of Contents
- Project Overview
- Core Concepts (Time Points, Life Points, Reciprocity)
- Architecture & Tech Stack
- Features
- Roadmap
- Getting Started (dev setup)
- Contributing (if relevant)
- License (placeholder)
- Acknowledgements / Inspiration