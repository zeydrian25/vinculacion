@extends('layouts.app')

@section('content')
    <section class="content-header">
        <h1>
            Tipo de Suelo
        </h1>
    </section>
    <div class="content">
        <div class="box box-primary">
            <div class="box-body">
                <div class="row" style="padding-left: 20px">
                    @include('tipo_suelos.show_fields')
                    <a href="{!! route('tipoSuelos.index') !!}" class="btn btn-default">Volver</a>
                </div>
            </div>
        </div>
    </div>
@endsection
