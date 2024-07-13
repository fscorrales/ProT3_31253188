    <div class="container mt-2 mb-2 d-flex justify-content-center">
        <div class="card" style="width: 50%;">
            <div class="card-header text-center">
                <h2>Registrar Usuario</h2>
            </div>
            <!-- Inicio de formulario de registro -->
            <div class="card-body" media="(max-width: 768px)">   
                <form>
                    <div class="mb-3">
                        <label for="exampleFormInputInput1" class="form-label">Nombre</label>
                        <input type="text" class="form-control" placeholder="Nombre completo">
                    </div>
                    <div class="mb-3">
                        <label for="exampleFormInputInput1" class="form-label">Apellido</label>
                        <input type="text" class="form-control" placeholder="Apellido">
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Correo</label>
                        <input type="email" class="form-control" 
                        aria-describedby="emailHelp" placeholder="correo@algo.com">
                    </div>
                    <div class="mb-3">
                        <label for="exampleFormInputInput1" class="form-label">Usuario</label>
                        <input type="text" class="form-control" placeholder="Usuario">
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label">Password</label>
                        <input type="password" class="form-control" 
                        placeholder="Contraseña (mínimo 5 caracteres)">
                    </div>
                    <button type="submit" class="btn btn-success">Guardar</button>
                    <button type="reset" class="btn btn-danger">Cancelar</button>
                </form>
            </div>
        </div>
    </div>