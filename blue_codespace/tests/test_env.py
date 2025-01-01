from abcli.tests.test_env import test_abcli_env

from blue_codespace import env


def test_required_env():
    test_abcli_env()


def test_blue_codespace_env():
    assert env.BLUE_CODESPACE_CONFIG
