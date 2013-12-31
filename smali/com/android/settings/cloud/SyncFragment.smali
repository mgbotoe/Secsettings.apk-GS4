.class public abstract Lcom/android/settings/cloud/SyncFragment;
.super Landroid/preference/PreferenceFragment;
.source "SyncFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/settings/cloud/CloudDialog$DialogListener;


# instance fields
.field private dialogFragment:Landroid/app/DialogFragment;

.field protected mActionBarSwitch:Landroid/widget/Switch;

.field protected mPrefWifiOnly:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/android/settings/cloud/SyncFragment;->dialogFragment:Landroid/app/DialogFragment;

    .line 44
    iput-object v0, p0, Lcom/android/settings/cloud/SyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    return-void
.end method

.method private isNetworkAvailable()Z
    .locals 1

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/android/settings/cloud/SyncFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    const/4 v0, 0x1

    .line 229
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract broadcastStatus(I)V
.end method

.method protected finish()V
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/settings/cloud/SyncFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 150
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 53
    return-void
.end method

.method public onCancelButtonClick()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 201
    iget-object v2, p0, Lcom/android/settings/cloud/SyncFragment;->dialogFragment:Landroid/app/DialogFragment;

    if-eqz v2, :cond_0

    .line 202
    iget-object v2, p0, Lcom/android/settings/cloud/SyncFragment;->dialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {v2}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 203
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "dialogType"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 205
    .local v1, type:I
    packed-switch v1, :pswitch_data_0

    .line 216
    .end local v0           #args:Landroid/os/Bundle;
    .end local v1           #type:I
    :cond_0
    :goto_0
    return-void

    .line 207
    .restart local v0       #args:Landroid/os/Bundle;
    .restart local v1       #type:I
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/cloud/SyncFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 208
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/SyncFragment;->updateScreen(I)V

    goto :goto_0

    .line 211
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/cloud/SyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 212
    invoke-virtual {p0, v3}, Lcom/android/settings/cloud/SyncFragment;->updateScreen(I)V

    goto :goto_0

    .line 205
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 96
    invoke-direct {p0}, Lcom/android/settings/cloud/SyncFragment;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    if-nez p2, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 98
    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/SyncFragment;->updateScreen(I)V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/cloud/SyncFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f0912e9

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/SyncFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 115
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 97
    goto :goto_0

    .line 104
    :cond_1
    if-eqz p2, :cond_2

    .line 106
    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/SyncFragment;->broadcastStatus(I)V

    .line 114
    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/SyncFragment;->updateScreen(I)V

    goto :goto_1

    .line 109
    :cond_2
    const/4 v0, 0x2

    const v1, 0x7f0912ea

    invoke-virtual {p0, v1}, Lcom/android/settings/cloud/SyncFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/android/settings/cloud/CloudDialog;->getInstance(ILjava/lang/String;Lcom/android/settings/cloud/CloudDialog$DialogListener;)Lcom/android/settings/cloud/CloudDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cloud/SyncFragment;->dialogFragment:Landroid/app/DialogFragment;

    .line 111
    iget-object v0, p0, Lcom/android/settings/cloud/SyncFragment;->dialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {v0, v2}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 112
    iget-object v0, p0, Lcom/android/settings/cloud/SyncFragment;->dialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/cloud/SyncFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v3, "dialog"

    invoke-virtual {v0, v1, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onPositiveButtonClick()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 179
    iget-object v2, p0, Lcom/android/settings/cloud/SyncFragment;->dialogFragment:Landroid/app/DialogFragment;

    if-eqz v2, :cond_0

    .line 180
    iget-object v2, p0, Lcom/android/settings/cloud/SyncFragment;->dialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {v2}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 181
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "dialogType"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 183
    .local v1, type:I
    packed-switch v1, :pswitch_data_0

    .line 194
    .end local v0           #args:Landroid/os/Bundle;
    .end local v1           #type:I
    :cond_0
    :goto_0
    return-void

    .line 185
    .restart local v0       #args:Landroid/os/Bundle;
    .restart local v1       #type:I
    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/android/settings/cloud/SyncFragment;->updateScreen(I)V

    .line 186
    invoke-virtual {p0, v3}, Lcom/android/settings/cloud/SyncFragment;->broadcastStatus(I)V

    goto :goto_0

    .line 189
    :pswitch_1
    invoke-virtual {p0, v4}, Lcom/android/settings/cloud/SyncFragment;->updateScreen(I)V

    .line 190
    invoke-virtual {p0, v4}, Lcom/android/settings/cloud/SyncFragment;->broadcastStatus(I)V

    goto :goto_0

    .line 183
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 120
    invoke-direct {p0}, Lcom/android/settings/cloud/SyncFragment;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 121
    iget-object v4, p0, Lcom/android/settings/cloud/SyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/cloud/SyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 122
    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/SyncFragment;->updateScreen(I)V

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/cloud/SyncFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v4, 0x7f0912e9

    invoke-virtual {p0, v4}, Lcom/android/settings/cloud/SyncFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 141
    :goto_1
    return v3

    :cond_0
    move v1, v3

    .line 121
    goto :goto_0

    .line 128
    :cond_1
    iget-object v1, p0, Lcom/android/settings/cloud/SyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 129
    iget-object v1, p0, Lcom/android/settings/cloud/SyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 131
    .local v0, isCheck:Z
    if-eqz v0, :cond_3

    .line 132
    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/SyncFragment;->broadcastStatus(I)V

    .line 140
    .end local v0           #isCheck:Z
    :cond_2
    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/SyncFragment;->updateScreen(I)V

    move v3, v2

    .line 141
    goto :goto_1

    .line 134
    .restart local v0       #isCheck:Z
    :cond_3
    const/4 v1, 0x3

    const v4, 0x7f0912f1

    invoke-virtual {p0, v4}, Lcom/android/settings/cloud/SyncFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, p0}, Lcom/android/settings/cloud/CloudDialog;->getInstance(ILjava/lang/String;Lcom/android/settings/cloud/CloudDialog$DialogListener;)Lcom/android/settings/cloud/CloudDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/cloud/SyncFragment;->dialogFragment:Landroid/app/DialogFragment;

    .line 136
    iget-object v1, p0, Lcom/android/settings/cloud/SyncFragment;->dialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {v1, v3}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 137
    iget-object v1, p0, Lcom/android/settings/cloud/SyncFragment;->dialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/cloud/SyncFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "dialog"

    invoke-virtual {v1, v3, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/16 v5, 0x10

    const/4 v6, -0x2

    const/4 v4, 0x0

    .line 57
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/cloud/SyncFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 60
    .local v0, activity:Landroid/app/Activity;
    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/cloud/SyncFragment;->mActionBarSwitch:Landroid/widget/Switch;

    .line 62
    instance-of v2, v0, Landroid/preference/PreferenceActivity;

    if-eqz v2, :cond_0

    .line 63
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 65
    .local v1, padding:I
    iget-object v2, p0, Lcom/android/settings/cloud/SyncFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4, v4, v1, v4}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 66
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 68
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/cloud/SyncFragment;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const/16 v5, 0x15

    invoke-direct {v4, v6, v6, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 75
    .end local v1           #padding:I
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/android/settings/cloud/SyncFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 221
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 222
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 223
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 224
    return-void
.end method

.method protected abstract toggleCheckbox(Z)V
.end method

.method protected abstract togglePreferences(Z)V
.end method

.method protected updateScreen(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 156
    invoke-static {}, Lcom/android/settings/cloud/CloudSettings;->getInstance()Lcom/android/settings/cloud/CloudSettings;

    move-result-object v0

    .line 158
    .local v0, settings:Lcom/android/settings/cloud/CloudSettings;
    if-nez v0, :cond_1

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/cloud/SyncFragment;->finish()V

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    invoke-virtual {v0}, Lcom/android/settings/cloud/CloudSettings;->isAccountSet()Z

    move-result v1

    if-nez v1, :cond_2

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/cloud/SyncFragment;->finish()V

    goto :goto_0

    .line 166
    :cond_2
    if-nez p1, :cond_3

    .line 167
    iget-object v1, p0, Lcom/android/settings/cloud/SyncFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/cloud/SyncFragment;->togglePreferences(Z)V

    goto :goto_0

    .line 168
    :cond_3
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/android/settings/cloud/SyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/cloud/SyncFragment;->toggleCheckbox(Z)V

    goto :goto_0
.end method
