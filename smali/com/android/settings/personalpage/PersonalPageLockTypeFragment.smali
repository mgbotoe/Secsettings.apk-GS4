.class public Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PersonalPageLockTypeFragment.java"


# instance fields
.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockTypePassword:Landroid/preference/Preference;

.field private mLockTypePattern:Landroid/preference/Preference;

.field private mLockTypePin:Landroid/preference/Preference;

.field private mLockTypeSignature:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private StartChooseLockPassword(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x4

    const/4 v6, 0x0

    .line 154
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 156
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v1

    .line 157
    if-ge v1, v2, :cond_0

    move v1, v2

    .line 160
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v0

    .line 161
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    .line 162
    const-string v4, "lockscreen.password_type"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 163
    const-string v4, "lockscreen.password_min"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 164
    const-string v1, "lockscreen.password_max"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 165
    const-string v0, "confirm_credentials"

    invoke-virtual {v3, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 166
    const-string v0, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v3, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 167
    const-string v0, "lockscreen.signature_fallback"

    invoke-virtual {v3, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 168
    const-string v0, "Block"

    invoke-virtual {v3, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 170
    const/high16 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 v2, 0x3

    :cond_1
    invoke-virtual {p0, v3, v2}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 172
    return-void
.end method

.method private confirmPassword(III)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 134
    if-ne p1, v0, :cond_0

    .line 135
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->savedSignatureExists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    const/4 v0, 0x0

    .line 148
    :goto_0
    return v0

    .line 144
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 145
    const-string v2, "request_quality"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0, v1, p3}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private confirmPattern(I)Z
    .locals 3
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->savedPersonalModePatternExists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    const/4 v0, 0x0

    .line 130
    :goto_0
    return v0

    .line 123
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 128
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 130
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private verifySecuredLock()V
    .locals 5

    .prologue
    const/16 v4, 0xb

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "personal_mode_lock_type"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 101
    .local v0, LockType:I
    packed-switch v0, :pswitch_data_0

    .line 115
    :goto_0
    return-void

    .line 103
    :pswitch_0
    invoke-direct {p0, v4}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->confirmPattern(I)Z

    goto :goto_0

    .line 106
    :pswitch_1
    const v1, 0x9000

    invoke-direct {p0, v0, v1, v4}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->confirmPassword(III)Z

    goto :goto_0

    .line 109
    :pswitch_2
    const/high16 v1, 0x2

    invoke-direct {p0, v0, v1, v4}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->confirmPassword(III)Z

    goto :goto_0

    .line 112
    :pswitch_3
    const/high16 v1, 0x4

    invoke-direct {p0, v0, v1, v4}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->confirmPassword(III)Z

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public initPref()V
    .locals 2

    .prologue
    .line 86
    const-string v0, "personalpage_locktype_signature"

    invoke-virtual {p0, v0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeSignature:Landroid/preference/Preference;

    .line 87
    const-string v0, "personalpage_locktype_pattern"

    invoke-virtual {p0, v0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypePattern:Landroid/preference/Preference;

    .line 88
    const-string v0, "personalpage_locktype_pin"

    invoke-virtual {p0, v0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypePin:Landroid/preference/Preference;

    .line 89
    const-string v0, "personalpage_locktype_password"

    invoke-virtual {p0, v0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypePassword:Landroid/preference/Preference;

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeSignature:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 95
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 199
    const-string v2, "PersonalPageLockTypeFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", received - resultCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity;

    .line 201
    .local v1, preferenceActivity:Landroid/preference/PreferenceActivity;
    const/4 v0, 0x0

    .line 203
    .local v0, bSuccess:I
    packed-switch p1, :pswitch_data_0

    .line 239
    :goto_0
    :pswitch_0
    return-void

    .line 205
    :pswitch_1
    if-lez p2, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "personal_mode_lock_type"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 207
    const/4 v0, 0x1

    .line 209
    :cond_0
    invoke-virtual {v1, v5, v0, v5}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_0

    .line 212
    :pswitch_2
    if-lez p2, :cond_1

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "personal_mode_lock_type"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 214
    const/4 v0, 0x1

    .line 216
    :cond_1
    invoke-virtual {v1, v5, v0, v5}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_0

    .line 220
    :pswitch_3
    if-eqz p2, :cond_2

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "personal_mode_lock_type"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 222
    const/4 v0, 0x1

    .line 225
    :cond_2
    invoke-virtual {v1, v5, v0, v5}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_0

    .line 228
    :pswitch_4
    if-eqz p2, :cond_3

    .line 229
    const-string v2, "PersonalPageLockTypeFragment"

    const-string v3, "CONFIRM_REQUEST_ENTER success"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 231
    :cond_3
    const-string v2, "PersonalPageLockTypeFragment"

    const-string v3, "Failed to CONFIRM_REQUEST_ENTER"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v0, -0x1

    .line 233
    invoke-virtual {v1, v5, v0, v5}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_0

    .line 203
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 54
    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->verifySecuredLock()V

    .line 55
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 59
    const v1, 0x7f040106

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, view:Landroid/view/View;
    const v1, 0x7f070072

    invoke-virtual {p0, v1}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->addPreferencesFromResource(I)V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f09154a

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->initPref()V

    .line 64
    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 75
    const-string v0, "PersonalPageLockTypeFragment"

    const-string v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 77
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 178
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeSignature:Landroid/preference/Preference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 180
    const-string v1, "com.sec.android.signaturelock"

    const-string v2, "com.sec.android.signaturelock.SetupSignature"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const-string v1, "fromPersonal"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 182
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 194
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypePattern:Landroid/preference/Preference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 184
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 185
    const-string v1, "key_lock_method"

    const-string v2, "pattern"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypePin:Landroid/preference/Preference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 188
    const/high16 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->StartChooseLockPassword(I)V

    goto :goto_0

    .line 189
    :cond_3
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypePassword:Landroid/preference/Preference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    const/high16 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->StartChooseLockPassword(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 69
    const-string v0, "PersonalPageLockTypeFragment"

    const-string v1, "onResume() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 71
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 82
    const-string v0, "PersonalPageLockTypeFragment"

    const-string v1, "onStop() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void
.end method
