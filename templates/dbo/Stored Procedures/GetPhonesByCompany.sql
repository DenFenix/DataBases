CREATE PROCEDURE [dbo].[GetPhonesByCompany]
	@name NVARCHAR(50)
AS
	SELECT * FROM dbo.Phones
	WHERE CompanyId = (SELECT Id FROM dbo.Companies WHERE [Name] = @name)
	print 'test'
	print 'newMessage'
	print '2 commits'