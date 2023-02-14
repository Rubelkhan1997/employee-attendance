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
								<div class="col-xs-12 col-sm-3 mb-5">
									<select name="status" class="form-control status-select2">
										<option value="0">All</option>
										<option value="1">Active</option>
										<option value="2">In-Active</option>
									</select>
								</div>
								<div class="col-xs-12 col-sm-3 mb-5">
									<input type="text" name="name" value="{{ Request::get('name') }}" class="form-control" placeholder="Search Full Name/Contact Name">
								</div>
								<div class="col-xs-12 col-sm-2 mb-5">
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
								<th>In Time</th>
								<th>Out Time</th>
								<th>Stay Time</th>
								<th>Status</th>
							</tr>
						</thead>
						<tbody>
							@foreach($employees as $em)
								<tr>
									<td>{{ $loop->iteration }}</td>
									 
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
	let status  = "{{ Request::get('status') }}";
	$(function(){
		$('.status-select2').select2({
			placeholder: 'All',
			allowClear: true
		});

		if(status){$('.status-select2').val(status).trigger('change')}
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
 