default: check

fmt:
    alejandra -q .

fmt-check:
    alejandra -q --check .

lint:
    ./scripts/check-skills.sh

check: fmt-check lint
