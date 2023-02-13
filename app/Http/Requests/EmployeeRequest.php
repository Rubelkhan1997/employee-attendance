<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class EmployeeRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
     public function rules()
    {
        return [
            'address'     => 'required|string',
            'avatar'      => 'required',
            'c_password'  => 'required|same:password',
            'password'    => 'required',
            'mobile'      => 'required|min:10|max:11|regex:/(01)[0-9]{9}/',
            'email'       => 'required|email|unique:admin_users,email',
            'name'        => 'required|string',
            'full_name'   => 'required|string',
            'id'          => 'nullable|numeric|exists:admin_users,id',
        ];
    }
    public function messages()
    {
        return [
            'avatar.required'  => 'The image field is required.',
        ];
    }
}
