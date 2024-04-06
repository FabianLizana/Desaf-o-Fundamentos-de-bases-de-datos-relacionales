/*Cargo el archivo peliculas. Modifico el archivo reparto agregandole nombre a las columnas 
para luego agregar una nueva columna id la cual será serial y primary key de la tabla reparto.
 */
ALTER TABLE reparto
ADD COLUMN id serial PRIMARY KEY;

--Procedo a hacer primary key la columna id de la tabla peliculas
ALTER TABLE public.peliculas
ADD CONSTRAINT peliculas_pk PRIMARY KEY (id);

/*Procedo a crear una foreign key sobre la columna id_pelicula de la tabla reparto con referencia a la primary key de la tabla peliculas
 */
ALTER TABLE reparto
ADD CONSTRAINT reparto_fk FOREIGN KEY (id_pelicula) REFERENCES peliculas (id) ON DELETE CASCADE;