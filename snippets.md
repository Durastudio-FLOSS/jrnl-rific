# Code snippets for various features

### Request a journal entry upon every terminal login

~~~
function log_question()
{
   echo $1
   read
   jrnl 50ten40-Handbook now: ${1} "#50ten40 #LI $REPLY"
}
log_question 'From your current activity, what life inventory question comes to mind?'
#log_question 'What is most important?'
~~~
