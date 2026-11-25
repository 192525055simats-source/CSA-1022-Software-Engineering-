"""Exp 4 - Model a 1-week Scrum sprint: prioritised backlog -> sprint -> burndown."""
backlog = [  # (key, summary, story points, priority)
    ("SHOP-1", "Create user registration page", 3, "High"),
    ("SHOP-2", "Develop API for login", 5, "Highest"),
    ("SHOP-3", "Design product listing page", 3, "Medium"),
    ("SHOP-4", "Implement shopping cart", 5, "High"),
    ("SHOP-5", "Integrate payment gateway", 8, "Medium"),
    ("SHOP-6", "Write unit tests for login API", 2, "Low"),
]
order = {"Highest": 0, "High": 1, "Medium": 2, "Low": 3}
backlog.sort(key=lambda x: order[x[3]])
print("Prioritised backlog")
for k, s, p, pr in backlog:
    print(f"  {k:7}{pr:8}{p:>2} pts  {s}")
sprint = [i for i in backlog if i[0] != "SHOP-5"]   # capacity ~ 18 points
total = sum(i[2] for i in sprint)
print(f"\nSprint 1 (Mon-Fri) scope: {len(sprint)} issues, {total} story points")
done_per_day = {"Mon": 0, "Tue": 5, "Wed": 3, "Thu": 5, "Fri": 5}
remaining = total
print("\nDay  Completed  Remaining  Burndown")
for day, d in done_per_day.items():
    remaining -= d
    print(f"{day}  {d:>9}  {remaining:>9}  {'#' * remaining}")
print("\nSprint completed: all committed issues Done" if remaining == 0 else f"\nCarry-over: {remaining} points")
