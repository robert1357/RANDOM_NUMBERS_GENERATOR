# miRandomLib

A lightweight R library for generating random numbers with various statistical distributions.

## Overview

miRandomLib provides a simple yet powerful set of functions for generating random numbers in R. This library is designed with extensibility in mind, allowing for easy integration into statistical simulations, data analysis workflows, and Monte Carlo applications.

## Installation

```r
# Install from GitHub
# install.packages("devtools")
devtools::install_github("your-username/miRandomLib")

# Or install from local directory
# devtools::install("path/to/miRandomLib")
```

## Features

Currently implemented:

- `generar_uniforme()`: Generate random numbers with uniform distribution

## Usage

### Uniform Distribution

Generate random numbers following a uniform distribution:

```r
library(miRandomLib)

# Generate 100 random numbers between 0 and 1
random_values <- generar_uniforme(n = 100)

# Generate 50 random numbers between 10 and 20
custom_range <- generar_uniforme(n = 50, min = 10, max = 20)

# Set seed for reproducibility
reproducible_values <- generar_uniforme(n = 1000, min = 0, max = 100, semilla = 123)

# Visualize the distribution
hist(random_values, main = "Uniform Distribution", col = "lightblue")
```

## API Reference

### generar_uniforme()

Generates random numbers with uniform distribution.

**Parameters:**
- `n` (integer): Number of values to generate. Default: 10000
- `min` (numeric): Minimum value of the range. Default: 0
- `max` (numeric): Maximum value of the range. Default: 1
- `semilla` (integer, optional): Seed value for reproducibility. Default: NULL

**Returns:**
- Numeric vector with generated values

## Project Structure

```
miRandomLib/
├── DESCRIPTION      # Package metadata
├── NAMESPACE        # Export declarations
├── R/               # Source code
│   └── generador.R  # Generator functions
└── man/             # Generated documentation
```

## Development Roadmap

Future enhancements planned:

- Additional probability distributions:
  - Normal (Gaussian)
  - Exponential
  - Poisson
  - Binomial
  - Gamma

- Complementary features:
  - Integrated distribution visualization
  - Statistical quality tests
  - Correlated sequence generation

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments

- The R Foundation for the underlying random number generators
- Contributors and maintainers of the devtools and roxygen2 packages
