// More info in: https://www.youtube.com/live/o4ByxKlcZHY?si=t-MNWnDavWc1iU8M

let dataTable;
let dataTableIsInitialized = false;

const dataTableOptions = {
    responsive: true,
    columnDefs: [
        // { responsivePriority: 1, targets: 1 },
        // { responsivePriority: 2, targets: -1 },
        { className: "centered_cols", targets: [0, 1, 2, 3, 4, 5] },
        { orderable: false, targets: [0, 5] },
        // { searchable: false, targets: [1] }
        //{ width: "50%", targets: [0] }
    ],
    pagelength: 10,
    destroy: true,
    language: {
        lengthMenu: "Mostrar _MENU_ registros por página",
        zeroRecords: "Ningún usuario encontrado",
        info: "Mostrando de _START_ a _END_ de un total de _TOTAL_ registros",
        infoEmpty: "Ningún usuario encontrado",
        infoFiltered: "(filtrados desde _MAX_ registros totales)",
        search: "Buscar:",
        loadingRecords: "Cargando...",
        paginate: {
            first: "Primero",
            last: "Último",
            next: "Siguiente",
            previous: "Anterior"
        }
    },
    // dom: 'Bfrtip',
    // buttons: [
    //     'copy', 'csv', 'excel', 'pdf', 'print'
    // ]
};

const initDataTable=async()=>{  

    if(dataTableIsInitialized){
        dataTable.destroy();
    }
    
    await listAgentes();

    // Con la incoporación de más registros habrá que utilizar AJAX
    dataTable = $('#table_agentes').DataTable(dataTableOptions);

    dataTableIsInitialized = true;
}   

const listAgentes=async()=>{
    try {
        // Registros generados en https://www.mockaroo.com/
        const response = await fetch('assets/data/agentes.json');
        const agentes = await response.json();
        
        let content = '';
        agentes.forEach((agente, index) => {
            content += `
            <tr>
                <td>${index+1}</td>
                <td>${agente.cuit}</td>
                <td>${agente.nombre_completo}</td>
                <td>${agente.estructura}</td>
                <td>${agente.partida}</td>
                <td>
                    <button class="btn btn-primary">
                    <img src="assets/img/edit.svg"></button>
                    <button class="btn btn-danger">
                    <img src="assets/img/delete.svg"></button>
                </td>
            </tr>`;
        });
        tbody_agentes.innerHTML = content;
    } catch (ex) {
        alert(ex)
    }
}

window.addEventListener('load', async() => {
    await initDataTable();
})