La base de datos que se presenta está diseñada para gestionar la información de una organización que 
opera en el ámbito de ventas y servicios técnicos. Su enfoque principal es facilitar el manejo eficiente de 
datos relacionados con empleados, clientes, proyectos y ventas, permitiendo así optimizar la toma de 
decisiones y mejorar la operativa del negocio.
Gestión de Clientes: Se logra un registro detallado de los clientes, lo que permite una atención 
personalizada y mejora la relación con ellos. Además, se puede analizar su historial de compras y 
proyectos, lo que ayuda a entender mejor sus necesidades.
Control de Proyectos: La base de datos incluye una estructura para gestionar los proyectos que son 
solicitados por los clientes, asignando técnicos específicos a cada uno. Esto optimiza la planificación y la 
ejecución de los proyectos, asegurando que se cumplan los plazos y estándares de calidad.
Registro de Ventas: Se facilita el registro y seguimiento de las ventas realizadas por los vendedores, 
permitiendo una evaluación del rendimiento de cada uno a través de sus comisiones y volumen de 
ventas. Esto proporciona datos cruciales para la toma de decisiones estratégicas.
Integridad de Datos: La estructura relacional empleada garantiza la integridad referencial entre las 
distintas entidades, minimizando la posibilidad de errores y duplicidades. Esto asegura que la 
información sea coherente y precisa en todo momento.
La implementación de esta base de datos no solo proporciona una herramienta robusta para la gestión
interna de la organización, sino que también promueve un enfoque basado en datos que puede incluir 
análisis de tendencias, reportes y mejora continua. En un entorno empresarial competitivo, el correcto 
manejo de esta información puede ser un factor diferenciador clave para el éxito de la organización.


Descripcion de los Atributos
1. DEPARTAMENTO
id_departamento (PK): Identificador único del departamento (entero).
nombre: Nombre del departamento (cadena de caracteres).
ubicacion: Ubicación donde se encuentra el departamento (cadena de caracteres).
2. EMPLEADO
id_empleado (PK): Identificador único del empleado (entero).
nombre: Nombre del empleado (cadena de caracteres).
apellido: Apellido del empleado (cadena de caracteres).
telefono: Número de teléfono del empleado (cadena de caracteres).
id_departamento (FK): Identificador del departamento al que pertenece el empleado (entero, referencia 
a DEPARTAMENTO).
3. VENDEDOR
id_vendedor (PK): Identificador único del vendedor (entero).
id_empleado (FK): Identificador del empleado que es vendedor (entero, referencia a EMPLEADO).
comision: Porcentaje de comisión que recibe el vendedor por las ventas realizadas (decimal).
4. TECNICO
id_tecnico (PK): Identificador único del técnico (entero).
id_empleado (FK): Identificador del empleado que es técnico (entero, referencia a EMPLEADO).
especialidad: Especialidad del técnico (cadena de caracteres).
5. CLIENTE
id_cliente (PK): Identificador único del cliente (entero).
nombre: Nombre del cliente (cadena de caracteres).
telefono: Número de teléfono del cliente (cadena de caracteres).
direccion: Dirección del cliente (cadena de caracteres).
6. PROYECTO
id_proyecto (PK): Identificador único del proyecto (entero).
nombre: Nombre del proyecto (cadena de caracteres).
fecha_inicio: Fecha de inicio del proyecto (tipo de datos fecha).
fecha_fin: Fecha de finalización del proyecto (tipo de datos fecha).
id_tecnico (FK): Identificador del técnico encargado del proyecto (entero, referencia a TECNICO).
id_cliente (FK): Identificador del cliente que solicita el proyecto (entero, referencia a CLIENTE).
7. VENTA
id_venta (PK): Identificador único de la venta (entero).
id_vendedor (FK): Identificador del vendedor que realizó la venta (entero, referencia a VENDEDOR).
id_cliente (FK): Identificador del cliente involucrado en la venta (entero, referencia a CLIENTE).
fecha: Fecha en que se realizó la venta (tipo de datos fecha).
total: Monto total de la venta (decimal).
