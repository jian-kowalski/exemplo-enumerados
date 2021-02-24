unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uEnumImpostoRenda;

type
  TFrmPrincipal = class(TForm)
    btPorcentagem: TButton;
    cbImpostoRenda: TComboBox;
    procedure btPorcentagemClick(Sender: TObject);
  private
    { Private declarations }
    procedure ExibirPorcentagemImpostoDeRenda;
    function GetPorcentagemImpostoRenda(AtTipoPessoa: tImpostoDeRenda): Double;
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.btPorcentagemClick(Sender: TObject);
begin
  ExibirPorcentagemImpostoDeRenda;
end;

procedure TFrmPrincipal.ExibirPorcentagemImpostoDeRenda;
var
  nPorcentagem: Double;
begin
  nPorcentagem :=
    GetPorcentagemImpostoRenda(tImpostoDeRenda(cbImpostoRenda.ItemIndex));
  ShowMessage('A porcentagem é: ' + FloatToStr(nPorcentagem));
end;

function TFrmPrincipal.GetPorcentagemImpostoRenda(
  AtTipoPessoa: tImpostoDeRenda): Double;
begin
  Result := 0;

  if AtTipoPessoa = tImpostoDeRenda.tirVazio then
    Result := 99.17;

  if AtTipoPessoa = tImpostoDeRenda.tirPessoaFisica then
    Result := 15.7;

  if AtTipoPessoa = tImpostoDeRenda.tirPessoaJuridica then
    Result := 19.3;
end;

end.
