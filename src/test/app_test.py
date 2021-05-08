import app

def test_Main_ReturnsZero():
    assert app.main() == 0

if __name__ == "__main__":
    import pytest
    raise SystemExit(pytest.main([__file__]))
