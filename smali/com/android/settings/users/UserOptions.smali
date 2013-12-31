.class public Lcom/android/settings/users/UserOptions;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UserOptions.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private KEY_MOBILE_DATA:Ljava/lang/String;

.field private KEY_USER_OPTIONS:Ljava/lang/String;

.field private mMobiledata:Landroid/preference/CheckBoxPreference;

.field private mRemovingUserId:I

.field private mSetUser:Lcom/android/settings/users/MePreference;

.field private final mUserLock:Ljava/lang/Object;

.field private mUserManager:Landroid/os/UserManager;

.field user:Landroid/content/pm/UserInfo;

.field user_id:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 44
    const-string v0, "key_mobile_data"

    iput-object v0, p0, Lcom/android/settings/users/UserOptions;->KEY_MOBILE_DATA:Ljava/lang/String;

    .line 45
    const-string v0, "key_user_options"

    iput-object v0, p0, Lcom/android/settings/users/UserOptions;->KEY_USER_OPTIONS:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/users/UserOptions;->mUserLock:Ljava/lang/Object;

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/users/UserOptions;->mRemovingUserId:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/users/UserOptions;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/users/UserOptions;->removeThisUser()V

    return-void
.end method

.method private onRemoveUserClicked(I)V
    .locals 3
    .parameter "userId"

    .prologue
    .line 143
    iget-object v1, p0, Lcom/android/settings/users/UserOptions;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    .line 144
    :try_start_0
    iget v0, p0, Lcom/android/settings/users/UserOptions;->mRemovingUserId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 145
    iput p1, p0, Lcom/android/settings/users/UserOptions;->mRemovingUserId:I

    .line 147
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserOptions;->showDialog(I)V

    .line 148
    monitor-exit v1

    .line 149
    return-void

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private removeThisUser()V
    .locals 2

    .prologue
    .line 152
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/users/UserOptions;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iget v1, p0, Lcom/android/settings/users/UserOptions;->mRemovingUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->removeUser(I)Z

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/users/UserOptions;->finish()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 59
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/users/UserOptions;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "user"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    iput-object v4, p0, Lcom/android/settings/users/UserOptions;->mUserManager:Landroid/os/UserManager;

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/users/UserOptions;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 66
    .local v2, bundle:Landroid/os/Bundle;
    const-string v4, "user_id"

    invoke-virtual {v2, v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/users/UserOptions;->user_id:I

    .line 67
    iget-object v4, p0, Lcom/android/settings/users/UserOptions;->mUserManager:Landroid/os/UserManager;

    iget v5, p0, Lcom/android/settings/users/UserOptions;->user_id:I

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/users/UserOptions;->user:Landroid/content/pm/UserInfo;

    .line 69
    const v4, 0x7f040199

    invoke-virtual {p0, v4}, Lcom/android/settings/users/UserOptions;->addPreferencesFromResource(I)V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/users/UserOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "user_dependent_mobile_settings"

    iget v6, p0, Lcom/android/settings/users/UserOptions;->user_id:I

    invoke-static {v4, v5, v7, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 72
    .local v0, DB_value:I
    iget-object v4, p0, Lcom/android/settings/users/UserOptions;->KEY_USER_OPTIONS:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/settings/users/UserOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/users/MePreference;

    iput-object v4, p0, Lcom/android/settings/users/UserOptions;->mSetUser:Lcom/android/settings/users/MePreference;

    .line 73
    iget-object v4, p0, Lcom/android/settings/users/UserOptions;->mUserManager:Landroid/os/UserManager;

    iget v5, p0, Lcom/android/settings/users/UserOptions;->user_id:I

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 74
    .local v1, b:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 75
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 76
    .local v3, d:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/android/settings/users/UserOptions;->mSetUser:Lcom/android/settings/users/MePreference;

    invoke-virtual {v4, v3}, Lcom/android/settings/users/MePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 78
    .end local v3           #d:Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v4, p0, Lcom/android/settings/users/UserOptions;->mSetUser:Lcom/android/settings/users/MePreference;

    iget-object v5, p0, Lcom/android/settings/users/UserOptions;->user:Landroid/content/pm/UserInfo;

    iget-object v5, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/settings/users/MePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v4, p0, Lcom/android/settings/users/UserOptions;->KEY_MOBILE_DATA:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/settings/users/UserOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/users/UserOptions;->mMobiledata:Landroid/preference/CheckBoxPreference;

    .line 80
    iget-object v4, p0, Lcom/android/settings/users/UserOptions;->mMobiledata:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/users/UserOptions;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/users/UserOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/users/UserOptions;->mMobiledata:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 86
    :cond_1
    invoke-virtual {p0, v8}, Lcom/android/settings/users/UserOptions;->setHasOptionsMenu(Z)V

    .line 88
    if-ne v0, v8, :cond_2

    .line 89
    iget-object v4, p0, Lcom/android/settings/users/UserOptions;->mMobiledata:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 94
    :goto_0
    return-void

    .line 91
    :cond_2
    iget-object v4, p0, Lcom/android/settings/users/UserOptions;->mMobiledata:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "dialogId"

    .prologue
    const/4 v0, 0x0

    .line 117
    packed-switch p1, :pswitch_data_0

    .line 138
    :goto_0
    return-object v0

    .line 119
    :pswitch_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/users/UserOptions;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iget v3, p0, Lcom/android/settings/users/UserOptions;->mRemovingUserId:I

    if-ne v1, v3, :cond_0

    const v1, 0x7f090b01

    :goto_1
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iget v3, p0, Lcom/android/settings/users/UserOptions;->mRemovingUserId:I

    if-ne v1, v3, :cond_1

    const v1, 0x7f090b04

    :goto_2
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090b09

    new-instance v3, Lcom/android/settings/users/UserOptions$1;

    invoke-direct {v3, p0}, Lcom/android/settings/users/UserOptions$1;-><init>(Lcom/android/settings/users/UserOptions;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 134
    .local v0, dlg:Landroid/app/Dialog;
    goto :goto_0

    .line 119
    .end local v0           #dlg:Landroid/app/Dialog;
    :cond_0
    const v1, 0x7f090b02

    goto :goto_1

    :cond_1
    const v1, 0x7f090b05

    goto :goto_2

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x0

    .line 98
    const/4 v1, 0x1

    const v2, 0x7f090b02

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 99
    .local v0, removeThisUser:Landroid/view/MenuItem;
    const v1, 0x7f0200e9

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 100
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 102
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 103
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 107
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 108
    .local v0, itemId:I
    if-ne v0, v1, :cond_0

    .line 109
    iget v2, p0, Lcom/android/settings/users/UserOptions;->user_id:I

    invoke-direct {p0, v2}, Lcom/android/settings/users/UserOptions;->onRemoveUserClicked(I)V

    .line 112
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 161
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, key:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/users/UserOptions;->KEY_MOBILE_DATA:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/android/settings/users/UserOptions;->mMobiledata:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    iget-object v1, p0, Lcom/android/settings/users/UserOptions;->mMobiledata:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/users/UserOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "user_dependent_mobile_settings"

    iget v3, p0, Lcom/android/settings/users/UserOptions;->user_id:I

    invoke-static {v1, v2, v5, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 171
    :cond_0
    :goto_0
    return v4

    .line 167
    :cond_1
    iget-object v1, p0, Lcom/android/settings/users/UserOptions;->mMobiledata:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/users/UserOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "user_dependent_mobile_settings"

    iget v3, p0, Lcom/android/settings/users/UserOptions;->user_id:I

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method
