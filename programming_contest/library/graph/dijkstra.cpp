// My version of (Extended) Dijkstra
// Pros: easy to access `costs` -- just `costs(node)`
//       vector with many parameters is confusing e.g. `costs[param1][param2][param3]...`

// Node should have only parameters with which Node can be distinguished
class Node {
public:
	// Parameters to distinguish Nodes
	<`1:T params`>

	Node(<`2:T _params`>): <`3:params(_params)`> {
	}
};

// for priority_queue
typedef pair<int, Node> Qtype; // cost and Node
class Comp {
public:
	bool operator() (const Qtype& l, const Qtype& r) const {
		// compair costs for each Node
		return (l.F > r.F);
	}
};

// easy access to saved costs
<`4:VI`> g_saved_costs;
int saved_cost(Node n)
{
	return g_saved_costs<`5:[]`>;
}
void save_cost(Node n, int cost)
{
	g_saved_costs<|5|> = cost;
}

int main()
{
	// Initialize g_saved_costs
	g_saved_costs = <`6:VI(MAX_N, INF)`>;
	priority_queue< Qtype, vector<Qtype>, Comp > q;

	q.push( MP(0, <`7:START_NODE`>) );
	while (!q.empty()) {
		Qtype t = q.top(); q.pop();
		int cost_here = t.F; Node node = t.S;

		// Skip if already visited
		if (cost_here > save_cost(node)) {
			continue;
		}
		save_cost(node, cost_here);

		FOR_EACH_NEXT_NODES {
			q.push(MP(cost_here + COST_TO_NEXT_NODE, NEXT_NODE));
		}
	}
}
