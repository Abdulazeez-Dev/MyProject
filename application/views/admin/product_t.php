<?php $this->load->view('include/side_bar'); ?>
    <div class="main-panel">
<?php $this->load->view('include/header.php'); ?>
      <div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-12">
              <div class="card">
                <div class="card-header card-header-icon card-header-rose">
                  <div class="card-icon">
                    <i class="material-icons">widgets</i>
                  </div>
                  <h4 class="card-title"><?php if(!empty($edit_fetch_data)){ echo"Edit"; }else{ echo"Add";} ?> Product 
                    <small class="Design"></small>
                  </h4>
                  <p class="invalid_msg text-center text-white font-weight-bold bg-info"><?php echo $this->session->tempdata('success'); $this->session->unset_tempdata('success') ?></p>
                </div>
                <div class="card-body">
                  <?php if(!empty($edit_fetch_data)){ ?>
                  <form method="post" action="<?php echo base_url()?>product_t_update" id="LoginValidation" enctype="multipart/form-data"> 
                  <?php }else{ ?>
                  <form method="post" action="<?php echo base_url()?>product_t_add" id="LoginValidation" enctype="multipart/form-data"> 
                  <?php } ?>
                    <div class="row">
                      <div class="col-md-4">
                        <div class="form-group">
                          <label for="cat_id" class="bmd-label-floating pull-right">Category</label>
                           <select class="form-control" required="true" name="cat_id" id="cat_id" onchange="get_subcategory()">
                              <option value=""></option>
                          <?php foreach ($cat_data as $key => $value) { ?>
                              <option <?php if(!empty($edit_fetch_data) && $edit_fetch_data[0]->cat_id ==$value->cat_id){ echo"selected";} ?> value="<?php echo $value->cat_id;?>"><?php echo $value->category_name;?></option>
                         <?php } ?>
                         </select>
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group">
                          <label for="sub_cat_id" class="bmd-label-floating pull-right">Sub Category</label>
                           <select class="form-control" required="true" name="sub_cat_id" id="sub_cat_id">
                              <option value=""></option>
                         <?php foreach ($sub_cat_data as $key => $value) { ?>
                              <option <?php if(!empty($edit_fetch_data) && $edit_fetch_data[0]->sub_cat_id ==$value->sub_cat_id){ echo"selected";} ?> value="<?php echo $value->sub_cat_id;?>"><?php echo $value->sub_cat_name;?></option>
                         <?php } ?> 
                         </select>
                        </div>
                      </div>
                      <div class="col-md-4">
                        <center> <div class="form-group">
                          <label for="style_ids" class="bmd-label-floating badge badge-rose text-white get_sd_details"> Pickup the Design And Style*</label>
                        </div></center>
                        <input type="hidden" name="design_ids_all" id="design_ids_all" <?php if(!empty($edit_fetch_data) && $edit_fetch_data[0]->design_id){ echo'value="'.$edit_fetch_data[0]->design_id.'"'; } ?>>
                      </div>
                      </div>
                      <br>
                      
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="pro_name" class="bmd-label-floating"> Product Name*</label>
                          <input type="text" class="form-control name_type" required="true" name="pro_name" <?php if(!empty($edit_fetch_data) && $edit_fetch_data[0]->pro_name){ echo'value="'.$edit_fetch_data[0]->pro_name.'"'; } ?> id="pro_name">
                          <input type="hidden" class="form-control" required="true" name="pro_id" <?php if(!empty($edit_fetch_data) && $edit_fetch_data[0]->pro_id){ echo"value='".$edit_fetch_data[0]->pro_id."'"; } ?> id="pro_id">
                          
                        </div>
                      </div>
                      <div class="col-md-3">
                        <div class="form-group">
                          <label for="pro_rate" class="bmd-label-floating"> Product Rate*</label>
                          <input type="text" class="form-control name_type" required="true" name="pro_rate" <?php if(!empty($edit_fetch_data)){ echo'value="'.$edit_fetch_data[0]->pro_rate.'"'; } ?> id="pro_rate">
                        </div>
                      </div>
											<!-- adding price -->
											<div class="col-md-3">
                        <div class="form-group">
                          <label for="pro_price" class="bmd-label-floating"> Price*</label>
                          <input type="text" class="form-control name_type" required="true" name="pro_price" <?php if(!empty($edit_fetch_data)){ echo'value="'.$edit_fetch_data[0]->pro_price.'"'; } ?> id="pro_price">
                        </div>
                      </div>
											<!-- // ending adding product -->
                      <div class="col-md-6 col-sm-4">
                          <h4 class="title">Product Image</h4>
                          <div class="fileinput fileinput-new text-center" data-provides="fileinput">
                              <div class="fileinput-new thumbnail">
                                <img <?php if(!empty($edit_fetch_data) && !empty($edit_fetch_data[0]->pro_img)){ ?> src="<?php echo base_url()?>uploads/<?php echo $edit_fetch_data[0]->pro_img; ?>"<?php }else{ ?> src="<?php echo base_url()?>assets/admin_assets/img/image_placeholder.jpg" <?php } ?>>
                              </div>
                              <div class="fileinput-preview fileinput-exists thumbnail"></div>
                              <div>
                                <span class="btn btn-rose btn-round btn-file">
                                  <span class="fileinput-new">Design Image</span>
                                  <span class="fileinput-exists">Change</span>
                                  <input type="file" name="pro_img" <?php if(!empty($edit_fetch_data) && !empty($edit_fetch_data[0]->pro_img)){ }else{ ?>required <?php } ?>>
                                </span>
                                <a href="#pablo" class="btn btn-danger btn-round fileinput-exists" data-dismiss="fileinput"><i class="fa fa-times"></i> Remove</a>
                              </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group">
                          <label for="pro_details" class="bmd-label-floating pull-right">Pro Descrition*</label>
                          <textarea name="pro_details" id="pro_details" class="form-control textarea_own" required="true" placeholder="&#10;Presenting, Surf excel matic front load the machine specialist laundry detergent from the Surf excel matic family that gives you 100 percentage Tough Stain Removal in machines. Surf excel matic front load is specially designed to"><?php if(!empty($edit_fetch_data) && !empty($edit_fetch_data[0]->pro_details)){ echo $edit_fetch_data[0]->pro_details; } ?></textarea>
                        </div>
                        </div>
                       <div class="col-md-12">
                        <center><button type="submit" class="btn btn-rose"><?php if(!empty($edit_fetch_data)){ echo"Update"; }else{ echo"Add";} ?></button></center>
                       </div>
                    </div>
                    
                    <div class="clearfix"></div>
                  </form>
                </div>
              </div>
            </div>
            
          </div>
        </div>
      </div>
<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <h4>Select Design</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          
        </div>
        <div class="modal-body">
            <div class="modal_join" id="modal_join">
              
             
            </div>
        <div class="modal-footer">
          <!-- <button type="button" class="btn btn-success" data-dismiss="modal">Close</button> -->
        </div>
      </form>
      </div>
    </div>
  </div>
  </div>
     <?php $this->load->view('include/footer'); ?>
  <!--   Core JS Files   -->
  <script src="<?php echo base_url()?>assets/admin_assets/js/core/jquery.min.js"></script>
  <script src="<?php echo base_url()?>assets/admin_assets/js/core/popper.min.js"></script>
  <script src="<?php echo base_url()?>assets/admin_assets/js/core/bootstrap-material-design.min.js"></script>
  <script src="<?php echo base_url()?>assets/admin_assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!-- Plugin for the momentJs  -->
  <script src="<?php echo base_url()?>assets/admin_assets/js/plugins/moment.min.js"></script>
  <!--  Plugin for Sweet Alert -->
  <script src="<?php echo base_url()?>assets/admin_assets/js/plugins/sweetalert2.js"></script>
  <!-- Forms Validations Plugin -->
  <script src="<?php echo base_url()?>assets/admin_assets/js/plugins/jquery.validate.min.js"></script>
  <!-- Plugin for the Wizard, full documentation here: https://github.com/VinceG/twitter-bootstrap-wizard -->
  <script src="<?php echo base_url()?>assets/admin_assets/js/plugins/jquery.bootstrap-wizard.js"></script>
  <!--	Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
  <script src="<?php echo base_url()?>assets/admin_assets/js/plugins/bootstrap-selectpicker.js"></script>
  <!--  Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
  <script src="<?php echo base_url()?>assets/admin_assets/js/plugins/bootstrap-datetimepicker.min.js"></script>
  <!--  DataTables.net Plugin, full documentation here: https://datatables.net/  -->
  <script src="<?php echo base_url()?>assets/admin_assets/js/plugins/jquery.dataTables.min.js"></script>
  <!--	Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
  <script src="<?php echo base_url()?>assets/admin_assets/js/plugins/bootstrap-tagsinput.js"></script>
  <!-- Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
  <script src="<?php echo base_url()?>assets/admin_assets/js/plugins/jasny-bootstrap.min.js"></script>
  <!--  Full Calendar Plugin, full documentation here: https://github.com/fullcalendar/fullcalendar    -->
  <script src="<?php echo base_url()?>assets/admin_assets/js/plugins/fullcalendar.min.js"></script>
  <!-- Vector Map plugin, full documentation here: http://jvectormap.com/documentation/ -->
  <script src="<?php echo base_url()?>assets/admin_assets/js/plugins/jquery-jvectormap.js"></script>
  <!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
  <script src="<?php echo base_url()?>assets/admin_assets/js/plugins/nouislider.min.js"></script>
  <!-- Include a polyfill for ES6 Promises (optional) for IE11, UC Browser and Android browser support SweetAlert -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
  <!-- Library for adding dinamically elements -->
  <script src="<?php echo base_url()?>assets/admin_assets/js/plugins/arrive.min.js"></script>
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB2Yno10-YTnLjjn_Vtk0V8cdcY5lC4plU"></script>
  <!-- Place this tag in your head or just before your close body tag. -->
  <script async defer src="https://buttons.github.io/buttons.js"></script>
  <!-- Chartist JS -->
  <script src="<?php echo base_url()?>assets/admin_assets/js/plugins/chartist.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="<?php echo base_url()?>assets/admin_assets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="<?php echo base_url()?>assets/admin_assets/js/material-dashboard.min.js?v=2.1.2" type="text/javascript"></script>
  <!-- Material Dashboard DEMO methods, don't include it in your project! -->
  <script src="<?php echo base_url()?>assets/admin_assets/demo/demo.js"></script>
  <script src="<?php echo base_url()?>assets/admin_assets/js/plugins/jquery.dataTables.min.js"></script>
  <script>
    $(document).ready(function() {
      $().ready(function() {
        $sidebar = $('.sidebar');

        $sidebar_img_container = $sidebar.find('.sidebar-background');

        $full_page = $('.full-page');

        $sidebar_responsive = $('body > .navbar-collapse');

        window_width = $(window).width();

        fixed_plugin_open = $('.sidebar .sidebar-wrapper .nav li.active a p').html();

        if (window_width > 767 && fixed_plugin_open == 'Dashboard') {
          if ($('.fixed-plugin .dropdown').hasClass('show-dropdown')) {
            $('.fixed-plugin .dropdown').addClass('open');
          }

        }

        $('.fixed-plugin a').click(function(event) {
          // Alex if we click on switch, stop propagation of the event, so the dropdown will not be hide, otherwise we set the  section active
          if ($(this).hasClass('switch-trigger')) {
            if (event.stopPropagation) {
              event.stopPropagation();
            } else if (window.event) {
              window.event.cancelBubble = true;
            }
          }
        });

        $('.fixed-plugin .active-color span').click(function() {
          $full_page_background = $('.full-page-background');

          $(this).siblings().removeClass('active');
          $(this).addClass('active');

          var new_color = $(this).data('color');

          if ($sidebar.length != 0) {
            $sidebar.attr('data-color', new_color);
          }

          if ($full_page.length != 0) {
            $full_page.attr('filter-color', new_color);
          }

          if ($sidebar_responsive.length != 0) {
            $sidebar_responsive.attr('data-color', new_color);
          }
        });

        $('.fixed-plugin .background-color .badge').click(function() {
          $(this).siblings().removeClass('active');
          $(this).addClass('active');

          var new_color = $(this).data('background-color');

          if ($sidebar.length != 0) {
            $sidebar.attr('data-background-color', new_color);
          }
        });

        $('.fixed-plugin .img-holder').click(function() {
          $full_page_background = $('.full-page-background');

          $(this).parent('li').siblings().removeClass('active');
          $(this).parent('li').addClass('active');


          var new_image = $(this).find("img").attr('src');

          if ($sidebar_img_container.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
            $sidebar_img_container.fadeOut('fast', function() {
              $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
              $sidebar_img_container.fadeIn('fast');
            });
          }

          if ($full_page_background.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
            var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

            $full_page_background.fadeOut('fast', function() {
              $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
              $full_page_background.fadeIn('fast');
            });
          }

          if ($('.switch-sidebar-image input:checked').length == 0) {
            var new_image = $('.fixed-plugin li.active .img-holder').find("img").attr('src');
            var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

            $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
            $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
          }

          if ($sidebar_responsive.length != 0) {
            $sidebar_responsive.css('background-image', 'url("' + new_image + '")');
          }
        });

        $('.switch-sidebar-image input').change(function() {
          $full_page_background = $('.full-page-background');

          $input = $(this);

          if ($input.is(':checked')) {
            if ($sidebar_img_container.length != 0) {
              $sidebar_img_container.fadeIn('fast');
              $sidebar.attr('data-image', '#');
            }

            if ($full_page_background.length != 0) {
              $full_page_background.fadeIn('fast');
              $full_page.attr('data-image', '#');
            }

            background_image = true;
          } else {
            if ($sidebar_img_container.length != 0) {
              $sidebar.removeAttr('data-image');
              $sidebar_img_container.fadeOut('fast');
            }

            if ($full_page_background.length != 0) {
              $full_page.removeAttr('data-image', '#');
              $full_page_background.fadeOut('fast');
            }

            background_image = false;
          }
        });

        $('.switch-sidebar-mini input').change(function() {
          $body = $('body');

          $input = $(this);

          if (md.misc.sidebar_mini_active == true) {
            $('body').removeClass('sidebar-mini');
            md.misc.sidebar_mini_active = false;

            $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar();

          } else {

            $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar('destroy');

            setTimeout(function() {
              $('body').addClass('sidebar-mini');

              md.misc.sidebar_mini_active = true;
            }, 300);
          }

          // we simulate the window Resize so the charts will get updated in realtime.
          var simulateWindowResize = setInterval(function() {
            window.dispatchEvent(new Event('resize'));
          }, 180);

          // we stop the simulation of Window Resize after the animations are completed
          setTimeout(function() {
            clearInterval(simulateWindowResize);
          }, 1000);

        });
      });
    });
  </script>
  <!-- Sharrre libray -->
  <script src="<?php echo base_url()?>assets/admin_assets/demo/jquery.sharrre.js"></script>
  <script>
    $(document).ready(function() {


      $('#facebook').sharrre({
        share: {
          facebook: true
        },
        enableHover: false,
        enableTracking: false,
        enableCounter: false,
        click: function(api, options) {
          api.simulateClick();
          api.openPopup('facebook');
        },
        template: '<i class="fab fa-facebook-f"></i> Facebook',
        url: 'https://demos.creative-tim.com/material-dashboard-pro/examples/dashboard.html'
      });

      $('#google').sharrre({
        share: {
          googlePlus: true
        },
        enableCounter: false,
        enableHover: false,
        enableTracking: true,
        click: function(api, options) {
          api.simulateClick();
          api.openPopup('googlePlus');
        },
        template: '<i class="fab fa-google-plus"></i> Google',
        url: 'https://demos.creative-tim.com/material-dashboard-pro/examples/dashboard.html'
      });

      $('#twitter').sharrre({
        share: {
          twitter: true
        },
        enableHover: false,
        enableTracking: false,
        enableCounter: false,
        buttons: {
          twitter: {
            via: 'CreativeTim'
          }
        },
        click: function(api, options) {
          api.simulateClick();
          api.openPopup('twitter');
        },
        template: '<i class="fab fa-twitter"></i> Twitter',
        url: 'https://demos.creative-tim.com/material-dashboard-pro/examples/dashboard.html'
      });


      // Facebook Pixel Code Don't Delete
      ! function(f, b, e, v, n, t, s) {
        if (f.fbq) return;
        n = f.fbq = function() {
          n.callMethod ?
            n.callMethod.apply(n, arguments) : n.queue.push(arguments)
        };
        if (!f._fbq) f._fbq = n;
        n.push = n;
        n.loaded = !0;
        n.version = '2.0';
        n.queue = [];
        t = b.createElement(e);
        t.async = !0;
        t.src = v;
        s = b.getElementsByTagName(e)[0];
        s.parentNode.insertBefore(t, s)
      }(window,
        document, 'script', '//connect.facebook.net/en_US/fbevents.js');

      try {
        fbq('init', '111649226022273');
        fbq('track', "PageView");

      } catch (err) {
        console.log('Facebook Track Error:', err);
      }

    });
  </script>
  <script>
    // Facebook Pixel Code Don't Delete
    ! function(f, b, e, v, n, t, s) {
      if (f.fbq) return;
      n = f.fbq = function() {
        n.callMethod ?
          n.callMethod.apply(n, arguments) : n.queue.push(arguments)
      };
      if (!f._fbq) f._fbq = n;
      n.push = n;
      n.loaded = !0;
      n.version = '2.0';
      n.queue = [];
      t = b.createElement(e);
      t.async = !0;
      t.src = v;
      s = b.getElementsByTagName(e)[0];
      s.parentNode.insertBefore(t, s)
    }(window,
      document, 'script', '//connect.facebook.net/en_US/fbevents.js');

    try {
      fbq('init', '111649226022273');
      fbq('track', "PageView");

    } catch (err) {
      console.log('Facebook Track Error:', err);
    }
  </script>
  <noscript>
    <img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=111649226022273&ev=PageView&noscript=1" />
  </noscript>
  <script>
    $(document).ready(function() {
      md.checkFullPageBackgroundImage();
    });
  </script>
</body>

</html>
<script>
    function setFormValidation(id) {
      $(id).validate({
        highlight: function(element) {
          $(element).closest('.form-group').removeClass('has-success').addClass('has-danger');
          $(element).closest('.form-check').removeClass('has-success').addClass('has-danger');
        },
        success: function(element) {
          $(element).closest('.form-group').removeClass('has-danger').addClass('has-success');
          $(element).closest('.form-check').removeClass('has-danger').addClass('has-success');
        },
        errorPlacement: function(error, element) {
          $(element).closest('.form-group').append(error);
        },
      });
    }

    $(document).ready(function() {
      setFormValidation('#LoginValidation');
    });
  </script>
  <script>
    $(document).ready(function() {
      $('#datatables').DataTable({
        "pagingType": "full_numbers",
        "lengthMenu": [
          [10, 25, 50, -1],
          [10, 25, 50, "All"]
        ],
        responsive: true,
        language: {
          search: "_INPUT_",
          searchPlaceholder: "Search Design",
        }
      });

      var table = $('#datatable').DataTable();

      // Edit record
      table.on('click', '.edit', function() {
        $tr = $(this).closest('tr');
        var data = table.row($tr).data();
        alert('You press on Row: ' + data[0] + ' ' + data[1] + ' ' + data[2] + '\'s row.');
      });

      // Delete a record
      table.on('click', '.remove', function(e) {
        $tr = $(this).closest('tr');
        table.row($tr).remove().draw();
        e.preventDefault();
      });

      //Like record
      table.on('click', '.like', function() {
        alert('You clicked on Like button');
      });
    });
  </script>
  <style type="text/css">
    .card-avatar1{width: 100px;height: 100px;}
    .textarea_own{height: 250px !important;}
    .modal-dialog {
    max-width: 88% !important;
    margin: 20px !important;
}
.img_m_1{box-shadow: 0 1px 4px 0 rgb(0 0 0 / 14%);border-radius: 5px;border: 1px solid #fff;margin-right: 15px;}
.img_m_1 img {
    width: 220px;
    height: 220px;
    object-fit: contain;
    padding-top: 10px;
}
  </style>
  <script type="text/javascript">
      function get_subcategory(){
        var cat_id = $("#cat_id").val();
        document.getElementById("sub_cat_id").innerHTML = "";
        var $url="<?php echo base_url();?>get_subcategory";
        // alert($url);
        $.ajax({ 
          url: $url,
          type:"POST",
          data: {cat_id: cat_id},
          success: function ($data) { 
            if($data !='valid'){
              document.getElementById("sub_cat_id").innerHTML = $data;
            }      
          },
          error: function(){
          }
        });
      }
</script>
<script type="text/javascript">
  $(document).ready(function(){
    // $('#myModal').modal('show'); 
    $('.check_design').click(function(){
      var otp = [];
      var get_design_ids = $(".design_ids").each(function(){
        if ($(this).prop('checked')==true){ 
            otp.push($(this).val());
        }
      });
      console.log(otp.join(","));
      if ($(this).closest('div').find('input[type="checkbox"]').prop('checked')==true){ 
       $(this).closest('div').css('border','1px solid #e91e63');
      }
      else
      {
        $(this).closest('div').css('border','1px solid #fff');
      }
    });
    $('.get_sd_details').click(function(){
      var cat_id = $("#cat_id").val();
      var sub_cat_id = $("#sub_cat_id").val();
      var design_ids_all = $("#design_ids_all").val();
      
        var $url="<?php echo base_url();?>get_designs";
        // alert($url);
        $.ajax({ 
          url: $url,
          type:"POST",
          data: {cat_id: cat_id,sub_cat_id: sub_cat_id,design_ids_all: design_ids_all},
          success: function ($data) { 
            if($data !='valid'){
              document.getElementById("modal_join").innerHTML = $data;
              //// end afteraction
              $('.check_design').click(function(){
                var otp = [];
                var get_design_ids = $(".design_ids").each(function(){
                  if ($(this).prop('checked')==true){ 
                      otp.push($(this).val());
                  }
                });
                $('#design_ids_all').val(otp.join(","));
                if ($(this).closest('div').find('input[type="checkbox"]').prop('checked')==true){ 
                 $(this).closest('div').css('border','1px solid #e91e63');
                }
                else
                {
                  $(this).closest('div').css('border','1px solid #fff');
                }
              });
              // end afteraction
            }      
          },
          error: function(){
          }
        });
          $('#myModal').modal('show'); 
      
    });
  });
</script>
<!-- <script type="text/javascript">
      function get_styles(){
        var cat_id = $("#cat_id").val();
        var sub_cat_id = $("#sub_cat_id").val();
        document.getElementById("style_id").innerHTML = "";
        var $url="<?php //echo base_url();?>get_styles";
        // alert($url);
        $.ajax({ 
          url: $url,
          type:"POST",
          data: {cat_id: cat_id,sub_cat_id: sub_cat_id},
          success: function ($data) { 
            if($data !='valid'){
              document.getElementById("style_id").innerHTML = $data;
            }      
          },
          error: function(){
          }
        });
      }
</script> -->