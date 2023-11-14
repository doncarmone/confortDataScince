-- Query Services Limpios
select
    s.id as idService,
    s.id_detail as idDetail,
    s.id_time as idTime,
    s.id_status as idStatus,
    s.id_os as idOs,
    t.time_request as timeRequest,
    t.time_attention as timeAttention,
    t.time_assignment as timeAssignment,
    o.label as operativeSystem,
    st.label as status,
    d.origin_latitude as originLatitude,
    d.origin_longitude as originLongitude,
    d.destination_latitude as destinationLatitude,
    d.destination_longitude as destinationLongitude,
    d.distance as distance,
    d.cost as cost,
    d.flag_executive as isExecutive,
    d.flag_scheduled as scheduled
from
    services s
    join statuses st on st.id = s.id_status
    join times t on s.id_time = t.id
    join os o on s.id_os = o.id
    join details d on s.id_detail = d.id

-- Query limpieza Usuarios
select
    u.id as idUsuario,
    r.id as idRole,
    r.name as rol,
    u.status as status,
    u.created_at,
    u.updated_at
from
    users u
    join roles r on r.id = u.id_role


-- Query limpieza vehiculos activos
select v.id as idVehicle,
       v.brand as marca,
       v.model as  modelo,
       v.year, v.color,
       v.canceled as activo,
       v.expiration_permission as expiracionDePermiso,
       tv.id as idTipoVehiculo,
       tv.label as tipoVehiculo
from vehicles v join type_vehicles tv on tv.id = v.id_type
where v.canceled = 0
