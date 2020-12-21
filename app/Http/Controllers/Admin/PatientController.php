<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\User;
use App\Http\Controllers\Controller;
class PatientController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $patient=User::Patients()->paginate(10);
        return view('pacientes.index',compact('patient'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('pacientes.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $rules=[
            'name'=>'required|min:3',
            'email'=>'required|email',
            'dni'=>'nullable|digits:8',
            'address'=>'nullable|min:5',
            'phone'=>'nullable|min:6'
        ];
        $this->validate($request,$rules);

        User::create(
            $request->only('name','email','dni','address','phone')
            +[
                'role'=>'patient',
                'password'=>bcrypt($request->password),
            ]
        );
        $notificacion='El paciente se registro correctamente';
        $alert='success';
        return redirect('/patients')->with(compact('notificacion','alert'));

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(User $patient)
    {
        return view('pacientes.edit',compact('patient'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $rules=[
            'name'=>'required|min:3',
            'email'=>'required|email',
            'dni'=>'nullable|digits:8',
            'address'=>'nullable|min:5',
            'phone'=>'nullable|min:6'
        ];
        $this->validate($request,$rules);
        $user= User::Patients()->findOrFail($id);
        $data=$request->only('name','email','dni','address','phone');
        $password=$request->input('password');
        if($password){
            $data['password']=bcrypt($password);
        }
        $user->fill($data);
        $user->update();
        $notificacion='El informacion del paciente se actualizo correctamente';
        $alert='info';
        return redirect('/patients')->with(compact('notificacion','alert'));

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $patient)
    {
        $patientName=$patient->name;
        $patient->delete();

        $notificacion='El paciente '.$patientName.' se elimino correctamente';
        $alert='danger';
        return redirect('/patients')->with(compact('notificacion','alert'));
    }
}
