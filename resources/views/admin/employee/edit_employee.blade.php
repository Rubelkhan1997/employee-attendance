<div class="row">
    <div class="col-md-12">
        <div class="box">
            <div class="box-header with-border">
                <h3 class="box-title">Create</h3>
                <div class="box-tools">
                    <div class="btn-group pull-right" style="margin-right: 5px">
                        <a href="{{ url('/admin/posts/'.$path_name) }}" class="btn btn-sm btn-default" title="List">
                            <i class="fa fa-list"></i><span class="hidden-xs">&nbsp;List</span>
                        </a>
                    </div>
                </div>
            </div>
            <!-- form start -->
            <form action="{{ url('/admin/posts/store/'.$path_name) }}" method="post" class="form-horizontal add-post-form" accept-charset="UTF-8" enctype="multipart/form-data">
                <div class="box-body">
                    <div class="col-md-12">
                        @if ($branch_id == 8)
                            @php
                                $subjects = \App\Models\Subject::where('status', 1)->orderBy('serial', 'ASC')->pluck('title', 'id')->toArray()
                            @endphp
                            <div class="form-group">
                                <label for="subject_id" class="col-sm-2 asterisk control-label">Subject</label>
                                <div class="col-sm-8">
                                    <select name="subject_id" class="form-control subject-select2" onchange="subject_change(this.value)" style="width:100%;">
                                        <option selected value="">Subject</option>
                                        @foreach ($subjects as $key => $subject)
                                            <option value="{{ $key }}"  {{ Request::get('subject_id') == $key? 'selected' :'' }}>{{ $subject }}</option>
                                        @endforeach
                                    </select>
                                    @error('subject_id')
                                        <span class="text-danger pb-1">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="sub_subject_id" class="col-sm-2 control-label">Sub Subject</label>
                                <div class="col-sm-8">
                                    <select name="sub_subject_id" class="form-control sub-subject-select2" style="width:100%;">
       
                                    </select>
                                    @error('sub_subject_id')
                                        <span class="text-danger pb-1">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                        @endif
                        <div class="form-group">
                            <label for="title" class="col-sm-2 asterisk control-label">
                                @if($branch_id == 10) Name @else Title @endif
                            </label>
                            <div class="col-sm-8">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-pencil fa-fw"></i></span>
                                    <input type="text" name="title" value="{{ old('title') }}" class="form-control" required>
                                </div>
                            </div>
                            @error('title')
                                <span class="text-danger pb-1">{{ $message }}</span>
                            @enderror
                        </div>
                        @if ($branch_id == 8)
                            <div class="form-group">
                                <label for="youtube_link" class="col-sm-2 asterisk control-label">Youtube link</label>
                                <div class="col-sm-8">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-pencil fa-fw"></i></span>
                                        <input type="text" name="youtube_link"  class="form-control"  required> 
                                    </div>
                                </div>
                                @error('youtube_link')
                                    <span class="text-danger pb-1">{{ $message }}</span>
                                @enderror
                            </div>
                        @elseif ($branch_id == 10) 
                            <div class="form-group">
                                <label for="version" class="col-sm-2 control-label">Version</label>
                                <div class="col-sm-8">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-pencil fa-fw"></i></span>
                                        <input type="text" name="version"  class="form-control"> 
                                    </div>
                                </div>
                                @error('version')
                                    <span class="text-danger pb-1">{{ $message }}</span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label for="price" class="col-sm-2 asterisk control-label">Price</label>
                                <div class="col-sm-8">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-pencil fa-fw"></i></span>
                                        <input type="text" name="price" class="form-control"> 
                                    </div>
                                </div>
                                @error('price')
                                    <span class="text-danger pb-1">{{ $message }}</span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label for="serial" class="col-sm-2 asterisk control-label">
                                    Ordering
                                </label>
                                <div class="col-sm-8">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-pencil fa-fw"></i></span>
                                        <input type="text" name="serial"  value="1" placeholder="Input ordering" class="form-control">
                                    </div>
                                </div>
                                @error('serial')
                                    <span class="text-danger pb-1">{{ $message }}</span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label for="image" class="col-sm-2 asterisk control-label">Image</label>
                                <div class="col-sm-8">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-pencil fa-fw"></i></span>
                                        <input type="file" name="image"  class="form-control" required> 
                                    </div>
                                </div>
                                @error('image')
                                    <span class="text-danger pb-1">{{ $message }}</span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label for="file" class="col-sm-2 asterisk control-label">File(pdf)</label>
                                <div class="col-sm-8">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-pencil fa-fw"></i></span>
                                        <input type="file" name="file"  class="form-control" accept="application/pdf" required> 
                                    </div>
                                </div>
                                @error('file')
                                    <span class="text-danger pb-1">{{ $message }}</span>
                                @enderror
                            </div>
                        @endif
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
                        <input type="hidden" name="branch_id" value="{{ $branch_id }}" />
                        <input type="hidden" name="path_name" value="{{ $path_name }}" />
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
