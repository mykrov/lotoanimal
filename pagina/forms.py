from django import forms
from django.contrib.auth.forms import AuthenticationForm

class LoginForm (forms.Form):
    username = forms.CharField()
    pasword = forms.CharField(widget=forms.PasswordInput())
