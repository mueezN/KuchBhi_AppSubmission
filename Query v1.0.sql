use TechReg
go

create table [Events]
(
EventID int Primary Key,
EventName varchar(50),
StartDate Date,
StartTime Time,
EventHead varchar(5) foreign key references Managers(ManagerID)
)

create table ManagerTypes(
TypeID int ,
Department varchar(50),
Position varchar(50),
Primary Key(TypeID,Department,Position)
)

create table Promo(
PromoID int Primary key,
PromoName varchar(50),
Link varchar(100)
)

create table Stalls(
StallID int Primary key,
StallLoc varchar(100),
StallPrice int
)

create table SponsorPackages(
PackageID int Primary key,
PackageName varchar(50),
PackagePrice int 
)

create table ExecTeam(
ET int Primary key,
ETName varchar(50),
ETStartTime Time,
ETEndTime Time,
constraint CheckTime Check (ETEndTime>ETStartTime)
)

create table Participant(
ID varchar(5) primary key,
Institution varchar(50),
Event_ID int foreign key references [Events](EventID),
PaymentStatus varchar(1) check (PaymentStatus='N' OR PaymentStatus ='P'),
RegNumber varchar(7) unique  
)

create table Sponsor(
ID varchar(5) primary key,
CompanyName varchar(50)
)

create table Manager(
ID varchar(5) primary key,
RollNo varchar(8),
M_type int foreign key references ManagerTypes(TypeID)
)

create table UserPass(
ID varchar(5) foreign key references Manager(ID),
constraint FK_S foreign key (ID) references Sponsor(ID),
constraint FK_P foreign key (ID) references Participant(ID),
[Name] varchar(50),
[Password] varchar(20) check(length([Password])>4 AND has),
DOB Date,
PhoneNumber int check(length(PhoneNumber)>4),
Email varchar(25),
)

create table Payments(
PayerID varchar(5) foreign key references Participant(ID),
constraint FK_PayS foreign key (PayerID) references Sponsor(ID),
Amount int,
PaymentTime Time,
TransactionID int Primary key
)

create table P_Reg(
PartID varchar(5) foreign key references Participant(ID),
EventID int foreign key references [Events](EventID),
PayAmount int

)

create table S_Reg(
SponsorID varchar(5) foreign key references Sponsor(ID),
PayAmount int
)

create table BiddingStall(
BidderID varchar(5) foreign key references Sponsor(ID),
StallID int foreign key references Stalls(StallID),
CurrentBid int,
)

create table Meetings(
SponsorID varchar(5) foreign key references Sponsor(ID),
TeamID int foreign key references ExecTeam(ET),
MeetingTime Time,
MeetingDate Date
)

