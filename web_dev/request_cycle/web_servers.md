What are some of the key design philosophies of the Linux operating system?
Small is Beautiful
Each Program Does One Thing Well
Prototype as Soon as Possible
Choose Portability Over Efficiency
Store Data in Flat Text Files
Use Software Leverage
Use Shell Scripts to Increase Leverage and Portability
Avoid Captive User Interfaces
Make Every Program a Filter

In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?

Somewhat similar to an instance of a class in Ruby, a VPS is an instance (copy) of an operating system. Advantages include being able to be created and configured much more easily than a dedicated physical server and are priced much lower.

Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?

It defeats the security model that's been in place for years. Applications are meant to be run with non-administrative security (or as mere mortals) so you have to elevate their privileges to modify the underlying system. For example you wouldn't want that recent crash of Rhythmbox to wipe out your entire $HOME/Music directory due to a bug. Or that vulnerability that was just posted in ProFTPD to allow an attacker to gain a ROOT shell.
Its just good practice on any operating system to run your applications on a user level and leave administrative tasks to the root user, and only on a per-need basis.