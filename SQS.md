# SQS Message Operations

    Operation	                    Description
    
    SendMessage	                  Send a single message to the queue.
    SendMessageBatch	            Send multiple messages in a single batch (up to 10).
    ReceiveMessage	              Pull (poll) messages from the queue.
    DeleteMessage	                Delete a specific message after processing.
    DeleteMessageBatch	          Delete multiple messages at once.
    ChangeMessageVisibility	      Change the visibility timeout of a specific message (e.g., give more time for processing).
    ChangeMessageVisibilityBatch	Change visibility for multiple messages at once.

# Queue Operations

    Operation              Description
    
    CreateQueue            Create a new queue.
    DeleteQueue            Delete a queue permanently.
    ListQueues             List all queues in your AWS account.
    GetQueueAttributes     Get metadata about a queue (e.g., number of messages).
    SetQueueAttributes     Update queue settings (e.g., set dead-letter queue, visibility timeout).
    PurgeQueue             Remove all messages from the queue instantly (dangerous — use with care!).


# Other Important Actions
    Operation                           Description
    Dead Letter Queue (DLQ)             Configure failed messages to move to another queue for inspection.
    FIFO vs Standard Queues             Choose if you want first-in-first-out ordering and exactly-once processing (FIFO).
    Delay Messages                      Send a message but delay its delivery (up to 15 mins).
    Long Polling                        Wait until a message arrives instead of constantly polling and wasting resources.
