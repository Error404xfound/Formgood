# Formgood MVP — Internal API Contract (Private)

## Status
This document is internal-only and exists to align Formgood’s first-party frontend and backend.

- Formgood MVP does not provide a public developer API.
- Formgood MVP does not provide an external webhook platform.
- Contract details may change during MVP iteration.

## Scope
This contract covers only private app functionality used by Formgood clients:

- Authentication and session flow
- Survey link and metadata management
- Reciprocity and points ledger operations
- Feed retrieval
- Dashboard summaries
- Rewards views and redemption actions

Out of scope:

- Third-party API consumers
- Public SDKs
- External webhook registration or delivery

## Access Model
- Authentication: Microsoft/Google OAuth for end users.
- Backend routes are intended for first-party Formgood clients only.
- Do not publish route details as public integration docs.

## Internal Route Groups (Illustrative)
Note: Paths are examples for internal alignment, not public commitments.

- POST /internal/auth/login
- POST /internal/surveys/link
- GET /internal/surveys
- GET /internal/points
- POST /internal/points/spend
- GET /internal/rewards
- POST /internal/rewards/redeem

## Payload Examples (Internal Contract)
### Auth Login
Request:
```json
{
  "provider": "google",
  "token": "string"
}
```

Response:
```json
{
  "accessToken": "string",
  "userId": "string"
}
```

### Link External Survey
Request:
```json
{
  "surveyUrl": "string",
  "expectedCompletionTimeMinutes": 12,
  "rewardSettings": {
    "timePoints": 120,
    "lifePoints": 12
  }
}
```

Response:
```json
{
  "surveyId": "string",
  "message": "Survey linked successfully."
}
```

### Points Balance
Response:
```json
{
  "timePoints": 1000,
  "lifePoints": 100
}
```

### Spend Time Points
Request:
```json
{
  "surveyId": "string",
  "timePoints": 200
}
```

Response:
```json
{
  "message": "Points spent successfully."
}
```

### Rewards Redeem
Request:
```json
{
  "rewardId": "string"
}
```

Response:
```json
{
  "message": "Reward redeemed successfully."
}
```

## Error Shape (Internal Standard)
```json
{
  "error": {
    "code": "string",
    "message": "string"
  }
}
```

## Contract Notes
- Keep request and response fields stable where possible during MVP.
- Breaking changes should be coordinated between frontend and backend in the same sprint.
- This file is not a public integration guide and should remain in internal project docs.
