# IP-sweeper

An IP sweeper that takes a specific IP that takes the first three octets of an IPv4 address, and sweeps through all the rest from 1 to 254. After sweeping through all of them, it appends all the IP's into a text file called iplist.txt, and it deletes any redundancies in the file.

# Usage 

To use the program, clone the repository and navigate to the location of the file on your system, and run it like this:
```
$ ./ipsweeperappender.sh 192.168.1.0  # Take this IPv4 address as an example, you are free to use whatever IP address you want.
```

# Troubleshooting

Should you get an error message that states that you do not have permission to modify the code, simply run the command:

```
$ chmod 777  # To set read, write and execute permission.
$ chmod +x  # To set execute permission only.
```
