# Project Roadmap for Formgood MVP

## Overview
This document outlines the phased roadmap for the development of the Formgood MVP, a mobile-first survey distribution platform. The roadmap is structured to guide a solo developer through the essential features and milestones necessary for a successful launch within a 4-month timeframe, dedicating approximately 15 hours per week.

## Phased Roadmap

### Phase 0 – Foundations & Setup
- **Goals**: Establish the project structure, set up development environments, and configure initial repositories.
- **Features/epics tackled**:
  - Project initialization and repository setup
  - Basic folder structure for frontend and backend
  - Initial configuration for Azure services
- **Key tasks**:
  - Create GitHub repository and set up project structure
  - Initialize frontend and backend projects
  - Configure Azure resources (App Service, SQL Database)
- **Dependencies or prerequisites**: None
- **Effort bias**: Infrastructure-heavy

### Phase 1 – Core Authentication + Survey Linking
- **Goals**: Implement user authentication and basic survey linking functionality.
- **Features/epics tackled**:
  - Authentication & User Accounts
  - Survey Integration & Management
- **Key tasks**:
  - Implement Microsoft and Google OAuth authentication
  - Develop user profile management features
  - Create functionality for linking external surveys (URLs and metadata)
- **Dependencies or prerequisites**: Completion of Phase 0
- **Effort bias**: Backend-heavy

### Phase 2 – Reciprocity Engine + Basic Feed
- **Goals**: Build the core reciprocity system and a basic survey feed for users.
- **Features/epics tackled**:
  - Reciprocity & Currency Engine
  - Feed & Discovery
- **Key tasks**:
  - Implement Time Points and Life Points tracking
  - Develop the reciprocity logic (1:1 rule enforcement)
  - Create a basic rule-based feed for survey discovery
- **Dependencies or prerequisites**: Completion of Phase 1
- **Effort bias**: Backend-heavy

### Phase 3 – Dashboard, Rewards, and Polishing
- **Goals**: Develop the user dashboard and rewards system, and refine existing features.
- **Features/epics tackled**:
  - User Dashboard
  - Rewards & Social Impact
- **Key tasks**:
  - Create dashboard UI for users to view surveys, points, and impact
  - Implement Life Point redemption flow (mock if necessary)
  - Polish UI components and improve user experience
- **Dependencies or prerequisites**: Completion of Phase 2
- **Effort bias**: Frontend-heavy

### Phase 4 – Hardening, Documentation, and Launch Prep
- **Goals**: Finalize the application, prepare for launch, and create documentation.
- **Features/epics tackled**:
  - Basic Admin / Moderation (MVP-light)
- **Key tasks**:
  - Implement minimal admin tools for survey moderation
  - Create comprehensive documentation for users and developers
  - Conduct testing and bug fixing
- **Dependencies or prerequisites**: Completion of Phase 3
- **Effort bias**: Balanced (frontend and backend)

## Conclusion
This roadmap provides a structured approach to developing the Formgood MVP, focusing on essential features that align with the project's goals. Each phase builds upon the previous one, ensuring a coherent development process that leads to a successful launch.