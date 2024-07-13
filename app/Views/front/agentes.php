<!-- La funcionalidad será agregada en próxima entrega luego de ver backend -->
<div class="container mt-3 mb-3 table-responsive">
    <div class="d-flex justify-content-center">
        <button 
            class="btn btn-primary" type="button" data-bs-toggle="offcanvas" 
            data-bs-target="#offcanvasRight" aria-controls="offcanvasRight">
            Agregar Agente
        </button>
    </div>
    <!-- Inicio de formulario off canvas -->
    <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasRight" aria-labelledby="offcanvasRightLabel">
        <div class="offcanvas-header">
            <h5 class="offcanvas-title" id="offcanvasRightLabel">Nuevo Agente</h5>
            <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>
        <div class="offcanvas-body">
            <form>
                <div class="mb-3">
                    <label class="form-label">CUIT</label>
                    <input type="text" class="form-control" id="cuit_agente" placeholder="00-00000000-0">
                </div>
                <div class="mb-3">
                    <label class="form-label">Nombre Completo</label>
                    <input type="text" class="form-control" id="nombre_completo_agente" placeholder="Ingresar nombre completo">
                </div>
                <div class="mb-3">
                    <label class="form-label">Estructura</label>
                    <input type="text" class="form-control" id="estructura_agente" placeholder="00-00-00-00">
                </div>
                <div class="mb-3">
                    <label class="form-label">Partida</label>
                    <input type="number" class="form-control" id="partida_agente" placeholder="000">
                </div>
                <button type="submit" class="btn btn-success">Agregar</button>
                <button type="cancel" class="btn btn-danger">Cancelar</button>
            </form>
        </div>
    </div>
    <!-- Fin de formulario off canvas -->
    <!-- Inicio de tabla -->
    <table class="table table-striped table-bordered table-hover" 
    id= "table_agentes">
        <caption>Listado de Agentes</caption>
        <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">CUIT</th>
                <th scope="col">Nombre Completo</th>
                <th scope="col">Estructura</th>
                <th scope="col">Partida</th>
                <th scope="col">Opciones</th>
            </tr>
        </thead>
        <tbody id="tbody_agentes">
        </tbody>
    </table>
    <!-- Fin de tabla -->
</div>
    <!-- Custom JS -->
    <script src="assets/js/main.js"></script>