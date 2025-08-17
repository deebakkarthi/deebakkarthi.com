---
title: Notes
date: 2023-03-04T12:40:20+05:30
---

# Questions
- Define a distributed system ::
  A distributed system is a collection of autonomous computing
  elements that appears to its users as a single coherent system.
- What are the two fundamental charateristics of a distributed system? ::
    1. Autonomous computing nodes
    2. Single coherent system
- Mention some of the challenges when dealing with a distributed system ::
    1. Synchronization
    2. Group Membership
- Why is synchronization a problem in distributed system? ::
    - Each node operates independently
    - This means that each node has its own notion of time
    - This lack of a common clock makes synchronization and coordination difficult
- What are the two types of groups? ::
    1. Open group
       - Open group is one where nodes can freely join.  
    2. Closed group
       - Only members can communicate
- What are the types of overlays ? ::
    1. Structured Overlay
    1. Restructured Overlay

# Notes
## Openmpi
### Basic concepts
- A /communicator/ defines a group of processes that have the ability to communicate with one another.
- Each process in a  communicator is assigned a *rank*.
- The ~send()~ and ~recv()~ operations work with *tag* and *rank*. The sender process sends the message with a rank and a
  unique id. The receiver process, if it chooses, can receive from the sender by specifying the rank and the id.
### openmpi Boilerplate
```c
#include <mpi.h>

int main(int argc, char **argv) {
  int world_size, world_rank;
  MPI_Init(&argc, &argv);
  MPI_Comm_size(MPI_COMM_WORLD, &world_size);
  MPI_Comm_rank(MPI_COMM_WORLD, &world_size);
  MPI_Finalize();
}
```

- `#include <mpi.h>` is the header containing all the openmpi functions
- `MPI_Init(*argc, ***argc)` initializes the MPI environment and creates a communicator which is identified by the macro =MPI_COMM_WORLD=.
- `MPI_Comm_size(MPI_Comm comm, int *size)` stores the *size* of the communicatior ~comm~ in ~*size~.
- `MPI_Comm_rank(MPI_Comm comm, int *rank)` gets the the *rank* of the process in the communicator ~comm~ and stores it in ~*size~.
- ~MPI_Finalize()` cleans up the env.

### Compiling and Execution
- Though openmpi programs are written in plain-old C, the amount of commandline args to be given to gcc is so huge that it will
  inevitably lead to errors. Hence a wrapper for gcc called ~mpicc~ is used. ~mpicc~ invokes gcc or the C compiler of your choice
  with the appropriate ~-I~ or ~-L~ flags for openmpi to work.
- The programs can't be executed by just using ~./a.out~. There no way to sync two invokations of ~./a.out~. So another program
  called ~mpirun~ handles the invokation part. This makes sure that the required number of processes are spawned and that openmpi
  knows about them.

### Openmpi primitives
- The primitives of any message passing system is the ~send()~ and ~recv()~ commands.
- The prototype of ~MPI_Send()~ is
``` C
int MPI_Send(const void *buf,
        int count,
        MPI_Datatype datatype,
        int dest,
        int tag,
        MPI_Comm comm)
``` 
  - `*buf` is the buffer that contains the message
  - `count` contains the *exact* number of items to send
  - `MPI_Datatype` is used to specify the type. Since C *doesn't have runtime type information*, `MPI_Datatype` is used to specify
    the type. This is used to find the offset by knowing the length of the type
    - 
| MPI datatype           | C equivalent           |
|------------------------+------------------------|
| MPI_SHORT              | short int              |
| MPI_INT                | int                    |
| MPI_LONG               | long int               |
| MPI_LONG_LONG          | long long int          |
| MPI_UNSIGNED_CHAR      | unsigned char          |
| MPI_UNSIGNED_SHORT     | unsigned short int     |
| MPI_UNSIGNED           | unsigned int           |
| MPI_UNSIGNED_LONG      | unsigned long int      |
| MPI_UNSIGNED_LONG_LONG | unsigned long long int |
| MPI_FLOAT              | float                  |
| MPI_DOUBLE             | double                 |
| MPI_LONG_DOUBLE        | long double            |
| MPI_BYTE               | char                   |
  - `dest` Destination rank
  - `tag` Message tag
  - `MPI_Comm` communicator name
- The prototype of `MPI_Recv` is
``` C
int MPI_Recv(void *buf,
        int count,
        MPI_Datatype datatype,
        int source,
        int tag,
        MPI_Comm comm,
        MPI_Status *status)
```
- The args are very similar to `MPI_Send` with two key differences
  1. `*status` is used to get info about the message
  2. `count` is used to specify the *ATMOST* number of items not *EXACT*.
# Sample Programs 
## `send_recv.c`

```c
#include <mpi.h>
#include <stdio.h>

int main(int argc, char **argv)
{
        int world_rank, world_size;
        MPI_Init(NULL, NULL);
        MPI_Comm_size(MPI_COMM_WORLD, &world_size);
        MPI_Comm_rank(MPI_COMM_WORLD, &world_rank);
        char processor_name[MPI_MAX_PROCESSOR_NAME];
        int processor_name_len;
        MPI_Get_processor_name(processor_name, &processor_name_len);
        int buf;
        if (world_rank == 0) {
                buf = 69;
                MPI_Send(&buf, 1, MPI_INT, 1, 0, MPI_COMM_WORLD);
                printf("PROC_%d on %s: Sent %d\n", world_rank, processor_name,
                       buf);
        } else if (world_rank == 1) {
                MPI_Recv(&buf, 1, MPI_INT, 0, 0, MPI_COMM_WORLD,
                         MPI_STATUS_IGNORE);
                printf("PROC_%d on %s: Received %d\n", world_rank,
                       processor_name, buf);
        }
        MPI_Finalize();
        return 0;
}
```

## `ping_pong.c`
```c
#include <mpi.h>
#include <stdio.h>

#define MAX_PONG_COUNT 10

int partner_rank_get(int world_rank)
{
        return world_rank == 1 ? 0 : 1;
}

int main(int argc, char **argv)
{
        int world_size, world_rank;
        MPI_Init(NULL, NULL);
        MPI_Comm_size(MPI_COMM_WORLD, &world_size);
        MPI_Comm_rank(MPI_COMM_WORLD, &world_rank);

        int ping_pong_count = 0;
        int partner_rank = partner_rank_get(world_rank);
        int token = 69;
        while (ping_pong_count < MAX_PONG_COUNT) {
                /* Even rounds sender is proc_0
                 * Odd rounds sender is proc_1
                 * */
                if ((ping_pong_count % 2) == world_rank) {
                        MPI_Send(&token, 1, MPI_INT, partner_rank, 0,
                                 MPI_COMM_WORLD);
                        printf("%d:\t%d -> %d\n", ping_pong_count, world_rank,
                               partner_rank);
                } else {
                        MPI_Recv(&token, 1, MPI_INT, partner_rank, 0,
                                 MPI_COMM_WORLD, MPI_STATUS_IGNORE);
                }
                ping_pong_count++;
        }
        MPI_Finalize();
        return 0;
}
```

** `ring.c`
``` c
#include <mpi.h>
#include <stdio.h>

int main(int argc, char **argv)
{
        MPI_Init(NULL, NULL);
        int world_size, world_rank;
        MPI_Comm_size(MPI_COMM_WORLD, &world_size);
        MPI_Comm_rank(MPI_COMM_WORLD, &world_rank);
        int token;
        /* Atleast one proc has to send. Else there will be deadlock
         * So root will send first and all the others will be blocked
         * */
        if (world_rank != 0) {
                /* All the procs except the root are blocked here until root
                 * releases the next proc
                 * */
                MPI_Recv(&token, 1, MPI_INT, world_rank - 1, 0, MPI_COMM_WORLD,
                         MPI_STATUS_IGNORE);
                printf("%d--%d-->%d\n", world_rank - 1, token, world_rank);
        } else {
                token = 69;
        }
        /* Once unblocked, send the token to the next proc and release it
         * */
        MPI_Send(&token, 1, MPI_INT, (world_rank + 1) % world_size, 0,
                 MPI_COMM_WORLD);
        if (world_rank == 0) {
                /* Root will wait till the last process sends the token
                 * */
                MPI_Recv(&token, 1, MPI_INT, world_size - 1, 0, MPI_COMM_WORLD,
                         MPI_STATUS_IGNORE);
                printf("%d--%d-->%d\n", world_size - 1, token, world_rank);
        }
        MPI_Finalize();
        return 0;
}
```

## `check_status.c`
``` c
#include <mpi.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define MAX_LEN 100

int main()
{
        srand(time(NULL));
        MPI_Init(NULL, NULL);
        int world_size, world_rank;
        MPI_Comm_size(MPI_COMM_WORLD, &world_size);
        MPI_Comm_rank(MPI_COMM_WORLD, &world_rank);
        int buf[MAX_LEN], items_num;
        if (world_rank == 0) {
                /* Randomly pick number from 1 to 100 for elements to send
                 * */
                items_num = (rand() % 100) + 1;
                MPI_Send(buf, items_num, MPI_INT, 1, 0, MPI_COMM_WORLD);
                printf("PROC_%d: Sent %d items\n", world_rank, items_num);
        } else if (world_rank == 1) {
                MPI_Status status;
                /* The count arg in recv is for *atmost* count elements.
                 * The count arg in send is for *exactly* count elements.
                 * The actual number of elements received is found using
                 * MPI_Get_count()
                 * */
                MPI_Recv(buf, MAX_LEN, MPI_INT, 0, 0, MPI_COMM_WORLD, &status);
                MPI_Get_count(&status, MPI_INT, &items_num);
                printf("PROC_%d: Received %d items\n", world_rank, items_num);
        }
        MPI_Finalize();
        return 0;
}
```

** `probe.c`
```c
/* Same as check_status but uses probe to get the items_num
 * */
#include <mpi.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define MAX_LEN 100

int main()
{
        srand(time(NULL));
        MPI_Init(NULL, NULL);
        int world_size, world_rank;
        MPI_Comm_size(MPI_COMM_WORLD, &world_size);
        MPI_Comm_rank(MPI_COMM_WORLD, &world_rank);
        int items_num;
        if (world_rank == 0) {
                int buf[MAX_LEN];
                /* Randomly pick number from 1 to 100 for elements to send
                 * */
                items_num = (rand() % 100) + 1;
                MPI_Send(buf, items_num, MPI_INT, 1, 0, MPI_COMM_WORLD);
                printf("PROC_%d: Sent %d items\n", world_rank, items_num);
        } else if (world_rank == 1) {
                MPI_Status status;
                /* Probe proc_0 the number of elements
                 * */
                MPI_Probe(0, 0, MPI_COMM_WORLD, &status);
                MPI_Get_count(&status, MPI_INT, &items_num);
                int *buf = malloc(sizeof(*buf) * items_num);
                MPI_Recv(buf, items_num, MPI_INT, 0, 0, MPI_COMM_WORLD, &status);
                printf("PROC_%d: Received %d items\n", world_rank, items_num);
        }
        MPI_Finalize();
        return 0;
}
```

## `bcast.c`
```c
#include <mpi.h>
#include <stdio.h>

#define BUF_SIZE 10

void arr_print(int *arr, int len)
{
        printf("[");
        for (int i = 0; i < len-1; i++)
                printf("%d, ",arr[i]);
        printf("%d]\n", arr[len-1]);
        return;
}

int main()
{
        MPI_Init(NULL, NULL);
        int world_size, world_rank;
        MPI_Comm_size(MPI_COMM_WORLD, &world_size);
        MPI_Comm_rank(MPI_COMM_WORLD, &world_rank);
        int buf[BUF_SIZE];
        MPI_Bcast(buf, BUF_SIZE, MPI_INT, 0, MPI_COMM_WORLD);
        printf("PROC_%d:", world_rank);
        arr_print(buf, BUF_SIZE);
        MPI_Finalize();
        return 0;
}
```

