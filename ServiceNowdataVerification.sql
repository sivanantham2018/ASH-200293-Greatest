select * from sysobjects where xtype='U' order by 10 desc

select * from dbo.SN1 -- page 1 
select * from dbo.SN2 -- Sheet 1

select  'NameMismatch' Cate,b.Name Sheet1Value,a.Name Page1Value, a.* from dbo.SN1 a
join dbo.SN2  b on a.[Location Code] = b.[Location Code]
where a.[Name] <> b.[Name]
union
select  'StreetMismatch' Cate,b.Street, a.Street,a.* from dbo.SN1 a
join dbo.SN2  b on a.[Location Code] = b.[Location Code]
where a.Street <> b.Street
union
select  'CityMismatch' Cate,b.City,a.City, a.* from dbo.SN1 a
join dbo.SN2  b on a.[Location Code] = b.[Location Code]
where a.City <> b.City
union
select  '[Storis ID]Mismatch' Cate,b.[Storis ID],a.[Storis ID], a.* from dbo.SN1 a
join dbo.SN2  b on a.[Location Code] = b.[Location Code]
where isnull(a.[Storis ID],'') <> isnull(b.[Storis ID],'')
union
select  '[State]Mismatch' Cate,b.[State / Province], a.[State / Province],a.* from dbo.SN1 a
join dbo.SN2  b on a.[Location Code] = b.[Location Code]
where isnull(a.[State / Province],'') <> isnull(b.[State / Province],'')
union
select  '[Location Type]Mismatch' Cate,b.[Location type],a.[Location type], a.* from dbo.SN1 a
join dbo.SN2  b on a.[Location Code] = b.[Location Code]
where isnull(a.[Location type],'') <> isnull(b.[Location type],'')
union
select  '[Address Line 2]Mismatch' Cate,b.[Address Line 2], a.[Address Line 2],a.* from dbo.SN1 a
join dbo.SN2  b on a.[Location Code] = b.[Location Code]
where isnull(a.[Address Line 2],'') <> isnull(b.[Address Line 2],'')
union
select  '[Company]Mismatch' Cate,b.[Company],a.[Company], a.* from dbo.SN1 a
join dbo.SN2  b on a.[Location Code] = b.[Location Code]
where upper(isnull(a.[Company],'')) <> upper(isnull(b.[Company],''))
union
select  '[Unit Number]Mismatch' Cate,b.[Unit Number],a.[Unit Number], a.* from dbo.SN1 a
join dbo.SN2  b on a.[Location Code] = b.[Location Code]
where isnull(a.[Unit Number],'') <> isnull(b.[Unit Number],'')
  union
select  '[Account Number]Mismatch' Cate,cast(b.[Account Number] as varchar),cast(a.[Account Number] as varchar), a.* from dbo.SN1 a
join dbo.SN2  b on a.[Location Code] = b.[Location Code]
where isnull(a.[Account Number],'') <> isnull(b.[Account Number],'') 
union
select  '[Market]Mismatch' Cate,b.[Market],a.[Market], a.* from dbo.SN1 a
join dbo.SN2  b on a.[Location Code] = b.[Location Code]
where isnull(a.[Market],'') <> isnull(b.[Market],'') 
union
select  '[Region]Mismatch' Cate,b.[Region],a.[Region], a.* from dbo.SN1 a
join dbo.SN2  b on a.[Location Code] = b.[Location Code]
where isnull(a.[Region],'') <> isnull(b.[Region],'')   
union
select  '[RDC Ship To]Mismatch' Cate,b.[RDC Ship To],a.[RDC Ship To], a.* from dbo.SN1 a
join dbo.SN2  b on a.[Location Code] = b.[Location Code]
where isnull(a.[RDC Ship To],'') <> isnull(b.[RDC Ship To],'')   
union
select  '[Store Front Ship To]Mismatch' Cate,b.[Store Front Ship To],a.[Store Front Ship To], a.* from dbo.SN1 a
join dbo.SN2  b on a.[Location Code] = b.[Location Code]
where isnull(a.[Store Front Ship To],'') <> isnull(b.[Store Front Ship To],'')   



