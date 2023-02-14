<style>
	.mb-5{margin-bottom: 5px} 
	 span.select2.select2-container.select2-container--default {
        width: 100% !important;
    }
	.d-none{
		display: none;
	}
</style>
<div class="row">
	<div class="col-md-12">
		<div class="box">
			<div class="box-header with-border">
				<div class="row">
					<div class="col-sm-10">
						<form action="{{ url('/admin/reports') }}" method="get">
							<div class="row">
                                <div class="col-xs-12 col-sm-3 mb-5">
                                    <select name="report_type" class="form-control type-select2" onchange="report_type_change(this.value)" style="width:100%;" required>
                                        <option selected value="">Select the report type</option>
                                        <option value="1">Monthly</option>
                                        <option value="2">Summary</option>
                                    </select>
                                </div>
								@if (admin_check())
									<div class="col-xs-12 col-sm-3 mb-5 employee-div">
										<select name="employee_id" class="form-control employee-select2">
											<option selected value="">Select the employee</option>
											@foreach ($employees as $key => $employee)
												<option value="{{ $key }}">{{ $employee }}</option>
											@endforeach
										</select>
									</div>
								@endif
								<div class="col-xs-12 col-sm-3 mb-5">
									<input type="text" name="date" value="{{ Request::get('date') }}" placeholder="Select a date" autocomplete="off" class="form-control date_picker" required>
								</div>
								<div class="col-xs-12 col-sm-3 mb-5">
									<button type="submit" class="btn btn-success">Submit</button>
									<a href="{{ url('/admin/reports') }}" class="btn btn-primary">Clear</a>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
						{{-- @if (admin_check())
										<td>{{ @$attend->employee->full_name }}</td>
									@endif --}}
			<div class="box-body">
				<div class="table-responsive">
					@if (Request::get('report_type') == 1)
						<table class="table table-striped">
							<thead>
								<tr>
									<th>SL</th>
									<th>Date</th>
									<th>In Time</th>
									<th>Out Time</th>
									<th>Stay Time</th>
									<th>Status</th>
								</tr>
							</thead>
							<tbody>
								@foreach((object) $attendances as $attend)
									<tr>
										<td>{{ $loop->iteration }}</td>
										<td>{{ $attend->date }}</td>
										<td>{{ $attend->in_time }}</td>
										<td>{{ $attend->out_time }}</td>
										<td>{{ $attend->stay_time }}</td>
										<td>{{ $attend->status }}</td>
									</tr>
								@endforeach
							</tbody>
						</table>
					@elseif( Request::get('report_type') == 2)
						<table class="table table-striped">
							<thead>
								<tr>
									<th>SL</th>
									<th>Name</th>
									<th>Working Days</th>
									<th>Stay Time</th>
									<th>Average</th>
								</tr>
							</thead>
							<tbody>
								@foreach((object) $attendances as $attend)
									<tr>
										<td>{{ $loop->iteration }}</td>
										<td>{{ $attend->date }}</td>
										<td>{{ $attend->in_time }}</td>
										<td>{{ $attend->out_time }}</td>
										<td>{{ $attend->stay_time }}</td>
										<td>{{ $attend->status }}</td>
									</tr>
								@endforeach
							</tbody>
						</table>
					@endif
				</div>
			</div>
		</div>
	</div>
</div>

<script>
	let old_employee_id  = "{{ Request::get('employee_id') }}";
	let old_report_type  = "{{ Request::get('report_type') }}";
	$(function(){
		$('.type-select2').select2({
            placeholder: 'Select the report type',
			allowClear: true
		});
		$('.employee-select2').select2({
            placeholder: 'Select the employee',
			allowClear: true
		});
		$('.date_picker').datetimepicker({
            format: "MMM-YYYY",
            maxDate: new Date(),
        });
		if(old_report_type){$('.type-select2').val(old_report_type).trigger('change')}
		if(old_employee_id){$('.employee-select2').val(old_employee_id).trigger('change')}
	});
	function create(url){
		window.location.href = url;
	}
	function edit(url){
		window.location.href = url;
	}
	function view_images(name){
		window.open(name);
	}

	function report_type_change(value){
		if(value==2){
			$('.employee-div').hide();
		}else{
			$('.employee-div').show();
			$('.employee-select2').attr('required', true)	
		}
	}
</script>
 