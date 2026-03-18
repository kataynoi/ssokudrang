<html>
<body>

<div class="row">
    <div class="panel panel-info ">
        <div class="panel-heading w3-theme">
            <i class="fa fa-user fa-2x "></i> ข้อมูลผู้ขอรับเกียรติบัตร
</span>

        </div>
        <div class="panel-body">

            <form>
                <div class="form-group">
                    <label for="exampleInputEmail1">Controller Name</label>
                    <input type="text" class="form-control" id="ctrl" placeholder="Enter Controllers Name" value="carc">
                    <small id="emailHelp" class="form-text text-muted">ชื่อ Controllers ตั้งเป็นตัวเล็กทั้งหมด</small>
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Tables Name</label>
                    <input type="text" class="form-control" id="table" placeholder="ชื่อตาราง" value=""> <button class="btn btn-success" id="btn_get_table"> Get Table</button>
                </div>
                <div >
                    <table class="table table-responsive" id="tbl_list">
                        <thead>
                            <th>#</th>
                            <th>Filed</th>
                            <th>Type</th>
                            <th>Comment</th>
                            <th>Extra</th>
                        </thead>
                        <tbody>

                        </tbody>
                    </table>
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Select Filed</label>
                    <input type="text" class="form-control" id="select" placeholder="ชื่อ ฟิลล์" value="">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">TH Column</label>
                    <input type="text" class="form-control" id="column" placeholder="หัว Column ตาราง" value="">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Filed Search </label>
                    <input type="text" class="form-control" id="search_txt" placeholder="Filed ที่ต้องการค้นหา" value="">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">หัวตาราง </label>
                    <input type="text" class="form-control" id="view_name" placeholder="หัว ตาราง" value="">
                </div>
                <div class="alert alert-success" role="alert" id="alert"></div>
                <button  class="btn btn-primary" id="btn_create_crud">Submit</button>
            </form>




        </div>

    </div>

</div>

<script src="<?php echo base_url() ?>assets/apps/js/create_crud.js" charset="utf-8"></script>