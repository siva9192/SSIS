create proc ExecuteSSISPackage(@ServerName nvarchar(100), @Database nvarchar(100))
as
begin

Declare @execution_id bigint
EXEC [SSISDB].[catalog].[create_execution] @package_name=N'Package.dtsx', @execution_id=@execution_id OUTPUT, @folder_name=N'Test Project', @project_name=N'121 How to execute SSIS package from Stored Procedure', @use32bitruntime=False, @reference_id=Null, @runinscaleout=False
Select @execution_id
DECLARE @var0 sql_variant = @Database
EXEC [SSISDB].[catalog].[set_execution_parameter_value] @execution_id,  @object_type=20, @parameter_name=N'Database', @parameter_value=@var0
DECLARE @var1 sql_variant =@ServerName
EXEC [SSISDB].[catalog].[set_execution_parameter_value] @execution_id,  @object_type=20, @parameter_name=N'ServerName', @parameter_value=@var1
DECLARE @var2 smallint = 1
EXEC [SSISDB].[catalog].[set_execution_parameter_value] @execution_id,  @object_type=50, @parameter_name=N'LOGGING_LEVEL', @parameter_value=@var2
EXEC [SSISDB].[catalog].[start_execution] @execution_id

end