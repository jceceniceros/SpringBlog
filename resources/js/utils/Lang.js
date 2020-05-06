window.localization = {
    'Blank spaces are not allowed': 'No se permite espacios en blanco',
    'Only letters, numbers, hyphen and underscore are allowed': 'Solo se permiten letras, números, guión y guión bajo',
    'There are errors in the validation of the fields': 'Hay errores en la validación de los campos',
    'The field is required': 'El campo es obligatorio',
    'Select a valid option': 'Selecciona una opción válida',
    'An error was ocurred, try again later': 'Ocurrió un error, intenta más tarde',
    'Date out of range': 'La fecha no esta dentro de un rango válido'
}

export default {
    _data: window.localization,

    get(string) {
        return this._data.hasOwnProperty(string) ? this._data[string] : string;
    }
};
