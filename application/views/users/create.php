<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
      Управление
        <small>Пользователи</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Главная</a></li>
        <li class="active">Пользователи</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <div class="row">
        <div class="col-md-12 col-xs-12">
          
          <?php if($this->session->flashdata('success')): ?>
            <div class="alert alert-success alert-dismissible" role="alert">
              <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
              <?php echo $this->session->flashdata('success'); ?>
            </div>
          <?php elseif($this->session->flashdata('error')): ?>
            <div class="alert alert-error alert-dismissible" role="alert">
              <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
              <?php echo $this->session->flashdata('error'); ?>
            </div>
          <?php endif; ?>

          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Добавить пользователя</h3>
            </div>
            <form role="form" action="<?php base_url('users/create') ?>" method="post">
              <div class="box-body">

                <?php echo validation_errors(); ?>

                <div class="form-group">
                  <label for="groups">Группы</label>
                  <select class="form-control" id="groups" name="groups">
                    <option value="">Выберите группы</option>
                    <?php foreach ($group_data as $k => $v): ?>
                      <option value="<?php echo $v['id'] ?>"><?php echo $v['group_name'] ?></option>
                    <?php endforeach ?>
                  </select>
                </div>

                <div class="form-group">
                  <label for="username">Имя пользователя</label>
                  <input type="text" class="form-control" id="username" name="username" placeholder="Имя пользователя" autocomplete="off">
                </div>

                <div class="form-group">
                  <label for="email">Электронная почта</label>
                  <input type="email" class="form-control" id="email" name="email" placeholder="Электронная почта" autocomplete="off">
                </div>

                <div class="form-group">
                  <label for="password">Пароль</label>
                  <input type="text" class="form-control" id="password" name="password" placeholder="Пароль" autocomplete="off">
                </div>

                <div class="form-group">
                  <label for="cpassword">Подтверждение пароля</label>
                  <input type="password" class="form-control" id="cpassword" name="cpassword" placeholder="Подтверждение пароля" autocomplete="off">
                </div>

                <div class="form-group">
                  <label for="fname">Имя</label>
                  <input type="text" class="form-control" id="fname" name="fname" placeholder="Имя" autocomplete="off">
                </div>

                <div class="form-group">
                  <label for="lname">Фамилия</label>
                  <input type="text" class="form-control" id="lname" name="lname" placeholder="Фамилия" autocomplete="off">
                </div>

                <div class="form-group">
                  <label for="phone">Телефон</label>
                  <input type="text" class="form-control" id="phone" name="phone" placeholder="Телефон" autocomplete="off">
                </div>

                <div class="form-group">
                  <label for="gender">Пол</label>
                  <div class="radio">
                    <label>
                      <input type="radio" name="gender" id="male" value="1">
                      Мужской
                    </label>
                    <label>
                      <input type="radio" name="gender" id="female" value="2">
                      Женский
                    </label>
                  </div>
                </div>

              </div>
              <!-- /.box-body -->

              <div class="box-footer">
                <button type="submit" class="btn btn-primary">Сохранить изменения</button>
                <a href="<?php echo base_url('users/') ?>" class="btn btn-warning">Назад</a>
              </div>
            </form>
          </div>
          <!-- /.box -->
        </div>
        <!-- col-md-12 -->
      </div>
      <!-- /.row -->
      

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

<script type="text/javascript">
  $(document).ready(function() {
    $("#groups").select2();

    $("#mainUserNav").addClass('active');
    $("#createUserNav").addClass('active');
  
  });
</script>
