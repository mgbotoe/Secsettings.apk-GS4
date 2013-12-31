.class public Lcom/android/settings/OneHandHelp;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OneHandHelp.java"


# instance fields
.field private mEnableScreenHelp:Landroid/preference/PreferenceScreen;

.field private mInputControlHelp:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f070066

    invoke-virtual {p0, v0}, Lcom/android/settings/OneHandHelp;->addPreferencesFromResource(I)V

    .line 45
    const-string v0, "enable_screen_help"

    invoke-virtual {p0, v0}, Lcom/android/settings/OneHandHelp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/OneHandHelp;->mEnableScreenHelp:Landroid/preference/PreferenceScreen;

    .line 46
    const-string v0, "input_control_help"

    invoke-virtual {p0, v0}, Lcom/android/settings/OneHandHelp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/OneHandHelp;->mInputControlHelp:Landroid/preference/PreferenceScreen;

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/OneHandHelp;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "enable_screen_help"

    invoke-virtual {p0, v1}, Lcom/android/settings/OneHandHelp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 51
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v5, 0x0

    const v4, 0x104000a

    .line 55
    iget-object v3, p0, Lcom/android/settings/OneHandHelp;->mEnableScreenHelp:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 57
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/OneHandHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 59
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/android/settings/OneHandHelp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 60
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f040088

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 62
    .local v2, layout:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 63
    const v3, 0x7f0915ad

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 65
    new-instance v3, Lcom/android/settings/OneHandHelp$1;

    invoke-direct {v3, p0}, Lcom/android/settings/OneHandHelp$1;-><init>(Lcom/android/settings/OneHandHelp;)V

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 69
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 70
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 88
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #layout:Landroid/view/View;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3

    .line 71
    :cond_1
    iget-object v3, p0, Lcom/android/settings/OneHandHelp;->mInputControlHelp:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 73
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/OneHandHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 75
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/android/settings/OneHandHelp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 76
    .restart local v1       #inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f0400f6

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 78
    .restart local v2       #layout:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 79
    const v3, 0x7f0915fc

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 81
    new-instance v3, Lcom/android/settings/OneHandHelp$2;

    invoke-direct {v3, p0}, Lcom/android/settings/OneHandHelp$2;-><init>(Lcom/android/settings/OneHandHelp;)V

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 85
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 86
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
