@extends('layouts.panel')

@section('content')
<div class="card shadow">
    <div class="card-header border-0">
      <div class="row align-items-center">
        <div class="col">
          <h3 class="mb-0">Editar Especialidad</h3>
        </div>
        <div class="col text-right">
        <a href="{{url('/especialidades')}}" class="btn btn-sm btn-primary">Cancelar y Volver</a>
        </div>
      </div>
    </div>
    <div class="card-body">
        @if($errors->any())
            <div class="alert alert-danger">
                <ul>
                @foreach($errors->all() as $error)
                    <li>
                        {{$error}}
                    </li>
                @endforeach
            </ul>
            </div>
        @endif

        <form action="{{url('especialidades/'.$Specialty->id)}}" method="POST">
            @csrf
            @method('PUT')
            <div class="form-group">
                <label for="name">Nombre de especialidad</label>
                <input type="text" name="name" class="form-control" value="{{old('name',$Specialty->name)}}" required>
            </div>
            <div class="form-group">
                <label for="descripcion">descripcion</label>
                <input type="text" name="descripcion" class="form-control" value="{{old('descripcion',$Specialty->descripcion)}}">
            </div>
            <button type="submit" class="btn btn-sm btn-default">Guardar</button>
        </form>
    </div>
  </div>
@endsection
