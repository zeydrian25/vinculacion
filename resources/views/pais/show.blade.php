@extends('layouts.app')

@section('content')
    <section class="content-header">
        <h1>
            País
        </h1>
    </section>
    <div class="content">
        <div class="box box-primary">
            <div class="box-body">
                <div class="row" style="padding-left: 20px">
                    @include('pais.show_fields')
                    <a href="{!! route('pais.index') !!}" class="btn btn-default">regresar</a>
                </div>
            </div>
        </div>
    </div>
@endsection
