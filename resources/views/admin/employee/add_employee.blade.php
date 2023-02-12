<div class="row">
    <div class="col-md-12">
        <div class="box">
            <div class="box-header with-border">
                <h3 class="box-title">Create</h3>
                <div class="box-tools">
                    <div class="btn-group pull-right" style="margin-right: 5px">
                        <a href="{{ url('/admin/employees') }}" class="btn btn-sm btn-default" title="List">
                            <i class="fa fa-list"></i><span class="hidden-xs">&nbsp;List</span>
                        </a>
                    </div>
                </div>
            </div>
            <!-- form start -->
            <form action="{{ url('/admin/employees/store') }}" method="post" class="form-horizontal add-post-form" accept-charset="UTF-8" enctype="multipart/form-data">
                <div class="box-body">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="full_name" class="col-sm-2 asterisk control-label">Full Name</label>
                            <div class="col-sm-8">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-pencil fa-fw"></i></span>
                                    <input type="text" name="full_name"  class="form-control" placeholder="Enter your full name"  required> 
                                </div>
                            </div>
                            @error('full_name')
                                <span class="text-danger pb-1">{{ $message }}</span>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label for="name" class="col-sm-2 asterisk control-label">First Name</label>
                            <div class="col-sm-8">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-pencil fa-fw"></i></span>
                                    <input type="text" name="name"  class="form-control"  placeholder="Enter your first name" required> 
                                </div>
                            </div>
                            @error('name')
                                <span class="text-danger pb-1">{{ $message }}</span>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label for="email" class="col-sm-2 asterisk control-label">Email</label>
                            <div class="col-sm-8">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-pencil fa-fw"></i></span>
                                    <input type="email" name="email"  class="form-control"  placeholder="Enter your email" required> 
                                </div>
                            </div>
                            @error('email')
                                <span class="text-danger pb-1">{{ $message }}</span>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label for="password" class="col-sm-2 asterisk control-label">Password</label>
                            <div class="col-sm-8">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-pencil fa-fw"></i></span>
                                    <input type="password" name="password"  class="form-control"  placeholder="Enter your password" required> 
                                </div>
                            </div>
                            @error('password')
                                <span class="text-danger pb-1">{{ $message }}</span>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label for="c_password" class="col-sm-2 asterisk control-label">Confirm Password</label>
                            <div class="col-sm-8">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-pencil fa-fw"></i></span>
                                    <input type="password" name="c_password"  class="form-control"  placeholder="Enter your confirm password" required> 
                                </div>
                            </div>
                            @error('c_password')
                                <span class="text-danger pb-1">{{ $message }}</span>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label for="mobile" class="col-sm-2 control-label">Mobile</label>
                            <div class="col-sm-8">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-pencil fa-fw"></i></span>
                                    <input type="text" name="mobile"  class="form-control"  placeholder="Enter your mobile number" required> 
                                </div>
                            </div>
                            @error('mobile')
                                <span class="text-danger pb-1">{{ $message }}</span>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label for="address" class="col-sm-2 asterisk control-label">Address</label>
                            <div class="col-sm-8">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-pencil fa-fw"></i></span>
                                    <input type="text" name="address"  class="form-control"  placeholder="Enter your address" required> 
                                </div>
                            </div>
                            @error('address')
                                <span class="text-danger pb-1">{{ $message }}</span>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label for="photo" class="col-sm-2  control-label">Photo</label>
                            <div class="col-sm-8">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-pencil fa-fw"></i></span>
                                    <input type="file" name="photo"  class="form-control" required> 
                                </div>
                            </div>
                            @error('photo')
                                <span class="text-danger pb-1">{{ $message }}</span>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label for="title" class="col-sm-2 asterisk control-label">Status</label>
                            <div class="col-sm-8">
                                <input type="checkbox" name="status"  value="1"  checked>
                                @error('status')
                                    <span class="text-danger pb-1">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.box-body -->
                <div class="box-footer">
                    <div class="col-md-2">
                        <input type="hidden" name="_token" value="{{ csrf_token() }}" />
                    </div>
                    <div class="col-md-8">
                        <div class="btn-group pull-right">
                            <button type="submit" class="btn btn-primary">Save</button>
                        </div>
                        <div class="btn-group pull-left">
                            {{-- <button type="submit" class="btn btn-success" onclick="form_action(2)">Save & Clear</button> --}}
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<script>
	$(function(){
        $('.subject-select2').select2({
			placeholder: 'Subject',
			allowClear: true
		});
        $('.sub-subject-select2').select2({
			placeholder: 'Sub Subject',
			allowClear: true
		});
        $('.date_picker').datetimepicker({format : "YYYY-MM"});
        $("input[name=status]").bootstrapSwitch({size:'small', onText: 'ON', offText: 'OFF'});
	});
    // Changing the subject will execute the function
    function subject_change(subject_id){
        // subject select2 empty
        $(".sub-subject-select2").html("");
        // Ajax call for subject
        if(subject_id){
            $.ajax({
                type: "GET",
                url: "{{ url('/api/sub-subject-by-subject') }}",
                data: { 'subject_id': subject_id},
                dataType: 'json',
                success: function (result) {
                    $('.sub-subject-select2').append(`<option value="">Select sub subject</option>`);
                    $.each(result, function(index, subject) {
                        $('.sub-subject-select2').append(`<option value="${index}">${subject}</option>`);
                    });
                }
            });
        }
        return true;
	}
    // Add post form 
    $('.add-post-form').on('submit',function(e){
        e.preventDefault();    
        let form = $(this);
		let url = form.attr('action');
		let type = form.attr('method');
        button_disable(true);    

        $.ajax({  
            type: type,
            url: url,
            data: new FormData(this),
            contentType: false,
            processData: false,
            cache: false,
            dataType: 'json',
            success: function (response) {
                button_disable(false);
                if(response.route != null){
                    window.location = response.route;
                    toastr.success(response.message);
                }else{
                    toastr.error(response.message);
                }
            },
            error: function(response){   
                button_disable(false);
                let errors = response.responseJSON.errors;
                $.each( errors, function( key, value ) {
                    toastr.error(value);
                });
            }
        });
    });
    function button_disable(status){
        $('.btn-primary').attr('disabled', status);
    }
</script>
