# Infrastructure README for Formgood MVP

## Overview

This directory contains the infrastructure setup for the Formgood MVP project, utilizing Azure's Bicep templates for resource deployment. The infrastructure is designed to support the backend and frontend applications, ensuring scalability, reliability, and ease of management.

## Bicep Templates

The following Bicep templates are included in this directory:

- **main.bicep**: The main entry point for deploying all Azure resources required for the Formgood MVP. This template orchestrates the deployment of various components, including the App Service and SQL Database.

- **appservice.bicep**: This template defines the Azure App Service configuration, which hosts the backend API. It includes settings for scaling, authentication, and environment variables.

- **sql.bicep**: This template provisions the Azure SQL Database, which is used for storing application metadata and managing user points. It includes configurations for performance and security.

- **monitoring.bicep**: This template sets up monitoring services in Azure, enabling logging and performance tracking for the deployed applications. It ensures that the system can be monitored effectively for issues and performance metrics.

## Deployment Instructions

To deploy the infrastructure, follow these steps:

1. Ensure you have the Azure CLI installed and configured with your Azure account.
2. Navigate to the `bicep` directory.
3. Run the following command to deploy the main Bicep template:

   ```
   az deployment group create --resource-group <your-resource-group> --template-file main.bicep
   ```

Replace `<your-resource-group>` with the name of your Azure resource group.

## Additional Resources

For more information on Bicep and Azure resource management, refer to the following resources:

- [Bicep Documentation](https://docs.microsoft.com/en-us/azure/azure-resource-manager/bicep/)
- [Azure CLI Documentation](https://docs.microsoft.com/en-us/cli/azure/)

## Conclusion

This README provides a brief overview of the infrastructure setup for the Formgood MVP project. For further details on the application architecture and features, please refer to the main project documentation.