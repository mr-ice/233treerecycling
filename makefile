INPUT := 2020TreeRecyclingRequests.xlsx

all: clean
	./splitfile $(INPUT)
	./genpdfs $(INPUT)

clean:
	rm -rf "$$(date +%Y-Split)"

.DUMMY: all clean
