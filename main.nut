/**
 * Simply using AIList of indexes is faster than any squirrel implementation.
 */
class Native_Heap
{
	_queue = null;
	_sorter = null;

	constructor()
	{
		_queue = [];
		_sorter = AIList();
		_sorter.Sort(AIList.SORT_BY_VALUE, AIList.SORT_ASCENDING);
	}

	/**
	 * Insert a new entry in the list.
	 *  The complexity of this operation is UNKNOWN
	 * @param item The item to add to the list.
	 * @param priority The priority this item has.
	 */
	function Insert(item, priority);

	/**
	 * Pop the first entry of the list.
	 *  This is always the item with the lowest priority.
	 *  The complexity of this operation is UNKNOWN
	 * @return The item of the entry with the lowest priority.
	 */
	function Pop();

	/**
	 * Peek the first entry of the list.
	 *  This is always the item with the lowest priority.
	 *  The complexity of this operation is UNKNOWN
	 * @return The item of the entry with the lowest priority.
	 */
	function Peek();

	/**
	 * Get the amount of current items in the list.
	 *  The complexity of this operation is UNKNOWN
	 * @return The amount of items currently in the list.
	 */
	function Count();

	/**
	 * Check if an item exists in the list.
	 *  The complexity of this operation is UNKNOWN
	 * @param item The item to check for.
	 * @return True if the item is already in the list.
	 */
	function Exists(item);
};

function Native_Heap::Insert(item, priority)
{
	_queue.push(item);
	_sorter.AddItem(_queue.len() - 1, priority);
}

function Native_Heap::Pop()
{
	local ret = _queue[_sorter.Begin()];
	_sorter.RemoveTop(1);
	return ret;
}

function Native_Heap::Peek()
{
	if (_sorter.Count() == 0) return null;
	return _queue[_sorter.Begin()];
}

function Native_Heap::Count()
{
	return _sorter.Count();
}

function Native_Heap::Exists(item)
{
	return _sorter.HasItem(item);
}
