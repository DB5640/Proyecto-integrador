-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE consulta_cliente 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	select 
    Cl.nombre as cliente,
    Cu.numero_cuenta,
    Cob.estado_cobranza,
    E.nombre as empleado_asignado,
    E.cargo,
    CE.fecha_asignacion
from 
    Cobranza Cob
join
    Cuenta Cu on Cob.id_cuenta = Cu.id_cuenta
join 
    Cliente Cl on Cu.id_cliente = Cl.id
JOIN 
    Cobranza_Empleado CE on Cob.id_cobranza = CE.id_cobranza_empleado
join 
    Empleado E on CE.id_empleado = E.id_empleado
where
    Cob.estado_cobranza = 'pendiente'
    and CE.estado_asignacion = 'activo';

END
GO
