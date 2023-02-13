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
            <form action="{{ url('/admin/employees') }}" method="post" class="form-horizontal add-post-form" accept-charset="UTF-8" enctype="multipart/form-data">
                <div class="box-body">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="full_name" class="col-sm-2 asterisk control-label">Full Name</label>
                            <div class="col-sm-8">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-pencil fa-fw"></i></span>
                                    <input type="text" name="full_name"  class="form-control" placeholder="Enter your full name"> 
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
                                    <input type="text" name="name"  class="form-control"  placeholder="Enter your first name"> 
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
                                    <input type="email" name="email"  class="form-control"  placeholder="Enter your email"> 
                                </div>
                            </div>
                            @error('email')
                                <span class="text-danger pb-1">{{ $message }}</span>
                            @enderror
                        </div>
                         <div class="form-group">
                            <label for="mobile" class="col-sm-2 asterisk control-label">Mobile</label>
                            <div class="col-sm-8">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-pencil fa-fw"></i></span>
                                    <input type="text" name="mobile"  class="form-control"  placeholder="Enter your mobile number"> 
                                </div>
                            </div>
                            @error('mobile')
                                <span class="text-danger pb-1">{{ $message }}</span>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label for="password" class="col-sm-2 asterisk control-label">Password</label>
                            <div class="col-sm-8">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-pencil fa-fw"></i></span>
                                    <input type="password" name="password"  class="form-control"  placeholder="Enter your password"> 
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
                                    <input type="password" name="c_password"  class="form-control"  placeholder="Enter your confirm password"> 
                                </div>
                            </div>
                            @error('c_password')
                                <span class="text-danger pb-1">{{ $message }}</span>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label for="address" class="col-sm-2 asterisk control-label">Address</label>
                            <div class="col-sm-8">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-pencil fa-fw"></i></span>
                                    <input type="text" name="address"  class="form-control"  placeholder="Enter your address"> 
                                </div>
                            </div>
                            @error('address')
                                <span class="text-danger pb-1">{{ $message }}</span>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label for="avatar" class="col-sm-2 asterisk control-label">Image</label>
                            <div class="col-sm-8">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-pencil fa-fw"></i></span>
                                    <input type="file" name="avatar"  class="form-control"> 
                                </div>
                            </div>
                            @error('avatar')
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
        $("input[name=status]").bootstrapSwitch({size:'small', onText: 'ON', offText: 'OFF'});
	});
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
                toastr.success(response.message);
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
