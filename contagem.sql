CREATE FUNCTION ContarClientesPorDia(@DataCadastro DATE)
RETURNS INT
AS
BEGIN
    DECLARE @TotalClientes INT;
    
    SELECT @TotalClientes = COUNT(*)
    FROM Clientes
    WHERE CAST(DataCadastro AS DATE) = @DataCadastro;
    
    RETURN @TotalClientes;
END;
