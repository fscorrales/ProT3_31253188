<form action="" method="post" enctype="multipart/form-data">
    <input type="text" name="title" require>
    <input type="file" name="banner" require>
    <select name="category" id="">
        <?php
            foreach ($categories as $c) {
                echo "<option value='".$c['id'].
                "'>".$c['name']."</option>";
            }
        ?>
    </select>
    <input type="submit" value="send">
</form>

<form action="<?= base_url() ?>testcontroller/add_newsletter" 
method="post">

</form>

<?php
    $db = \Config\Database::connect();
    $query = $db->query("SELECT * FROM categories");
    $results = $query->getResult();

    foreach ($results as $r) {
        echo '<li><a href="'.base_url().'category/'.$r->id.'">'.$r->name.'</a></li>';
    }
?>

<script type="text/javascript">
    // #id_div_btn es el id del boton
    $("#id_div_btn").click(function(){
        console.log("Se ha enviado");
        // #newsletter-input es el id del input del email
        var inputemail = $("#newsletter-input").val();
        $.post("<?= base_url() ?>testcontroller/add_newsletter", {
            email: inputemail
        }).done(function(data){
            // data es lo que recibimos del controlador
            console.log('Post enviado');
            console.log(data);
            // para enviar un mensaje a un label
            // con la clase .suscribe-message
            $(".suscribe-message").html(data);
        });
    });
</script>