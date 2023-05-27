CREATE DATABASE Lab1;
Use Lab1

CREATE TABLE [dbo].[Валюта](
  [Код_Валюты] [int] NOT NULL PRIMARY KEY,
  [Название] [nvarchar](50) NOT NULL,
  [Обозначение] [nvarchar](50) NOT NULL
)  ON [PRIMARY]
GO



CREATE TABLE [dbo].[Аналитическая ведомость](
  [Код_Валюты] [int] NOT NULL,
  [Количество] [float] NULL
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Аналитическая ведомость]  WITH CHECK ADD  CONSTRAINT [FK_Аналитическая ведомость_Валюта] FOREIGN KEY([Код_Валюты])
REFERENCES [dbo].[Валюта] ([Код_Валюты])
GO

ALTER TABLE [dbo].[Аналитическая ведомость] CHECK CONSTRAINT [FK_Аналитическая ведомость_Валюта]
GO

ALTER TABLE [dbo].[Аналитическая ведомость]  WITH CHECK ADD  CONSTRAINT [FK_Аналитическая ведомость_Справочник курсов валют] FOREIGN KEY([Код_Валюты])
REFERENCES [dbo].[Справочник курсов валют] ([Код_Валюты])
GO

ALTER TABLE [dbo].[Аналитическая ведомость] CHECK CONSTRAINT [FK_Аналитическая ведомость_Справочник курсов валют]
GO
CREATE TABLE [dbo].[Операция](
  [Код_Валюты] [int] NOT NULL,
  [Количество] [float] NOT NULL,
  [Назначение] [nvarchar](50) NULL,
  [Дата] [date] NOT NULL
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Операция]  WITH CHECK ADD  CONSTRAINT [FK_Операция_Валюта] FOREIGN KEY([Код_Валюты])
REFERENCES [dbo].[Валюта] ([Код_Валюты])
GO

ALTER TABLE [dbo].[Операция] CHECK CONSTRAINT [FK_Операция_Валюта]
GO

CREATE TABLE [dbo].[Отчет по курсовой разнице](
  [Код_Валюты] [int] NOT NULL,
  [Дата] [date] NOT NULL,
  [Приход/Расход] [float] NULL
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Отчет по курсовой разнице]  WITH CHECK ADD  CONSTRAINT [FK_Отчет по курсовой разнице_Валюта] FOREIGN KEY([Код_Валюты])
REFERENCES [dbo].[Валюта] ([Код_Валюты])
GO

ALTER TABLE [dbo].[Отчет по курсовой разнице] CHECK CONSTRAINT [FK_Отчет по курсовой разнице_Валюта]
GO

ALTER TABLE [dbo].[Отчет по курсовой разнице]  WITH CHECK ADD  CONSTRAINT [FK_Отчет по курсовой разнице_Справочник курсов валют] FOREIGN KEY([Код_Валюты])
REFERENCES [dbo].[Справочник курсов валют] ([Код_Валюты])
GO

ALTER TABLE [dbo].[Отчет по курсовой разнице] CHECK CONSTRAINT [FK_Отчет по курсовой разнице_Справочник курсов валют]
GO

CREATE TABLE [dbo].[Справочник курсов валют](
  [Код_Валюты] [int] NOT NULL PRIMARY KEY,
  [Дата] [date] NOT NULL,
  [Курс] [money] NOT NULL,
 ) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Справочник курсов валют]  WITH CHECK ADD  CONSTRAINT [FK_Справочник курсов валют_Валюта] FOREIGN KEY([Код_Валюты])
REFERENCES [dbo].[Валюта] ([Код_Валюты])
GO

ALTER TABLE [dbo].[Справочник курсов валют] CHECK CONSTRAINT [FK_Справочник курсов валют_Валюта]
GO
