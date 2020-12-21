@extends('layouts.panel')

@section('content')
<div class="card shadow">
    <div class="card-header border-0">
      <div class="row align-items-center">
        <div class="col">
          <h3 class="mb-0">Pacientes</h3>
        </div>
        <div class="col text-right">
        <a href="{{url('/patients/create')}}" class="btn btn-sm btn-primary">Nuevo Paciente</a>
        </div>
      </div>
    </div>
    <div class="card-body">
        @if(session('notificacion'))
        <div class="alert alert-{{session('alert')}}" role="alert">
            {{session('notificacion')}}
        </div>
        @endif
    </div>
    <div class="table-responsive">
      <!-- Projects table -->
      <table class="table align-items-center table-flush">
        <thead class="thead-light">
          <tr>
            <th scope="col">Nombre</th>
            <th scope="col">Email</th>
            <th scope="col">DNI</th>
            <th scope="col">Opciones</th>
          </tr>
        </thead>
        <tbody>
            @foreach($patient as $patients)
            <tr>
                <th scope="row">
                    {{$patients->name}}
                </th>
                <td>
                    {{$patients->email}}
                </td>
                <th scope="row">
                    {{$patients->dni}}
                </th>
                <td>
                    <form action="{{url('patients/'.$patients->id)}}" method="POST">
                        @csrf
                        @method('DELETE')
                        <a href="{{ url('/patients/'.$patients->id.'/edit') }}" class="btn btn-sm btn-primary">Editar</a>
                        <button href="#" type="submit" class="btn btn-sm btn-danger">Eliminar</button>
                    </form>
                </td>
              </tr>
            @endforeach
        </tbody>
      </table>
    </div>
    <div class="card-body">
        {{$patient->links()}}
    </div>
  </div>
@endsection
