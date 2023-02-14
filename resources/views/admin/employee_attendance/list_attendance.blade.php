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
						<form action="{{ url('/admin/attendances') }}" method="get">
							<div class="row">
								@if (admin_check())
									<div class="col-xs-12 col-sm-3 mb-5">
										<select name="employee_id" class="form-control employee-select2" >
											<option selected value="">Select the employee</option>
											@foreach ($employees as $key => $employee)
												<option value="{{ $key }}">{{ $employee }}</option>
											@endforeach
										</select>
									</div>
								@endif
								<div class="col-xs-12 col-sm-3 mb-5">
									<input type="text" name="date" value="{{ Request::get('date') }}" placeholder="Select a date" class="form-control date_picker">
								</div>
								<div class="col-xs-12 col-sm-3 mb-5">
									<button type="submit" class="btn btn-success">Submit</button>
									<a href="{{ url('/admin/attendances') }}" class="btn btn-primary">Clear</a>
								</div>
							</div>
						</form>
					</div>
					<div class="col-sm-12 col-md-2">
						<a href="javascript:void(0)" onclick="create('{{ url('/admin/attendances/create') }}')" class="btn btn-sm btn-success pull-right" title="New">
							<i class="fa fa-plus"></i><span class="hidden-xs">&nbsp;&nbsp;Create</span>
						</a>
					</div>
				</div>
			</div>
			<div class="box-body">
				<div class="table-responsive">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>SL</th>
								@if (admin_check())
									<th>Employee</th>
								@endif
								<th>Date</th>
								<th>In Time</th>
								<th>Out Time</th>
								<th>Stay Time</th>
								<th>Status</th>
							</tr>
						</thead>
						<tbody>
							@foreach($attendances as $attend)
								<tr>
									<td>{{ $loop->iteration }}</td>
									@if (admin_check())
										<td>{{ @$attend->employee->full_name }}</td>
									@endif
									<td>{{ $attend->date }}</td>
									<td>{{ $attend->in_time }}</td>
									<td>{{ $attend->out_time }}</td>
									<td>{{ $attend->stay_time }}</td>
									<td>{{ $attend->status }}</td>
								</tr>
							@endforeach
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>

<script>
	let employee_id  = "{{ Request::get('employee_id') }}";
	$(function(){
		$('.employee-select2').select2({
            placeholder: 'Select the employee',
			allowClear: true
		});
		$('.date_picker').datetimepicker({
            format: "YYYY-MM-DD",
            maxDate: new Date(),
        });
		if(employee_id){$('.employee-select2').val(employee_id).trigger('change')}
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
</script>
 