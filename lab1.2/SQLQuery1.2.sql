CREATE DATABASE Lab1;
Use Lab1

CREATE TABLE [dbo].[������](
  [���_������] [int] NOT NULL PRIMARY KEY,
  [��������] [nvarchar](50) NOT NULL,
  [�����������] [nvarchar](50) NOT NULL
)  ON [PRIMARY]
GO



CREATE TABLE [dbo].[������������� ���������](
  [���_������] [int] NOT NULL,
  [����������] [float] NULL
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[������������� ���������]  WITH CHECK ADD  CONSTRAINT [FK_������������� ���������_������] FOREIGN KEY([���_������])
REFERENCES [dbo].[������] ([���_������])
GO

ALTER TABLE [dbo].[������������� ���������] CHECK CONSTRAINT [FK_������������� ���������_������]
GO

ALTER TABLE [dbo].[������������� ���������]  WITH CHECK ADD  CONSTRAINT [FK_������������� ���������_���������� ������ �����] FOREIGN KEY([���_������])
REFERENCES [dbo].[���������� ������ �����] ([���_������])
GO

ALTER TABLE [dbo].[������������� ���������] CHECK CONSTRAINT [FK_������������� ���������_���������� ������ �����]
GO
CREATE TABLE [dbo].[��������](
  [���_������] [int] NOT NULL,
  [����������] [float] NOT NULL,
  [����������] [nvarchar](50) NULL,
  [����] [date] NOT NULL
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[��������]  WITH CHECK ADD  CONSTRAINT [FK_��������_������] FOREIGN KEY([���_������])
REFERENCES [dbo].[������] ([���_������])
GO

ALTER TABLE [dbo].[��������] CHECK CONSTRAINT [FK_��������_������]
GO

CREATE TABLE [dbo].[����� �� �������� �������](
  [���_������] [int] NOT NULL,
  [����] [date] NOT NULL,
  [������/������] [float] NULL
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[����� �� �������� �������]  WITH CHECK ADD  CONSTRAINT [FK_����� �� �������� �������_������] FOREIGN KEY([���_������])
REFERENCES [dbo].[������] ([���_������])
GO

ALTER TABLE [dbo].[����� �� �������� �������] CHECK CONSTRAINT [FK_����� �� �������� �������_������]
GO

ALTER TABLE [dbo].[����� �� �������� �������]  WITH CHECK ADD  CONSTRAINT [FK_����� �� �������� �������_���������� ������ �����] FOREIGN KEY([���_������])
REFERENCES [dbo].[���������� ������ �����] ([���_������])
GO

ALTER TABLE [dbo].[����� �� �������� �������] CHECK CONSTRAINT [FK_����� �� �������� �������_���������� ������ �����]
GO

CREATE TABLE [dbo].[���������� ������ �����](
  [���_������] [int] NOT NULL PRIMARY KEY,
  [����] [date] NOT NULL,
  [����] [money] NOT NULL,
 ) ON [PRIMARY]

GO

ALTER TABLE [dbo].[���������� ������ �����]  WITH CHECK ADD  CONSTRAINT [FK_���������� ������ �����_������] FOREIGN KEY([���_������])
REFERENCES [dbo].[������] ([���_������])
GO

ALTER TABLE [dbo].[���������� ������ �����] CHECK CONSTRAINT [FK_���������� ������ �����_������]
GO
