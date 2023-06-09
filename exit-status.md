### Exit Status

Usually in Linux, script won't stop by default even it face error. It is our responsibility to check the previous command is success or not.

exit status is very important in Linux. We use this to know the result is success or failure. Linux store the result in a special variable

```
$?
```

```
echo $?
```

0        --> Success code <br/>
1-127    --> Failure