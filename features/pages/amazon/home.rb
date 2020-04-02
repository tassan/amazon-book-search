class HomePage < SitePrism::Page
    set_url "https://www.amazon.com.br"

    element :search_field, 'input[name="field-keywords"]'
    element :search_button, 'input[type="submit"]'
end