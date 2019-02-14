require "application_system_test_case"

class PharmaciesTest < ApplicationSystemTestCase
  setup do
    @pharmacy = pharmacies(:one)
  end

  test "visiting the index" do
    visit pharmacies_url
    assert_selector "h1", text: "Pharmacies"
  end

  test "creating a Pharmacy" do
    visit pharmacies_url
    click_on "New Pharmacy"

    fill_in "Ano", with: @pharmacy.ano
    fill_in "Bairro", with: @pharmacy.bairro
    fill_in "Cep", with: @pharmacy.cep
    fill_in "Cidade", with: @pharmacy.cidade
    fill_in "Cnpj farmacia", with: @pharmacy.cnpj_farmacia
    fill_in "Cnpj matriz", with: @pharmacy.cnpj_matriz
    fill_in "Ddd", with: @pharmacy.ddd
    fill_in "Email", with: @pharmacy.email
    fill_in "Endereco", with: @pharmacy.endereco
    fill_in "Ibge", with: @pharmacy.ibge
    fill_in "Mes", with: @pharmacy.mes
    fill_in "Nome", with: @pharmacy.nome
    fill_in "Telefone", with: @pharmacy.telefone
    fill_in "Uf", with: @pharmacy.uf
    click_on "Create Pharmacy"

    assert_text "Pharmacy was successfully created"
    click_on "Back"
  end

  test "updating a Pharmacy" do
    visit pharmacies_url
    click_on "Edit", match: :first

    fill_in "Ano", with: @pharmacy.ano
    fill_in "Bairro", with: @pharmacy.bairro
    fill_in "Cep", with: @pharmacy.cep
    fill_in "Cidade", with: @pharmacy.cidade
    fill_in "Cnpj farmacia", with: @pharmacy.cnpj_farmacia
    fill_in "Cnpj matriz", with: @pharmacy.cnpj_matriz
    fill_in "Ddd", with: @pharmacy.ddd
    fill_in "Email", with: @pharmacy.email
    fill_in "Endereco", with: @pharmacy.endereco
    fill_in "Ibge", with: @pharmacy.ibge
    fill_in "Mes", with: @pharmacy.mes
    fill_in "Nome", with: @pharmacy.nome
    fill_in "Telefone", with: @pharmacy.telefone
    fill_in "Uf", with: @pharmacy.uf
    click_on "Update Pharmacy"

    assert_text "Pharmacy was successfully updated"
    click_on "Back"
  end

  test "destroying a Pharmacy" do
    visit pharmacies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pharmacy was successfully destroyed"
  end
end
