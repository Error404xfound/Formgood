# Formgood MVP Backend README

## Project Name: Formgood

### Overview
Formgood is a mobile-first survey distribution platform designed to facilitate the distribution of surveys without the need for users to create or store survey responses. Users can leverage existing surveys from platforms like Google Forms, Qualtrics, or Typeform and utilize Formgood to distribute them effectively. The platform operates on a unique reciprocity model, allowing users to earn Time Points by completing surveys, which can then be spent to distribute their own surveys. Additionally, users can earn Life Points that contribute to social good initiatives.

### Problem Statement
Survey distribution today often faces challenges such as high costs, administrative friction, and low motivation among respondents. Many platforms require payment or complex setups, discouraging users from participating in surveys or sharing their own.

### Solution Summary
Formgood addresses these challenges through a reciprocity system that incentivizes users to engage with surveys. By allowing users to earn Time Points for their efforts and offering Life Points for social impact rewards, Formgood creates a motivating environment for survey distribution and participation.

### Key Non-Goals for MVP
- No survey creation tools or builder functionality.
- No storage of raw survey responses.
- No payment integration or monetization features.

### Core Value Propositions
- Free, reciprocal access for researchers and survey creators.
- 1:1 reciprocity model for effort matching.
- Social impact rewards through Life Points.
- Transparent, rule-based discovery algorithm for surveys.

### High-Level System Diagram
The backend architecture consists of the following key components:
- **Frontend**: React + TypeScript application that communicates with the backend API.
- **Backend**: ASP.NET Core API handling business logic, user authentication, and data processing.
- **Database**: Azure SQL Database for storing user profiles, survey metadata, and points tracking.
- **OAuth Providers**: Integration with Microsoft and Google for user authentication.
- **Azure Services**: Utilization of Azure App Service for hosting the API and Azure Storage for any necessary file storage.

### Getting Started
To set up the backend locally, ensure you have the following prerequisites:
- .NET SDK (version 6.0 or later)
- Azure CLI (for deployment)
- SQL Server or Azure SQL Database for data storage

### Installation
1. Clone the repository:
   ```
   git clone https://github.com/yourusername/formgood-mvp.git
   ```
2. Navigate to the backend directory:
   ```
   cd formgood-mvp/backend
   ```
3. Restore dependencies:
   ```
   dotnet restore
   ```
4. Run the application:
   ```
   dotnet run
   ```

### Testing
To run the tests for the backend:
1. Navigate to the tests directory:
   ```
   cd tests/Formgood.Api.Tests
   ```
2. Execute the tests:
   ```
   dotnet test
   ```

### Deployment
Deployment to Azure can be managed through the provided Bicep templates located in the `infra/bicep` directory. Ensure you have the Azure CLI installed and authenticated.

### Contributing
Contributions are welcome! Please submit a pull request or open an issue for any enhancements or bug fixes.

### License
This project is licensed under the MIT License - see the LICENSE file for details.

### Acknowledgements
Inspired by the need for efficient survey distribution and the potential for social impact through user engagement.