"""Exp 1 - Simulate a Kanban board (To Do / In Progress / Done) and move tasks across columns."""
COLUMNS = ["To Do", "In Progress", "Done"]
board = {c: [] for c in COLUMNS}
for t in ["Design login page", "Create database schema", "Write API documentation",
          "Implement search feature", "Set up CI pipeline", "Test payment module"]:
    board["To Do"].append(t)


def show(title):
    print(f"\n=== {title} ===")
    width = 26
    print(" | ".join(c.ljust(width) for c in COLUMNS))
    print("-+-".join("-" * width for _ in COLUMNS))
    for i in range(max(len(v) for v in board.values())):
        print(" | ".join((board[c][i] if i < len(board[c]) else "").ljust(width) for c in COLUMNS))


def move(task, src, dst):
    board[src].remove(task)
    board[dst].append(task)
    print(f"moved '{task}': {src} -> {dst}")


show("Initial board")
move("Design login page", "To Do", "In Progress")
move("Create database schema", "To Do", "In Progress")
show("After starting work")
move("Design login page", "In Progress", "Done")
move("Set up CI pipeline", "To Do", "In Progress")
move("Set up CI pipeline", "In Progress", "Done")
show("Final board")
print("\nWIP:", len(board["In Progress"]), "| Done:", len(board["Done"]), "| Remaining:", len(board["To Do"]))
