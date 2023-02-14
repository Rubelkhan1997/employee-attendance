<div class="row">
    <div class="col-md-12">
        <div class="box">
            <div class="box-header with-border">
                <h3 class="box-title">Create</h3>
                <div class="box-tools">
                    <div class="btn-group pull-right" style="margin-right: 5px">
                        <a href="{{ url('/admin/attendances') }}" class="btn btn-sm btn-default" title="List">
                            <i class="fa fa-list"></i><span class="hidden-xs">&nbsp;List</span>
                        </a>
                    </div>
                </div>
            </div>
            <!-- form start -->
            <form action="{{ url('/admin/attendances') }}" method="post" class="form-horizontal add-attendance-form" accept-charset="UTF-8" enctype="multipart/form-data">
                <div class="box-body">
                    <div class="col-md-12">
                        {{-- <div class="form-group">
                            <label for="full_name" class="col-sm-2 asterisk control-label">Date</label>
                            <div class="col-sm-8">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-pencil fa-fw"></i></span>
                                    <input type="text" name="full_name"  class="form-control" placeholder="Enter your full name" required> 
                                </div>
                            </div>
                            @error('full_name')
                                <span class="text-danger pb-1">{{ $message }}</span>
                            @enderror
                        </div> --}}
                        <div class="form-group">
                            <label for="in_time" class="col-sm-2 asterisk control-label">In Time</label>
                            <div class="col-sm-8">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-pencil fa-fw"></i></span>
                                    <input type="text" name="in_time" value="09:00"  class="form-control date_picker"> 
                                </div>
                            </div>
                            @error('in_time')
                                <span class="text-danger pb-1">{{ $message }}</span>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label for="out_time" class="col-sm-2 asterisk control-label">Out Time</label>
                            <div class="col-sm-8">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-pencil fa-fw"></i></span>
                                    <input type="text" name="out_time" value="{{ date('H:i') }}" class="form-control date_picker"> 
                                </div>
                            </div>
                            @error('out_time')
                                <span class="text-danger pb-1">{{ $message }}</span>
                            @enderror
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
        $('.date_picker').datetimepicker({format: "HH:mm:ss"});
	});
    // Add attendance form 
    $('.add-attendance-form').on('submit',function(e){
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
                // window.location = "{{ url('/admin/attendances') }}";
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
    let count = 1;
    function add_field(){
       $('.append_field').append(`<tr class="file_count">
            <td width="30%"><input type="text"   name="c_name[]"    class="form-control" placeholder="Enter name"   required></td>
            <td width="30%"><input type="text"   name="c_mobile[]"  class="form-control" placeholder="Enter mobile" required></td>  
            <td width="30%"><input type="email"  name="c_email[]"   class="form-control" placeholder="Enter email"  required></td>
            <td><div class="remove_field btn btn-danger btn-sm"><i class="fa fa-trash">&nbsp;</i>Remove</div></td>  
        </tr>`);
        // Count increment
        count++;
        if(count == 2){
            $('.add_field').css('display', 'none');
        } 
        return true;
    }
    // Remove pricing field 
    $('.append_field').on('click', '.remove_field', function () {
        count = count - 1;
        $(this).closest('.file_count').remove();
        $('.add_field').css('display', 'block');
        return true;
    });
</script>
