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
						{{-- form --}}
					</div>
					<div class="col-sm-12 col-md-2">
						<a href="{{ url('/admin/employees/create' )}}" class="btn btn-sm btn-success pull-right" title="New">
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
								  
								<th>Status</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>
							@foreach($employees as $post)
								<tr>
									<td>{{ $loop->iteration }}</td>
									<td>{{ status($post->status) }}</td>
									<td><a href="{{ url('admin/posts/'.$method.'/'.$post->id ) }}" class="btn btn-primary btn-sm"><i class="fa fa-pencil"></i> Edit</a></td>
								</tr>
							@endforeach
						</tbody>
					</table>
					 {{ $employees->links() }}
				</div>
			</div>
		</div>
	</div>
</div>

 