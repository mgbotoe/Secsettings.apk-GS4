.class public Lcom/android/settings/PersonalPageDisclaimer;
.super Landroid/app/Activity;
.source "PersonalPageDisclaimer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private bDonotShow:Ljava/lang/Boolean;

.field private bSwitchon:Ljava/lang/Boolean;

.field private mConfirm:Landroid/widget/Button;

.field private mDoNotShowCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private requestSignatureRegisteration()V
    .locals 3

    .prologue
    .line 132
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 133
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.sec.android.signaturelock"

    const-string v2, "com.sec.android.signaturelock.SetupSignature"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/PersonalPageDisclaimer;->startActivityForResult(Landroid/content/Intent;I)V

    .line 135
    return-void
.end method

.method private sendVeificationRequest(Z)V
    .locals 6
    .parameter "bCheck"

    .prologue
    const/4 v2, 0x0

    .line 111
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 114
    .local v0, bCheckSignature:Ljava/lang/Boolean;
    iget-object v3, p0, Lcom/android/settings/PersonalPageDisclaimer;->bSwitchon:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 115
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 117
    :cond_0
    const-string v3, "PersonalPageDisclaimer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendVerificationRequest with bCheck: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", bSwitchon :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/PersonalPageDisclaimer;->bSwitchon:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", so bCheckSignature"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.android.secretmode.action.SHOW_SIGNATURE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.samsung.android.secretmode.service"

    const-string v4, "com.samsung.android.secretmode.service.SecretModeService"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    invoke-static {}, Lcom/android/settings/Utils;->isLockTypeEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 123
    const-string v3, "without_verify"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 128
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/PersonalPageDisclaimer;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 129
    return-void

    .line 125
    :cond_2
    const-string v2, "check_signature"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 139
    if-lez p2, :cond_1

    .line 140
    const-string v0, "PersonalPageDisclaimer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult - resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/android/settings/PersonalPageDisclaimer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->savedSignatureExists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const-string v0, "PersonalPageDisclaimer"

    const-string v1, "request verify without checking"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/PersonalPageDisclaimer;->sendVeificationRequest(Z)V

    .line 152
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/PersonalPageDisclaimer;->finish()V

    .line 153
    return-void

    .line 146
    :cond_0
    const-string v0, "PersonalPageDisclaimer"

    const-string v1, "no signature is defined --"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 149
    :cond_1
    const-string v0, "PersonalPageDisclaimer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult canceled by user - resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, 0x1

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 108
    :goto_0
    return-void

    .line 82
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/PersonalPageDisclaimer;->mDoNotShowCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/android/settings/PersonalPageDisclaimer;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 84
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_pp_disclaimer_noti"

    iget-object v2, p0, Lcom/android/settings/PersonalPageDisclaimer;->mDoNotShowCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 86
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 89
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isLockTypeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    const-string v1, "PersonalPageDisclaimer"

    const-string v2, "request verify"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-direct {p0, v3}, Lcom/android/settings/PersonalPageDisclaimer;->sendVeificationRequest(Z)V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/PersonalPageDisclaimer;->finish()V

    goto :goto_0

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/android/settings/PersonalPageDisclaimer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->savedSignatureExists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 97
    const-string v1, "PersonalPageDisclaimer"

    const-string v2, "already have a signature, so request verify"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-direct {p0, v3}, Lcom/android/settings/PersonalPageDisclaimer;->sendVeificationRequest(Z)V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/PersonalPageDisclaimer;->finish()V

    goto :goto_0

    .line 102
    :cond_2
    const-string v1, "PersonalPageDisclaimer"

    const-string v2, "no signature, request register and wait response"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-direct {p0}, Lcom/android/settings/PersonalPageDisclaimer;->requestSignatureRegisteration()V

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x7f0b02cd
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/PersonalPageDisclaimer;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "donotshow"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/android/settings/PersonalPageDisclaimer;->bDonotShow:Ljava/lang/Boolean;

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/PersonalPageDisclaimer;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "switchon"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/android/settings/PersonalPageDisclaimer;->bSwitchon:Ljava/lang/Boolean;

    .line 45
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/PersonalPageDisclaimer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 46
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/PersonalPageDisclaimer;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 47
    iget-object v1, p0, Lcom/android/settings/PersonalPageDisclaimer;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "pref_pp_disclaimer_noti"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 49
    .local v0, do_not_show_again:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/settings/PersonalPageDisclaimer;->bDonotShow:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v4, :cond_3

    .line 51
    :cond_0
    const-string v1, "PersonalPageDisclaimer"

    const-string v2, "do_not_show_again is checked"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-static {}, Lcom/android/settings/Utils;->isLockTypeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    const-string v1, "PersonalPageDisclaimer"

    const-string v2, "request verify"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-direct {p0, v4}, Lcom/android/settings/PersonalPageDisclaimer;->sendVeificationRequest(Z)V

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/PersonalPageDisclaimer;->finish()V

    .line 75
    :goto_0
    return-void

    .line 60
    :cond_1
    iget-object v1, p0, Lcom/android/settings/PersonalPageDisclaimer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->savedSignatureExists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    const-string v1, "PersonalPageDisclaimer"

    const-string v2, "already have a signature, so request verify"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-direct {p0, v4}, Lcom/android/settings/PersonalPageDisclaimer;->sendVeificationRequest(Z)V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/PersonalPageDisclaimer;->finish()V

    goto :goto_0

    .line 65
    :cond_2
    const-string v1, "PersonalPageDisclaimer"

    const-string v2, "no signature, request register and wait response"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-direct {p0}, Lcom/android/settings/PersonalPageDisclaimer;->requestSignatureRegisteration()V

    goto :goto_0

    .line 70
    :cond_3
    const v1, 0x7f040105

    invoke-virtual {p0, v1}, Lcom/android/settings/PersonalPageDisclaimer;->setContentView(I)V

    .line 71
    const v1, 0x7f0b02cc

    invoke-virtual {p0, v1}, Lcom/android/settings/PersonalPageDisclaimer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v1, p0, Lcom/android/settings/PersonalPageDisclaimer;->mDoNotShowCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 72
    const v1, 0x7f0b02cd

    invoke-virtual {p0, v1}, Lcom/android/settings/PersonalPageDisclaimer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/PersonalPageDisclaimer;->mConfirm:Landroid/widget/Button;

    .line 73
    iget-object v1, p0, Lcom/android/settings/PersonalPageDisclaimer;->mConfirm:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
