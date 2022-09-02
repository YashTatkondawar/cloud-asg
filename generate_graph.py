import sys
import matplotlib.pyplot as pl

USAGE="Usage: python3 plot.py"

def main(args):
    print(USAGE)

    # x axis values
    number_of_records = [1000, 100000, 10000000]
    # y axis values
    generation_time = [5.5, 700, 41400]
    sort_time = [0.063, 0.682, 6.5]

    # plotting generation line points
    pl.plot(number_of_records, generation_time, label="generation line")
    # plotting sort line 2 points
    pl.plot(number_of_records, sort_time, label="sort line")

    # Name of axis
    pl.xlabel('Number of records')
    pl.ylabel('Time in seconds')

    # Name of the graph
    pl.title('Number of records vs. time graph')

    pl.legend()

    # Display the generated graph
    pl.show()


if __name__ == "__main__":
    main(sys.argv)
