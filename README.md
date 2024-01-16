# Terraform AWS S3 Static Website Project - ReadMe

## Introduction

Welcome to the Terraform AWS S3 Static Website project! This project is designed to help you practice and learn Terraform while setting up a static website on AWS S3. In this project, we'll be creating an S3 bucket and configuring it for static website hosting, showcasing your portfolio projects and resumes. The entire process will be automated using Terraform, allowing you to complete the setup in just a few seconds.

## Prerequisites

Before you begin with the project, make sure you have the following prerequisites:

1. AWS Account
2. Terraform Installation
3. Knowledge Base

## Project Steps

Now, let's go through the steps involved in this project:

1. **Initialize Terraform:**
   - Create a new folder for your project.
   - Use the terminal to navigate into the project folder.
   - Open the project in your preferred editor.
   - Create a `providers.tf` file to define the AWS provider and region.

2. **Create S3 Bucket:**
   - In your `main.tf` file, define the S3 bucket resource using a variable for the bucket name.

3. **Configure Bucket Ownership and Public Access:**
   - Define ownership controls and public access block in your `main.tf` file.

4. **Upload Website Files:**
   - Create HTML files (`index.html` and `error.html`) and an image (`profile.png`) for your website.
   - Add resource blocks to your `main.tf` file to upload these files to the S3 bucket.

5. **Configure Static Website Hosting:**
   - Add a resource block to configure the S3 bucket for static website hosting.

6. **Access Your Website:**
   - After applying the changes, Terraform will provide the website endpoint.
   - Use the endpoint to access your static website and verify its functionality.

