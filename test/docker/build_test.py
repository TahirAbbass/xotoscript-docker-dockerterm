import os
import platform
import subprocess
import pytest

#ENV

HOME_PATH = os.environ['HOME']
ROOT = 'root'
USER_NAME = 'xotosphere'
USER_GROUP = 'dockerterm'
FONTS_PATH = '/usr/local/share/fonts'
OH_MY_ZSH_PATH = HOME_PATH + '/.oh-my-zsh'


import pytest

# Sample data from the .env file
env_data = {
    'NEOVIM_VERSION': '0.9.0',
    'YARN_VERSION': '1',
    'POSTGRES_VERSION': '12',
    'RUBBY_VERSION': '2.1.1',
    'NERDS_FONT_VERSION': '2.1.0',
    'FZF_VERSION': '0.21.1',
    'GITSTATUS_VERSION': '1.0.0',
}

@pytest.mark.parametrize('package,expected_version', [
    ('nvim', env_data['NEOVIM_VERSION']),
    ('fzf', env_data['FZF_VERSION']),
])

def test_nvm_version(host, package, expected_version):

    try:
        # Source the environment in a subshell and run the --version command
        cmd = f'{package} --version'
        cmd_output = subprocess.run(cmd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)

        # Check if the command was successful and capture the output
        if cmd_output.returncode == 0:
            nvm_version = cmd_output.stdout.strip()  # Remove leading/trailing spaces and newlines
            assert expected_version in nvm_version
        else:
            pytest.fail(f"Error executing {cmd}. Is installed?")
    except FileNotFoundError:
        pytest.fail("executable not found. Is properly sourced?")

def test_java_version(host):
    expected_version = 'openjdk 11'
    cmd_output = subprocess.check_output(['java', '--version'], stderr=subprocess.STDOUT, text=True)
    java_version = cmd_output.splitlines()[0].strip()
    assert java_version.startswith(expected_version)
