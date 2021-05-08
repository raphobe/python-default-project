
import quickstart

def test_Constructor_GivenNothing_CreatesObject():
    assert type(quickstart.QuickStart()) == quickstart.QuickStart

if __name__ == "__main__":
    import pytest
    raise SystemExit(pytest.main([__file__]))
