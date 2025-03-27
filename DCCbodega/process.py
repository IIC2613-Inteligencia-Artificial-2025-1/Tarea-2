FILE = "output.txt"

class Answer:
    
    def __init__(self):
        self.range_x = 0
        self.range_y = 0
        self.bound = 0
        self.shelves = []  # From shelfOn predicates
        self.goals = [] # From goalOn predicates
        self.obstacles = []
        self.robots = []   # From robotOn predicates
        self.carries = []  # From carrying predicates
        self.walls = [] # From wallOn predicates
        self.tables = [] # From tableOn predicates

    def write_file(self):
        with open(FILE, "w") as output:
            output.write(f"{self.range_x},{self.range_y}\n")
            output.write(f"{self.bound}\n")

            self.shelves.sort(key=lambda x: x[3])
            for shelf in self.shelves:
                #id, x, y, time
                output.write(f"S,{shelf[0]},{shelf[1]},{shelf[2]},{shelf[3]}\n")

            for obstacle in self.obstacles:
                output.write(f"O,{obstacle[0]},{obstacle[1]}\n")
            
            self.robots.sort(key=lambda x: x[3])
            for robot in self.robots:
                # id, x, y, time
                output.write(f"R,{robot[0]},{robot[1]},{robot[2]},{robot[3]}\n")

            for goal in self.goals:
                # id, x, y, time
                output.write(f"G,{goal[0]},{goal[1]},{goal[2]}\n")
            
            self.carries.sort(key=lambda x: x[2])
            for carrying in self.carries:
                # robot_id, shelf_id, time
                output.write(f"C,{carrying[0]},{carrying[1]},{carrying[2]}\n")

            for wall in self.walls:
                output.write(f"W,{wall[0]},{wall[1]}\n")
            
            for table in self.tables:
                output.write(f"T,{table[0]},{table[1]}\n")

                
def get_number(text):
    init = text.find("(") + 1
    end = text.find(")")
    return int(text[init:end])

def get_numbers(text):
    init = text.find("(") + 1
    end = text.find(")")
    text_list = text[init:end].split(",")
    return tuple(list(map(int, text_list)))

from gettext import find
import sys

lines = sys.stdin.readlines()
# 
if 'OPTIMUM FOUND\n' in lines:
    sol_init_index = lines.index('OPTIMUM FOUND\n') - 2
else:
    sol_init_index = 4
atoms = lines[sol_init_index].split(" ")

answer = Answer()

answer.range_x = max(map(lambda x: get_number(x), list(filter(lambda x: "rangeX" in x, atoms))))
answer.range_y = max(map(lambda x: get_number(x), list(filter(lambda x: "rangeY" in x, atoms))))
answer.bound = max(map(lambda x: get_number(x), list(filter(lambda x: "time" in x, atoms))))
answer.obstacles = list(map(lambda x: get_numbers(x), list(filter(lambda x: "obstacle" in x, atoms))))
answer.shelves = list(map(lambda x: get_numbers(x), list(filter(lambda x: "shelfOn" in x, atoms))))
answer.robots = list(map(lambda x: get_numbers(x), list(filter(lambda x: "robotOn" in x, atoms))))
answer.goals = list(map(lambda x: get_numbers(x), list(filter(lambda x: "goalOn" in x, atoms))))
answer.carries = list(map(lambda x: get_numbers(x), list(filter(lambda x: "carrying" in x, atoms))))
answer.walls = list(map(lambda x: get_numbers(x), list(filter(lambda x: "wallOn" in x, atoms))))
answer.tables = list(map(lambda x: get_numbers(x), list(filter(lambda x: "tableOn" in x, atoms))))

answer.write_file()