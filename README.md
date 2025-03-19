Copyright Szabo Cristina-Andreea 2022-2023
# Regression Models and Optimization

## Overview

This project implements various regression models and optimization techniques for solving linear and regularized regression problems. It provides MATLAB functions for training models using methods such as **gradient descent**, **normal equations**, and **regularization techniques** like **Lasso** and **Ridge regression**.

The project involves reading datasets, preparing feature matrices, and then applying different regression algorithms to estimate the best-fitting parameters (`Theta`). The core objective is to minimize the error (cost function) using optimization techniques.

## File Structure

- **gradient_descent.m**: Implements the gradient descent algorithm to optimize the cost function for linear regression and regularized regression.
- **lasso_regression_cost_function.m**: Implements the cost function for Lasso regression, which adds L1 regularization to the linear regression cost function.
- **linear_regression_cost_function.m**: Implements the cost function for simple linear regression without regularization.
- **normal_equation.m**: Solves the linear regression problem using the normal equation method, an analytical solution that directly computes the parameters (`Theta`).
- **parse_csv_file.m**: Parses a CSV file, extracting features and labels for use in regression models.
- **parse_data_set_file.m**: Reads a dataset file, extracting the matrix of features and the corresponding labels.
- **prepare_for_regression.m**: Prepares the dataset by converting categorical features into numeric values and adding a bias term to the feature matrix.
- **ridge_regression_cost_function.m**: Implements the cost function for Ridge regression, which adds L2 regularization to the linear regression cost function.
- **task.m**: The main script that initializes the problem, sources all the necessary functions, and runs the regression models on the dataset.

## Problem Description

### Linear and Regularized Regression

This project covers multiple regression techniques, each designed to minimize the error between predicted values and actual labels. These models include:

1. **Linear Regression**: Solves for the best-fitting parameters (`Theta`) using the least squares method. The cost function is calculated using the sum of squared differences between predictions and actual values.
2. **Lasso Regression**: A variation of linear regression that adds an L1 regularization term to the cost function. This helps in feature selection by shrinking the coefficients of less important features.
3. **Ridge Regression**: Another variation of linear regression that adds an L2 regularization term. This prevents overfitting by penalizing large coefficients.

### Optimization Techniques

- **Gradient Descent**: This iterative optimization method adjusts the parameters (`Theta`) step by step to minimize the cost function. It is used for both linear regression and regularized regression.
- **Normal Equation**: Provides a closed-form solution to linear regression, directly computing the parameters (`Theta`) without the need for iteration.
  
### Workflow

1. **Prepare Data**: The dataset is parsed and preprocessed using `parse_csv_file.m` and `prepare_for_regression.m` to convert categorical features into numeric values and add the bias term.
2. **Select Regression Method**: Choose a regression method (Linear, Lasso, or Ridge) and apply the corresponding cost function.
3. **Optimize Parameters**: Use either **gradient descent** (from `gradient_descent.m`) or **normal equation** (from `normal_equation.m`) to optimize the parameters and minimize the cost.
4. **Evaluate the Model**: The performance of the model is evaluated by calculating the error (cost function) using the provided data and trained parameters.

## Key Concepts

- **Linear Regression**: A method for modeling the relationship between a dependent variable and one or more independent variables using a linear equation.
- **Gradient Descent**: An optimization algorithm used to minimize the cost function by iteratively adjusting the model parameters in the direction of the steepest descent.
- **Lasso and Ridge Regression**: Regularization techniques that penalize the size of the regression coefficients to prevent overfitting and improve generalization.
- **Normal Equation**: An analytical solution to linear regression that computes the optimal parameters without iterative methods like gradient descent.
