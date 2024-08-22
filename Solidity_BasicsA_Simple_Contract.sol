// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleTodoList {
    // State variable to store the owner of the contract
    address public owner;

    // Structure to represent a Task
    struct Task {
        uint id;
        string content;
        bool completed;
    }

    // Array to store all tasks
    Task[] public tasks;

    // Mapping to keep track of task ownership
    mapping(uint => address) public taskToOwner;

    // Event to be emitted when a task is created
    event TaskCreated(uint id, string content, address owner);

    // Event to be emitted when a task is completed
    event TaskCompleted(uint id, bool completed);

    // Modifier to restrict function access to the owner of a task
    modifier onlyTaskOwner(uint taskId) {
        require(msg.sender == taskToOwner[taskId], "Not the task owner");
        _;
    }

    // Constructor to set the contract owner
    constructor() {
        owner = msg.sender; // msg.sender is the address that deploys the contract
    }

    // Function to create a new task
    function createTask(string memory _content) public {
        uint taskId = tasks.length; // Get the next task ID
        tasks.push(Task(taskId, _content, false)); // Add a new task to the array
        taskToOwner[taskId] = msg.sender; // Set the task's owner
        emit TaskCreated(taskId, _content, msg.sender); // Emit an event
    }

    // Function to complete a task
    function completeTask(uint taskId) public onlyTaskOwner(taskId) {
        Task storage task = tasks[taskId]; // Get the task by ID
        task.completed = true; // Mark the task as completed
        emit TaskCompleted(taskId, task.completed); // Emit an event
    }

    // Function to get the total number of tasks
    function getTaskCount() public view returns (uint) {
        return tasks.length;
    }

    // Function to get details of a specific task
    function getTask(uint taskId) public view returns (uint, string memory, bool) {
        Task memory task = tasks[taskId];
        return (task.id, task.content, task.completed);
    }
}
