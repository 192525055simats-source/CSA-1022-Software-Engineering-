"""Exp 6 - Compute the completion percentages shown on the Confluence progress bar."""
issues = [
    ("LMS-1", "Develop book search functionality", "Done"),
    ("LMS-2", "Create user login page", "Done"),
    ("LMS-3", "Implement book reservation", "In Progress"),
    ("LMS-4", "Generate monthly borrowed-book report", "In Progress"),
    ("LMS-5", "Send overdue email notifications", "To Do"),
    ("LMS-6", "Build librarian dashboard", "To Do"),
]
weight = {"Done": 100, "In Progress": 50, "To Do": 0}


def bar(pct, n=30):
    full = round(n * pct / 100)
    return "[" + "#" * full + "." * (n - full) + f"] {pct:3.0f}%"


for k, s, st in issues:
    print(f"{k:6} {s:40} {st:12} {bar(weight[st], 20)}")
done = sum(1 for _, _, st in issues if st == "Done")
print(f"\nIssues done: {done}/{len(issues)}")
print("Sprint completion (issues):", bar(100 * done / len(issues)))
print("Weighted progress         :", bar(sum(weight[st] for *_, st in issues) / len(issues)))
