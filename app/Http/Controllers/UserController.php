<?php

namespace App\Http\Controllers;

use App\Http\Requests\UserRequest;
use App\Models\Users;
use Illuminate\Http\Request;
use Nette\Utils\Validators;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $model = Users::all();
        return response($model, 201);
    }

    public function information(Request $request)
    {
        $model = Users::where('email', $request)->get();
        return response($model, 201);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(UserRequest $request)
    {
        $model = new Users();
        $model->nick_name = $request->nick_name;
        $model->email = $request->email;
        $model->firstname = $request->firstname;
        $model->lastname = $request->lastname;
        $model->password = $request->password;
        $model->role_id = $request->role_id;
        $model->save();
        return response()->json($model, 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $model = Users::find($id);
        return response($model, 201);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(UserRequest $request, $id)
    {
        $model = Users::find($id);
        $model->nick_name = $request->nick_name;
        $model->email = $request->email;
        $model->firstname = $request->firstname;
        $model->lastname = $request->lastname;
        $model->password = $request->password;
        $model->role_id = $request->role_id;
        $model->save();
        return response($model, 201);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $model = Users::find($id);
        $model->delete();
        return response($model, 201);
    }
}
