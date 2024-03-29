USE [task]
GO
/****** Object:  Table [dbo].[marks]    Script Date: 7/16/2022 10:56:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[marks](
	[student_id] [int] NULL,
	[subject_id] [int] NULL,
	[grade] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[students]    Script Date: 7/16/2022 10:56:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[students](
	[id] [int] NOT NULL,
	[name] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[subjects]    Script Date: 7/16/2022 10:56:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[subjects](
	[id] [int] NOT NULL,
	[name] [char](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[marks] ([student_id], [subject_id], [grade]) VALUES (1, 1, 88)
INSERT [dbo].[marks] ([student_id], [subject_id], [grade]) VALUES (1, 3, 84)
INSERT [dbo].[marks] ([student_id], [subject_id], [grade]) VALUES (1, 4, 91)
INSERT [dbo].[marks] ([student_id], [subject_id], [grade]) VALUES (1, 5, 92)
INSERT [dbo].[marks] ([student_id], [subject_id], [grade]) VALUES (2, 2, 78)
INSERT [dbo].[marks] ([student_id], [subject_id], [grade]) VALUES (2, 3, 93)
INSERT [dbo].[marks] ([student_id], [subject_id], [grade]) VALUES (2, 4, 81)
INSERT [dbo].[marks] ([student_id], [subject_id], [grade]) VALUES (3, 1, 83)
INSERT [dbo].[marks] ([student_id], [subject_id], [grade]) VALUES (3, 5, 97)
INSERT [dbo].[marks] ([student_id], [subject_id], [grade]) VALUES (3, 6, 77)
INSERT [dbo].[marks] ([student_id], [subject_id], [grade]) VALUES (4, 1, 85)
INSERT [dbo].[marks] ([student_id], [subject_id], [grade]) VALUES (4, 2, 61)
INSERT [dbo].[marks] ([student_id], [subject_id], [grade]) VALUES (4, 6, 93)
INSERT [dbo].[marks] ([student_id], [subject_id], [grade]) VALUES (1, 2, 56)
INSERT [dbo].[marks] ([student_id], [subject_id], [grade]) VALUES (1, 6, 57)
INSERT [dbo].[marks] ([student_id], [subject_id], [grade]) VALUES (2, 1, 48)
INSERT [dbo].[marks] ([student_id], [subject_id], [grade]) VALUES (2, 5, 49)
INSERT [dbo].[marks] ([student_id], [subject_id], [grade]) VALUES (2, 6, 45)
INSERT [dbo].[marks] ([student_id], [subject_id], [grade]) VALUES (1, 7, 53)
INSERT [dbo].[marks] ([student_id], [subject_id], [grade]) VALUES (1, 8, 48)
INSERT [dbo].[marks] ([student_id], [subject_id], [grade]) VALUES (5, 1, 90)
INSERT [dbo].[marks] ([student_id], [subject_id], [grade]) VALUES (5, 2, 68)
INSERT [dbo].[marks] ([student_id], [subject_id], [grade]) VALUES (5, 3, 91)
INSERT [dbo].[marks] ([student_id], [subject_id], [grade]) VALUES (5, 4, 74)
INSERT [dbo].[marks] ([student_id], [subject_id], [grade]) VALUES (6, 1, 90)
INSERT [dbo].[marks] ([student_id], [subject_id], [grade]) VALUES (6, 2, 89)
INSERT [dbo].[marks] ([student_id], [subject_id], [grade]) VALUES (6, 3, 77)
INSERT [dbo].[marks] ([student_id], [subject_id], [grade]) VALUES (6, 4, 69)
INSERT [dbo].[marks] ([student_id], [subject_id], [grade]) VALUES (7, 2, 90)
INSERT [dbo].[marks] ([student_id], [subject_id], [grade]) VALUES (7, 3, 80)
INSERT [dbo].[marks] ([student_id], [subject_id], [grade]) VALUES (7, 4, 95)
INSERT [dbo].[marks] ([student_id], [subject_id], [grade]) VALUES (7, 5, 94)
INSERT [dbo].[marks] ([student_id], [subject_id], [grade]) VALUES (7, 6, 93)
INSERT [dbo].[marks] ([student_id], [subject_id], [grade]) VALUES (3, 2, 99)
INSERT [dbo].[marks] ([student_id], [subject_id], [grade]) VALUES (3, 3, 81)
INSERT [dbo].[marks] ([student_id], [subject_id], [grade]) VALUES (3, 4, 78)
INSERT [dbo].[marks] ([student_id], [subject_id], [grade]) VALUES (4, 3, 85)
INSERT [dbo].[marks] ([student_id], [subject_id], [grade]) VALUES (4, 4, 79)
INSERT [dbo].[marks] ([student_id], [subject_id], [grade]) VALUES (4, 5, 85)
INSERT [dbo].[marks] ([student_id], [subject_id], [grade]) VALUES (5, 5, 90)
INSERT [dbo].[marks] ([student_id], [subject_id], [grade]) VALUES (5, 6, 95)
INSERT [dbo].[marks] ([student_id], [subject_id], [grade]) VALUES (6, 5, 70)
INSERT [dbo].[marks] ([student_id], [subject_id], [grade]) VALUES (6, 6, 66)
INSERT [dbo].[marks] ([student_id], [subject_id], [grade]) VALUES (7, 1, 96)
GO
INSERT [dbo].[students] ([id], [name]) VALUES (1, N'Weaam')
INSERT [dbo].[students] ([id], [name]) VALUES (2, N'Israa')
INSERT [dbo].[students] ([id], [name]) VALUES (3, N'Aya')
INSERT [dbo].[students] ([id], [name]) VALUES (4, N'Maram')
INSERT [dbo].[students] ([id], [name]) VALUES (5, N'Shaimaa')
INSERT [dbo].[students] ([id], [name]) VALUES (6, N'Batool')
INSERT [dbo].[students] ([id], [name]) VALUES (7, N'Nour')
GO
INSERT [dbo].[subjects] ([id], [name]) VALUES (1, N'Math                          ')
INSERT [dbo].[subjects] ([id], [name]) VALUES (2, N'Physics                       ')
INSERT [dbo].[subjects] ([id], [name]) VALUES (3, N'Calculas                      ')
INSERT [dbo].[subjects] ([id], [name]) VALUES (4, N'History                       ')
INSERT [dbo].[subjects] ([id], [name]) VALUES (5, N'English                       ')
INSERT [dbo].[subjects] ([id], [name]) VALUES (6, N'Arabic                        ')
INSERT [dbo].[subjects] ([id], [name]) VALUES (7, N'chemistry                     ')
INSERT [dbo].[subjects] ([id], [name]) VALUES (8, N'geography                     ')
GO
ALTER TABLE [dbo].[marks]  WITH CHECK ADD FOREIGN KEY([student_id])
REFERENCES [dbo].[students] ([id])
GO
ALTER TABLE [dbo].[marks]  WITH CHECK ADD FOREIGN KEY([subject_id])
REFERENCES [dbo].[subjects] ([id])
GO

select students.id as ID, students.name as Name, avg(marks.grade) as Average,
case(select count(marks.grade)
    from marks
    where students.id = marks.student_id 
    and marks.grade < 60)
    
	when 0 then 'Pass'
    when 1 then 'Incomplete'
    when 2 then 'Incomplete'
    when 3 then 'Incomplete'
    else 'Fail'
    
end as Student_status
from students, marks
where students.id = marks.student_id
group by students.id, students.name;


select top 3 students.name, avg(marks.grade)
from marks, students
where students.id = marks.student_id
and (select count(marks.grade)
    from marks
    where students.id = marks.student_id 
    and marks.grade < 60) = 0
group by students.id, students.name
order by avg(marks.grade) desc;