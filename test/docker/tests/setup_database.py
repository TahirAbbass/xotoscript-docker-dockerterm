import subprocess
import pytest

# Define a pytest fixture to get the environment variables from the container
@pytest.fixture
def env_variables():
    return {
        "POSTGRES_VERSION": "12"  # Update this with the correct version
    }

# Test if MongoDB is installed and available
def test_mongodb_installed():
    try:
        # Check if MongoDB is installed
        subprocess.check_output(["mongod", "--version"], stderr=subprocess.STDOUT, text=True)
    except subprocess.CalledProcessError as e:
        output = e.output.strip()
        pytest.fail(f"Error checking MongoDB installation: {output}")

# Test if Postgres is installed and available
def test_postgres_installed():
    try:
        # Check if Postgres is installed
        cmd_output = subprocess.check_output(["psql", "--version"], stderr=subprocess.STDOUT, text=True)
    except subprocess.CalledProcessError as e:
        output = e.output.strip()
        pytest.fail(f"Error checking Postgres installation: {output}")
