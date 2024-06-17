# sql2

Para la base de datos que estamos desarrollando se toma como modelo una empresa de desarrollo de software. El objetivo es gestionar eficientemente los recursos, clientes, proyectos, roles dentro de la empresa. Con esta base de datos se busca mejorar la asignación de los recursos a los distintos proyectos teniendo en cuenta su seniority, identificar con más claridad los clientes y sus proyectos, y facilitar la gestión de roles dentro de la organización.

Por ejemplo, la base de datos permitirá registrar y asignar recursos a proyectos específicos según sus habilidades, así como realizar un seguimiento detallado del estado y progreso de cada proyecto en curso.

Listado de tablas:

-Clientes: Contiene la información de los clientes de la empresa.

-Proyectos: Almacena información sobre los proyectos pertenecientes a cada cliente, gestionados por la empresa.

-Recursos: Guarda la información sobre los empleados en relación de dependencia disponibles en la empresa.

-Rol: Contiene los distintos roles que se le asignan a los empleados.

-Seniority: Almacena los diferentes niveles de seniority de los empleados en la empresa.

-Gerentes: Contiene la lista con los distintos gerentes responsables de proyectos y de los empleados.

-Provincias: Almacena las diferentes provincias donde pueden residir los recursos.

-Skills: Almacena las diferentes herramientas y tecnologías que pueden tener los recursos.

-Equipos: Almacena los equipos provistos por los proveedores, que utilizan los recursos.

-Género: Contiene los distintos géneros pertenecientes a los recursos.

-EstadoProyecto: Guarda los tipos de estados que puede tener un proyecto.

-TipoProyecto: Almacena los diferentes tipos de proyectos.

-Proveedores: Almacena información sobre los proveedores externos que colaboran con la organización.

-audit_recursos: Guarda el historial de cambios de la tabla recursos.
