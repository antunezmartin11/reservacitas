@extends('layouts.panel')

@section('content')
<div class="card shadow">
    <div class="card-header border-0">
      <div class="row align-items-center">
        <div class="col">
          <h3 class="mb-0">Nuevo Medico</h3>
        </div>
        <div class="col text-right">
        <a href="{{url('/doctors')}}" class="btn btn-sm btn-primary">Cancelar y Volver</a>
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


        <form action="{{url('doctors/'.$doctor->id)}}" method="POST">
        @csrf
            @method('PUT')
            <div class="form-group">
                <label for="name">Nombre del medico</label>
                <input type="text" name="name" class="form-control" value="{{old('name',$doctor->name)}}" required>
            </div>
            <div class="form-group">
                <label for="descripcion">Correo Electronico</label>
                <input type="email" name="email" class="form-control" value="{{old('email',$doctor->email)}}">
            </div>
            <div class="form-group">
                <label for="descripcion">DNI</label>
                <input type="text" name="dni" class="form-control" value="{{old('dni',$doctor->dni)}}">
            </div>
            <div class="form-group">
                <label for="descripcion">Direccion</label>
                <input type="text" name="address" class="form-control" value="{{old('address'.$doctor->address)}}">
            </div>
            <div class="form-group">
                <label for="descripcion">Telefono</label>
                <input type="text" name="phone" class="form-control" value="{{old('phone',$doctor->phone)}}">
            </div>
            <div class="form-group">
                <label for="descripcion">Contraseña </label>
                <input type="text" name="password" class="form-control" value="">
                <p>Ingresar un valor solo si desea actualizar la contraseña</p>
            </div>
            <button type="submit" class="btn btn-sm btn-default">Guardar</button>
        </form>
    </div>
  </div>
@endsection
