update:
	@for i in $$(\ls ./Formula/); do maltmill -w Formula/$$i; done

.PHONY: update
