--joins

--cuenta y cliente mas el pago 

select 
    C.nombre as cliente,
    Cu.numero_cuenta,
    Cu.saldo_deudor,
    P.monto_pago,
    P.fecha_pago,
    P.metodo_pago
from
    Cuenta Cu
join
    Cliente C on Cu.id_cliente = C.id
left join
    Pago P on Cu.id_cuenta = P.id_cuenta
where 
    Cu.estado_cuenta = 'pendiente'
order by 
    C.nombre;

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

