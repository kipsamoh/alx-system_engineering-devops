#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

/**
 * infinite_while - used when done _creating the parent _process and the,
 * _zombies.
 *
 * Return: always 0
 */
int infinite_while(void)
{
	while (1)
	{
		sleep(1);
	}
	return (0);
}

/**
 * main - entry _point for program
 * Description - creates five _zombie _processes.
 *
 * Return: always 0
 */
int main(void)
{
	int x, pid;

	for (x = 0; x < 5; x++)
	{
		pid = fork();

		if (pid == 0)
		{
			printf("Zombie process created, PID: %d\n", getpid());
			return (0);
		}
	}
	infinite_while();
	return (0);
}
