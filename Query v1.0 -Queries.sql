Use TechReg
go

If exists(
Select *
from UserPass as A,UserPass as B
where A.[Password]='' AND B.ID='' AND SUBSTRING('',1,1)='P'
)
Begin
Print 'Done'
End
Else
Print 'Error1'

Select *
from UserPass join Participant on Participant.ID=UserPass.ID
Where Participant.ID=''

IF exists(
Select *
from UserPass where UserPass.ID=''
)
Begin
Insert into P_Reg
values ('','','')
End
Else
Print 'Error'

Select *
from Promo

Select * 
from [Events]

Select* 
from [Events]
where EventID in(
Select EventID
from [Events]
)

------------------------------------------------------------
If exists(
Select *
from UserPass as A,UserPass as B
where A.[Password]='' AND B.ID='' AND SUBSTRING('',1,1)='S'
)
Begin
Print 'Done'
End
Else
Print 'Error1'

Select * 
from SponsorPackages

If (''>(
Select Max(BidOffered)
From BiddingStall
)
)
Begin
Print 'Inserted'
Insert into BiddingStall
values ('','','')
End
Else
Insert into BiddingStall
values ('','','')

If(
(Select Available
from Stalls
where StallID='')
='Y')
Begin
Insert into S_Reg
values('','','')
End
Else
Print 'Error'

IF (
'' Between (Select ETStartTime from ExecTeam where ExecTeam.ET='') AND
 (Select ETEndTime from ExecTeam where ExecTeam.ET='')
 AND '' NOT IN (Select MeetingTime from Meetings)
)
Begin
Insert into Meetings
values('','','','');
End
Else
Print 'Error'

Select Sum(S_Reg.PayAmount)
from S_Reg
where SponsorID=''

Select *
from Manager
join ManagerTypes on M_type=ManagerTypes.TypeID
where ManagerTypes.Department=(
Select Department
from ManagerTypes
join Manager on M_type=TypeID
where ID='')