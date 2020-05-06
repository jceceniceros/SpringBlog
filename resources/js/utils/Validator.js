$.validator.addMethod(
    'whitespaces',
    (value, element) => {
        return value.indexOf(' ') < 0 && value != '';
    },
    __('Blank spaces are not allowed')
);

$.validator.addMethod(
    'alpha_dash',
    (value, element) => {
        const regex = new RegExp('^[a-zA-Z0-9_-]+$');
        return value.match(regex);
    },
    __('Only letters, numbers, hyphen and underscore are allowed')
);

$.validator.addMethod(
    'selected',
    (value, element) => {
        return !!value;
    },
    __('Select a valid option')
);

$.validator.setDefaults({
    ignore: false,
    errorElement: 'span',
    errorClass: 'is-invalid small text-danger',
    validClass: 'is-valid'
});

const error_placement = (error, element) => {
    let $parent = $(element).parent();
    while (!$parent.hasClass('form-group')) {
        $parent = $parent.parent();
        if ($parent.get(0) == null) {
            $parent = $(element).parent();
            break;
        }
    }
    $parent.append(error);
};

const highlight = (element, errorClass, validClass) => {
    $(element)
        .removeClass(validClass)
        .addClass(errorClass);
};

const unhighlight = (element, errorClass, validClass) => {
    $(element)
        .removeClass(errorClass)
        .addClass(validClass);
    $(element)
        .parent()
        .children('span.' + errorClass)
        .remove();
};

const invalid_handler = (e, validator) => {
    toastr.error(__('There are errors in the validation of the fields'));
};

const submit_handler = ($form) => {
    $('button[type="submit"]').attr('disabled', true);
    $form.submit();
};

const init = (form_selector, rules, messages = {}, options = {}) => {
    const forms = $(form_selector);
    const forms_count = forms.length;
    if (forms_count <= 0) {
        console.warn(`Form [${form_selector}] does not exist`);
        return;
    }

    const config = {
        rules: rules,
        messages: messages,
        errorPlacement: options.error_placement || error_placement,
        highlight: options.highlight || highlight,
        unhighlight: options.unhighlight || unhighlight,
        invalidHandler: options.invalid_handler || invalid_handler,
        submitHandler: options.submit_handler || submit_handler
    };

    try {
        let results = [];
        forms.each((index, form) => {
            const result = $(form).validate(config);
            results.push(result);
        });
        return forms_count > 1 ? results : results.shift();
    } catch (e) {
        console.error(e);
        return e;
    }
};

export default init;
