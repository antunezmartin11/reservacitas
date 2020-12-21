@extends('layouts.panel')

@section('content')
<div class="card shadow">
    <div class="card-header border-0">
      <div class="row align-items-center">
        <div class="col">
          <h3 class="mb-0">Nuevo Paciente</h3>
        </div>
        <div class="col text-right">
        <a href="{{url('/patients')}}" class="btn btn-sm btn-primary">Cancelar y Volver</a>
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

        <form action="{{url('patients')}}" method="POST">
            @csrf
            <div class="form-group">
                <label for="name">Nombre del Paciente</label>
                <input type="text" name="name" class="form-control" value="{{old('name')}}" required>
            </div>
            <div class="form-group">
                <label for="descripcion">Correo Electronico</label>
                <input type="email" name="email" class="form-control" value="{{old('email')}}">
            </div>
            <div class="form-group">
                <label for="descripcion">DNI</label>
                <input type="text" name="dni" class="form-control" value="{{old('address')}}">
            </div>
            <div class="form-group">
                <label for="descripcion">Direccion</label>
                <input type="text" name="address" class="form-control" value="{{old('dni')}}">
            </div>
            <div class="form-group">
                <label for="descripcion">Telefono</label>
                <input type="text" name="phone" class="form-control" value="{{old('phone')}}">
            </div>
            <div class="form-group">
                <label for="descripcion">Contraseña</label>
                <input type="text" name="password" class="form-control" value="{{str_random(6)}}">
            </div>
            <button type="submit" class="btn btn-sm btn-default">Guardar</button>
        </form>
    </div>
  </div>
@endsection
