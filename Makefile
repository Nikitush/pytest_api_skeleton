.PHONY: dependencies
dependencies:
	poetry install
	poetry run pre-commit install

.PHONY: test
test:
	poetry run pytest tests

.PHONY: report
report:
	allure serve report

.PHONY: lint
lint: ## Запускает линтеры и форматеры
	poetry run isort --settings-path=pyproject.toml .
	poetry run black --config=pyproject.toml .
	poetry run flake8 --config=.flake8 .
