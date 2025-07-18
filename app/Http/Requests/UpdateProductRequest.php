<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UpdateProductRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array|string>
     */
    public function rules(): array
    { 
        return [
            'brand_id' => 'required',
            'category_id' => 'required',
            'name' => 'required|string',
            'price' => 'required|numeric',
            'color' => 'required|string',
            'product_code' => 'required|string',
            'featured' => 'nullable|numeric',
            'description' =>'required|string',
            'sizes' => 'array|required',
            'sizes.*' => 'required|numeric',
            'quantities' => 'array|required',
            'quantities.*' => 'required|numeric',
            'images' => 'nullable',
            'images.*' => 'mimes:jpg,bmp,png,webp'

        ];
    }

    public function messages(): array
    { 
        return [
            'sizes.*.required' => 'Bắt buộc phải nhập kích cỡ.',
            'quantities.*.required' => 'Bắt buộc phải nhập số lượng.',
            'images.*.required' => 'Bắt buộc phải thêm ảnh.'

        ];
    }
}
