## Confort data analysis for Codigo Facilito Bootcamp

Este cuaderno contiene datos y hallazgos con respecto a la base datos de una compañia de taxis.


### ¿Que gestiona la app de taxis?

En un principio se buscaba que fuera un backend que pudiera otorgar comunicacion a tres aplicaciones:
- `Un sistema web basado en Vue`
    - Este sistema es conocido como Cabina en el cual por medio de roles y privilegios se dan de alta:
        - usuarios de cabina y/o administrativos.
        - los datos conductores como sus licencias con expiracion y una referencia fotografica de ellos mismos.
        - de los vehiculos se toman marca,modelo, placas, numeros economicos, permisos de transito y color.
        - Se pueden rastrear y dar de alta nuevos servicios.
- `La apliacion movil de usaurios (Android/iOS)`
    - Como una propuesta local para otorgar a usuarios mediante sana competencia una alternativa a Uber/Didi/Cabify.
- `La aplicacion movil de conductor (Android/iOS)`
    - Los conductores de taxis pueden otorgar servicio tradicional mediante paradas en la calle.
    - Cabina puede enviarles servicios para atenderlos con las direcciones exactas.
    - Dicha aplicacion sirve para monitorear (Casi en tiempo real) la geolocalizacion de la flotilla.
    - Dicha aplicacion tambien tiene accesos a Google maps y waze para servicios de GPS.