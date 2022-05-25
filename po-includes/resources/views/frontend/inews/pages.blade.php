@extends(getTheme('layouts.app'))

@section('content')
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-229536223-3');
</script>
	<div class="page-title">&nbsp;</div>
	
	<div class="container">
		<div class="row row-m">
			<div class="col-sm-8 col-p main-content">
				<div class="theiaStickySidebar">
					<div class="post_details_inner">
						<div class="post_details_block details_block2">
							<div class="post-header">
								<h2>{{ $pages->title }}</h2>
							</div> 
							
							@if($pages->picture != '')
								<figure class="social-icon">
									<img src="{{ getPicture($pages->picture, null, $pages->updated_by) }}" class="img-responsive" alt="{{ $pages->title }}" />		
								</figure>
							@endif
							
							{!! $pages->content !!}
						</div>
					</div>
				</div>
			</div>
			
			<div class="col-sm-4 col-p rightSidebar">
				@include(getTheme('partials.sidebar'))
			</div>
		</div>
	</div>
@endsection
