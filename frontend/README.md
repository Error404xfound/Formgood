# Formgood Frontend

## Overview
Formgood is a mobile-first survey distribution platform designed for students, independent researchers, and grassroots organizations. It allows users to distribute surveys from external tools like Google Forms, Qualtrics, or Typeform without the need for survey creation or response storage.

## Problem Statement
Survey distribution today often involves high costs, administrative friction, and low motivation for participants. Many platforms require users to create surveys and manage responses, which can be cumbersome and time-consuming.

## Solution Summary
Formgood addresses these challenges through a unique reciprocity system that incentivizes users to participate in surveys. By earning Time Points for completing surveys, users can distribute their own surveys in return, fostering a community of mutual support and engagement.

## Key Non-Goals for MVP
- No survey builder functionality.
- No storage of raw survey responses.
- No payment integration or monetization features.

## Core Value Propositions
- **Free, reciprocal access** for researchers.
- **Effort-for-effort matching** through a 1:1 reciprocity system.
- **Social impact rewards** via Life Points.
- **Transparent, rule-based discovery** of surveys.

## High-Level System Diagram
The Formgood frontend consists of the following key components:
- **Frontend**: Built with React and TypeScript, providing a mobile-first user interface.
- **Backend**: Developed using .NET C# (ASP.NET) to handle API requests and business logic.
- **OAuth Providers**: Microsoft and Google for user authentication.
- **Azure Services**: Utilizing Azure PaaS for hosting and database management.

## Getting Started
To get started with the Formgood frontend, clone the repository and install the dependencies:

```bash
npm install
```

Then, run the application:

```bash
npm start
```

## Features
- User authentication via Microsoft and Google OAuth.
- Survey linking and management.
- Reciprocity and currency engine for tracking Time and Life Points.
- Feed and discovery algorithm for survey matching.
- User dashboard for viewing points and survey statistics.
- Basic admin tools for moderation.

## Roadmap
The development roadmap is structured into phases, focusing on essential features for the MVP. 

1. **Phase 0**: Foundations & Setup
2. **Phase 1**: Core Authentication + Survey Linking
3. **Phase 2**: Reciprocity Engine + Basic Feed
4. **Phase 3**: Dashboard, Rewards, and Polishing
5. **Phase 4**: Hardening, Documentation, and Launch Prep

## Contributing
Contributions are welcome! Please open an issue or submit a pull request for any enhancements or bug fixes.

## License
This project is licensed under the MIT License. See the LICENSE file for details.

## Acknowledgements
Inspired by the need for efficient survey distribution and the potential for social impact through community engagement.