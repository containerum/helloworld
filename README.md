# helloworld
Simple app for the first deploy on Containerum

![](colored_containerum.jpg)
## How to deploy on Containerum

**1.** Sign Up at [containerum.com](https://containerum.com)

**2.** Install CLI Containerum `chkit` following [instruction](https://containerum.com/documentation/Installing-Containerum-CLI-from-binaries).

**2.** Open Terminal and run `chkit login`

```
$ chkit login
Enter your email: test@gmail.com
Password:
********
Chosen namespace: mynamespace
Successful login
Token changed to:  QA0u64rOkTtCxxxxxxxxxxliUAnBnPlCbGQfpCQpzqM=
```
**3.** Let's deploy any app from the [DockerHub](https://hub.docker.com), let it be [Hello, World! It's Containerum](https://hub.docker.com/r/containerum/helloworld/).

**4.** Use `chkit run` command:
```
$ chkit run hello --configure

Enter image: containerum/helloworld
Enter ports:
Enter labels (key=value ... key3=value3):
Enter commands (command1 ... command3):
Enter environ variables (key=value ... key3=value3):
Enter  CPU cores count(*m):100m
Enter memory size(*Mi | *Gi): 128Mi
Enter  replicas count: 1
run... OK
```
**5.** Use `chkit expose` command:
```
$ chkit expose deploy hello -p hellosvc:5000:TCP

expose... OK
```
**5.** Use `chkit get` command:
```
$ chkit get deploy

+------------+--------------+---------+-------------------+----------------+-----+
| NAME       | CLUSTER-IP   | EXTERNAL| HOST              | PORT(S)        | AGE |
+------------+--------------+---------+-------------------+----------------+-----+
| hello-926c | 10.103.95.119| true    | containerum.io    | 24469:5000/TCP | 15s |
+------------+--------------+---------+-------------------+----------------+-----+
```
**6.** Go to http://x1.containerum.io:24469:

Done!
