.class public Lcom/android/settings/personalpage/PersonalPageSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PersonalPageSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mChangeSignaturePref:Landroid/preference/Preference;

.field private mContext:Landroid/content/Context;

.field private mFilter:Landroid/content/IntentFilter;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockTypePref:Landroid/preference/Preference;

.field private mPersonalPageEnabler:Lcom/android/settings/personalpage/PersonalPageEnabler;

.field private final mPersonalPageObserver:Landroid/database/ContentObserver;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 63
    new-instance v0, Lcom/android/settings/personalpage/PersonalPageSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/personalpage/PersonalPageSettings$1;-><init>(Lcom/android/settings/personalpage/PersonalPageSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mPersonalPageObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/personalpage/PersonalPageSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/settings/personalpage/PersonalPageSettings;->callLockType(I)V

    return-void
.end method

.method private callLockType(I)V
    .locals 7
    .parameter

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 251
    const-class v1, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x7f09154a

    const/4 v4, 0x0

    move-object v5, p0

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 253
    return-void
.end method

.method private requestSecretBoxVerify(Ljava/lang/Boolean;)V
    .locals 7
    .parameter "bCheck"

    .prologue
    const/4 v3, 0x0

    .line 298
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "personal_mode_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 300
    .local v0, State:I
    move-object v1, p1

    .line 303
    .local v1, bCheckSignature:Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 304
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 306
    :cond_0
    const-string v4, "PersonalPageSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendVerificationRequest with bCheck: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", State :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", so bCheckSignature"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.samsung.android.secretmode.action.SHOW_SIGNATURE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 309
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "com.samsung.android.secretmode.service"

    const-string v5, "com.samsung.android.secretmode.service.SecretModeService"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    invoke-static {}, Lcom/android/settings/Utils;->isLockTypeEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 311
    const-string v4, "without_verify"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 315
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 316
    return-void

    .line 313
    :cond_2
    const-string v3, "check_signature"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method initPersonalPageswitchBtn()V
    .locals 9

    .prologue
    const/16 v5, 0x10

    const/4 v8, -0x2

    const/4 v7, 0x0

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 223
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 225
    instance-of v3, v0, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_1

    move-object v2, v0

    .line 226
    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 227
    .local v2, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-nez v3, :cond_1

    .line 228
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 230
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v7, v7, v1, v7}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 231
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 233
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v8, v8, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 238
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mActionBarLayout:Landroid/view/View;

    .line 241
    .end local v1           #padding:I
    .end local v2           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    new-instance v3, Lcom/android/settings/personalpage/PersonalPageEnabler;

    iget-object v4, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v3, v0, v4, v7}, Lcom/android/settings/personalpage/PersonalPageEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;Z)V

    iput-object v3, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mPersonalPageEnabler:Lcom/android/settings/personalpage/PersonalPageEnabler;

    .line 245
    return-void
.end method

.method public initPref()V
    .locals 2

    .prologue
    .line 155
    const-string v0, "personalpage_lock_type"

    invoke-virtual {p0, v0}, Lcom/android/settings/personalpage/PersonalPageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLockTypePref:Landroid/preference/Preference;

    .line 156
    const-string v0, "personalpage_change_signature"

    invoke-virtual {p0, v0}, Lcom/android/settings/personalpage/PersonalPageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mChangeSignaturePref:Landroid/preference/Preference;

    .line 157
    invoke-static {}, Lcom/android/settings/Utils;->isLockTypeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mChangeSignaturePref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLockTypePref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 320
    sparse-switch p1, :sswitch_data_0

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 322
    :sswitch_0
    const-string v0, "PersonalPageSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REQUEST_CODE_LOCK_TYPE_QUIT received - resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    if-lez p2, :cond_1

    .line 325
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/personalpage/PersonalPageSettings;->requestSecretBoxVerify(Ljava/lang/Boolean;)V

    .line 327
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->finish()V

    goto :goto_0

    .line 330
    :sswitch_1
    const-string v0, "PersonalPageSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REQUEST_CODE_LOCK_TYPE_BY_SWITCH received - resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    if-lez p2, :cond_0

    .line 333
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/personalpage/PersonalPageSettings;->requestSecretBoxVerify(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 337
    :sswitch_2
    const-string v0, "PersonalPageSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REQUEST_CODE_LOCK_TYPE_CHANGE received - resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 340
    :sswitch_3
    const-string v0, "PersonalPageSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REQUEST_CODE_REGISTER received - resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    if-lez p2, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->savedSignatureExists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 343
    const-string v0, "PersonalPageSettings"

    const-string v1, "request verify after first register without checking"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/personalpage/PersonalPageSettings;->requestSecretBoxVerify(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 346
    :cond_2
    const-string v0, "PersonalPageSettings"

    const-string v1, "no signature is defined --"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 351
    :sswitch_4
    const-string v0, "PersonalPageSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REQUEST_CODE_CHANGE_CURRENT_ON received - resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 354
    :sswitch_5
    const-string v0, "PersonalPageSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REQUEST_CODE_CHANGE_CURRENT_OFF received - resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    if-lez p2, :cond_0

    .line 357
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->savedSignatureExists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 358
    const-string v0, "PersonalPageSettings"

    const-string v1, "request verify without checking"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/personalpage/PersonalPageSettings;->requestSecretBoxVerify(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 361
    :cond_3
    const-string v0, "PersonalPageSettings"

    const-string v1, "no signature is defined --"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 320
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0xd3 -> :sswitch_3
        0x13f -> :sswitch_5
        0x140 -> :sswitch_4
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "to_select_unlock_type"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 78
    .local v0, bToLockType:Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 80
    const/16 v1, 0x64

    invoke-direct {p0, v1}, Lcom/android/settings/personalpage/PersonalPageSettings;->callLockType(I)V

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mContext:Landroid/content/Context;

    .line 85
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mFilter:Landroid/content/IntentFilter;

    .line 86
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "android.settings.PERSONALPAGE_ACTIVITY_LAUNCH"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "android.settings.PERSONALPAGE_ACTIVITY_LOCKTYPE_LAUNCH"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    new-instance v1, Lcom/android/settings/personalpage/PersonalPageSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/personalpage/PersonalPageSettings$2;-><init>(Lcom/android/settings/personalpage/PersonalPageSettings;)V

    iput-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 100
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 104
    const v1, 0x7f040107

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 105
    .local v0, view:Landroid/view/View;
    const v1, 0x7f070071

    invoke-virtual {p0, v1}, Lcom/android/settings/personalpage/PersonalPageSettings;->addPreferencesFromResource(I)V

    .line 107
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->initPersonalPageswitchBtn()V

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->initPref()V

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->updatePersonalPagepage()V

    .line 112
    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 135
    const-string v0, "PersonalPageSettings"

    const-string v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 137
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 138
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mPersonalPageEnabler:Lcom/android/settings/personalpage/PersonalPageEnabler;

    invoke-virtual {v0}, Lcom/android/settings/personalpage/PersonalPageEnabler;->pause()V

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mPersonalPageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 140
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 293
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, key:Ljava/lang/String;
    const/4 v1, 0x0

    return v1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 258
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 259
    iget-boolean v6, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v6, :cond_0

    .line 260
    sget v6, Lcom/android/settings/personalpage/PersonalPageSettings;->mSettingValue:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 261
    sget v6, Lcom/android/settings/personalpage/PersonalPageSettings;->mSettingValue:I

    if-ne v6, v4, :cond_3

    move v3, v4

    .local v3, value:Z
    :goto_0
    move-object v2, p2

    .line 262
    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 263
    .local v2, checkBoxStatePreference:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 264
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 270
    .end local v2           #checkBoxStatePreference:Landroid/preference/CheckBoxPreference;
    .end local v3           #value:Z
    :cond_0
    iget-object v6, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLockTypePref:Landroid/preference/Preference;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 271
    const/16 v6, 0x66

    invoke-direct {p0, v6}, Lcom/android/settings/personalpage/PersonalPageSettings;->callLockType(I)V

    .line 276
    :cond_1
    iget-object v6, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mChangeSignaturePref:Landroid/preference/Preference;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 277
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "personal_mode_enabled"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 280
    .local v0, State:I
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 281
    .local v1, cIntent:Landroid/content/Intent;
    const-string v5, "com.sec.android.signaturelock"

    const-string v6, "com.sec.android.signaturelock.SetupSignature"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    const-string v5, "fromPersonal"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 283
    if-nez v0, :cond_4

    const/16 v4, 0x13f

    :goto_1
    invoke-virtual {p0, v1, v4}, Lcom/android/settings/personalpage/PersonalPageSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 287
    .end local v0           #State:I
    .end local v1           #cIntent:Landroid/content/Intent;
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    return v4

    :cond_3
    move v3, v5

    .line 261
    goto :goto_0

    .line 283
    .restart local v0       #State:I
    .restart local v1       #cIntent:Landroid/content/Intent;
    :cond_4
    const/16 v4, 0x140

    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 118
    const-string v0, "PersonalPageSettings"

    const-string v1, "onResume() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 120
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "personal_mode_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mPersonalPageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->updatePersonalPagepage()V

    .line 130
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mPersonalPageEnabler:Lcom/android/settings/personalpage/PersonalPageEnabler;

    invoke-virtual {v0}, Lcom/android/settings/personalpage/PersonalPageEnabler;->resume()V

    .line 131
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 144
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 145
    const-string v0, "PersonalPageSettings"

    const-string v1, "onStop() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 152
    :cond_0
    return-void
.end method

.method updateLockTypeSummary()V
    .locals 4

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "personal_mode_lock_type"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 201
    .local v0, LockType:I
    packed-switch v0, :pswitch_data_0

    .line 219
    :goto_0
    return-void

    .line 203
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLockTypePref:Landroid/preference/Preference;

    const v2, 0x7f091548

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 206
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLockTypePref:Landroid/preference/Preference;

    const v2, 0x7f091549

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 209
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLockTypePref:Landroid/preference/Preference;

    const v2, 0x7f09020e

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 212
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLockTypePref:Landroid/preference/Preference;

    const v2, 0x7f09020f

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 215
    :pswitch_4
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLockTypePref:Landroid/preference/Preference;

    const v2, 0x7f090211

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 201
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method updatePersonalPagepage()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "personal_mode_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 167
    .local v0, State:I
    invoke-static {}, Lcom/android/settings/Utils;->isLockTypeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    if-nez v0, :cond_0

    .line 169
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLockTypePref:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 187
    :goto_0
    if-nez v0, :cond_4

    .line 188
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 193
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->updateLockTypeSummary()V

    .line 195
    return-void

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLockTypePref:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 174
    :cond_1
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->savedSignatureExists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mChangeSignaturePref:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 176
    if-nez v0, :cond_2

    .line 178
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mChangeSignaturePref:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 180
    :cond_2
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mChangeSignaturePref:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 183
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mChangeSignaturePref:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 190
    :cond_4
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1
.end method
