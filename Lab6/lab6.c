#include<stdio.h>
#include<conio.h>
void main()
{
	int n,i,qt,count=0,temp,sq=0,bt[10],wt[10],tat[10],rem_bt[10];
	float awt=0, atat=0;
	printf("Vvedite nomer procesa");
	scanf("%d", &n);
	printf("Vvedite vremy vipolneniya procesa");
	for(i=0;i<n;i++)
	{
		scanf("%d",&bt[i]);
		rem_bt[i]=bt[i];
	}
	printf("Vvedite kvantum vremeni");
	scanf("%d",&qt);
	while(1)
	{
		for(i=0,count=0;i<n;i++)
		{
			temp=qt;
			if(rem_bt[i]==0)
		    {
		count++;
		continue;
			}
	if(rem_bt[i]>qt)
	  rem_bt[i]=rem_bt[i]-qt;
	  else
	      if(rem_bt[i]>=0)
	      {
	      	temp=rem_bt[i];
	      	rem_bt[i]=0;
		  }
		  sq=sq+temp;
		  tat[i]=sq;
}
if(n==count)
    	break;
}
printf("\nprocess\tvremy vipoln\tobschee vremy\twaiting time\n");
for(i=0;i<n;i++)
{
	wt[i]=tat[i]-bt[i];
	awt=awt=awt+wt[i];
	atat=atat+tat[i];
	printf("\n%d\t%d\t\t%d\t\t%d",i+1,bt[i],tat[i],wt[i]);
}
awt=awt/n;
atat=atat/n;
printf("\nSrednee vremy ojidaniya=%f\n",awt);
printf("\nSrednee vremy vipolneniya=%f",atat);
fflush(stdin);
getchar();
return(0);
}