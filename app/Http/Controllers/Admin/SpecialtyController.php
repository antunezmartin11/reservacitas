<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Modelos\Specialty;
use App\Http\Controllers\Controller;
class SpecialtyController extends Controller
{
    public function __construct(){
        $this->middleware('auth');
    }

    public function index(){
        $Specialty= Specialty::all();
        return view('especialidad.index', compact('Specialty'));
    }
    public function create(){

        return view('especialidad.create');
    }

    private function performVlidation(Request $request){//funciona recursiva de validaciones
        $rules=[
            'name'=>'required | min:3'
        ];
        $messages=[
            'name.required'=>'El campo nombre es obligatorio',
            'name.min'=>'Se debe ingresar un nombre con minimo 3 caracteres',
        ];
        $this->validate($request,$rules,$messages);
    }
    public function store(Request $request){

        $this->performVlidation($request);

        $Specialty= new Specialty();
        $Specialty->name=$request->input('name');
        $Specialty->descripcion=$request->input('descripcion');
        $Specialty->save();

        $notificacion='La especialidad se registro correctamente';
        $alert='success';
        return redirect('/especialidades')->with(compact('notificacion','alert'));
    }

    public function edit(Specialty $Specialty){
        return view('especialidad.edit',compact('Specialty'));
    }

    public function update(Request $request,Specialty $Specialty){
        $this->performVlidation($request);

        $Specialty->name=$request->input('name');
        $Specialty->descripcion=$request->input('descripcion');
        $Specialty->save();
        $notificacion='La especialidad se actualizo correctamente';
        $alert='warning';
        return redirect('/especialidades')->with(compact('notificacion','alert'));

    }

    public function destroy(Specialty $Specialty){
        $especialidad=$Specialty->name;
        $Specialty->delete();
        $notificacion='La especialidad '.$especialidad.' se elimino correctamente';
        $alert='danger';
        return redirect('/especialidades')->with(compact('notificacion','alert'));
    }
}
