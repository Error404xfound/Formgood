# API Specification for Formgood MVP

## Overview
This document outlines the API specifications for the Formgood MVP, detailing the endpoints, request/response formats, and authentication requirements.

## Base URL
The base URL for the API is:
```
https://api.formgood.com/v1
```

## Authentication
Formgood uses OAuth 2.0 for authentication. Users can authenticate using Microsoft or Google accounts. All requests to the API must include a valid access token in the `Authorization` header.

### Example Header
```
Authorization: Bearer {access_token}
```

## Endpoints

### 1. User Authentication

#### POST /auth/login
- **Description**: Authenticates a user and returns an access token.
- **Request Body**:
  ```json
  {
    "provider": "google" | "microsoft",
    "token": "string"
  }
  ```
- **Response**:
  - **200 OK**:
    ```json
    {
      "accessToken": "string",
      "userId": "string"
    }
    ```
  - **401 Unauthorized**: Invalid token.

### 2. Survey Management

#### POST /surveys/link
- **Description**: Links an external survey to the user's account.
- **Request Body**:
  ```json
  {
    "surveyUrl": "string",
    "expectedCompletionTime": "integer", // in minutes
    "rewardSettings": {
      "timePoints": "integer",
      "lifePoints": "integer"
    }
  }
  ```
- **Response**:
  - **201 Created**:
    ```json
    {
      "surveyId": "string",
      "message": "Survey linked successfully."
    }
    ```
  - **400 Bad Request**: Invalid input data.

#### GET /surveys
- **Description**: Retrieves a list of surveys available for the user.
- **Response**:
  - **200 OK**:
    ```json
    [
      {
        "surveyId": "string",
        "surveyUrl": "string",
        "expectedCompletionTime": "integer",
        "rewardSettings": {
          "timePoints": "integer",
          "lifePoints": "integer"
        }
      }
    ]
    ```

### 3. Points Management

#### GET /points
- **Description**: Retrieves the user's current Time Points and Life Points balance.
- **Response**:
  - **200 OK**:
    ```json
    {
      "timePoints": "integer",
      "lifePoints": "integer"
    }
    ```

#### POST /points/spend
- **Description**: Spends Time Points to distribute a survey.
- **Request Body**:
  ```json
  {
    "surveyId": "string",
    "timePoints": "integer"
  }
  ```
- **Response**:
  - **200 OK**:
    ```json
    {
      "message": "Points spent successfully."
    }
    ```
  - **400 Bad Request**: Insufficient points.

### 4. Rewards Management

#### GET /rewards
- **Description**: Retrieves available rewards for the user based on Life Points.
- **Response**:
  - **200 OK**:
    ```json
    [
      {
        "rewardId": "string",
        "description": "string",
        "lifePointsRequired": "integer"
      }
    ]
    ```

#### POST /rewards/redeem
- **Description**: Redeems Life Points for a reward.
- **Request Body**:
  ```json
  {
    "rewardId": "string"
  }
  ```
- **Response**:
  - **200 OK**:
    ```json
    {
      "message": "Reward redeemed successfully."
    }
    ```
  - **400 Bad Request**: Insufficient Life Points.

## Error Handling
All error responses will follow this format:
```json
{
  "error": {
    "code": "string",
    "message": "string"
  }
}
```

## Conclusion
This API specification serves as a guide for developers to interact with the Formgood MVP backend. Ensure to follow the authentication process and adhere to the request/response formats for successful integration.

# Internal Service Contract for Formgood MVP

## Status
Formgood does **not** expose a public developer API or webhook surface in this MVP.

This document is retained only as an internal reference for frontend-backend integration inside the Formgood application and may change without notice.

## Scope
- Internal app communication only.
- No third-party API access.
- No external webhook registration or delivery.

## Authentication
- End-user authentication remains Microsoft/Google OAuth through the Formgood app.
- Any backend routes are private to first-party Formgood clients.

## Notes for MVP
- Prioritize internal contracts required for:
  - auth/session handling,
  - survey metadata management,
  - reciprocity/points ledger operations,
  - feed retrieval,
  - dashboard summaries.
- Do not publish external API docs, SDKs, or webhook guides for MVP.