.class public final Lcom/android/settings/ChooseLockSettingsHelper;
.super Ljava/lang/Object;
.source "ChooseLockSettingsHelper.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mFragment:Landroid/app/Fragment;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    .line 36
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/app/Fragment;)V
    .locals 0
    .parameter "activity"
    .parameter "fragment"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 41
    iput-object p2, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    .line 42
    return-void
.end method

.method private confirmFingerprintPassword(I)Z
    .locals 3
    .parameter "request"

    .prologue
    .line 169
    iget-object v1, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockFingerprintEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 177
    :goto_0
    return v1

    .line 170
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 171
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.fingerprint.FingerprintConfirmPassword"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    iget-object v1, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_1

    .line 173
    iget-object v1, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v0, p1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 177
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 175
    :cond_1
    iget-object v1, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method private confirmPassword(II)Z
    .locals 3
    .parameter "quality"
    .parameter "request"

    .prologue
    const/4 v1, 0x0

    .line 137
    const/high16 v2, 0x9

    if-ne p1, v2, :cond_1

    .line 138
    iget-object v2, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 158
    :cond_0
    :goto_0
    return v1

    .line 141
    :cond_1
    const v2, 0x9000

    if-ne p1, v2, :cond_3

    .line 142
    iget-object v2, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->savedSignatureExists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 152
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.ConfirmLockPassword"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    iget-object v1, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_4

    .line 154
    iget-object v1, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v0, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 158
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 146
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v2, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 156
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_4
    iget-object v1, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method private confirmPattern(IILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 3
    .parameter "quality"
    .parameter "request"
    .parameter "message"
    .parameter "details"

    .prologue
    const/4 v1, 0x0

    .line 109
    const/high16 v2, 0x9

    if-ne p1, v2, :cond_1

    .line 110
    iget-object v2, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 128
    :cond_0
    :goto_0
    return v1

    .line 114
    :cond_1
    iget-object v2, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 120
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings.ConfirmLockPattern.header"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 121
    const-string v1, "com.android.settings.ConfirmLockPattern.footer"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 122
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.ConfirmLockPattern"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    iget-object v1, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_3

    .line 124
    iget-object v1, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v0, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 128
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 126
    :cond_3
    iget-object v1, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method


# virtual methods
.method public launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 3
    .parameter "request"
    .parameter "message"
    .parameter "details"

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 68
    .local v0, launched:Z
    iget-object v2, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    .line 70
    .local v1, quality:I
    sparse-switch v1, :sswitch_data_0

    .line 98
    :goto_0
    return v0

    .line 73
    :sswitch_0
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/settings/ChooseLockSettingsHelper;->confirmPattern(IILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 75
    goto :goto_0

    .line 77
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockSettingsHelper;->confirmFingerprintPassword(I)Z

    move-result v0

    .line 78
    goto :goto_0

    .line 81
    :sswitch_2
    iget-object v2, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/settings/ChooseLockSettingsHelper;->confirmPattern(IILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    .line 84
    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/android/settings/ChooseLockSettingsHelper;->confirmPassword(II)Z

    move-result v0

    .line 87
    goto :goto_0

    .line 95
    :sswitch_3
    invoke-direct {p0, v1, p1}, Lcom/android/settings/ChooseLockSettingsHelper;->confirmPassword(II)Z

    move-result v0

    goto :goto_0

    .line 70
    :sswitch_data_0
    .sparse-switch
        0x9000 -> :sswitch_3
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_3
        0x40000 -> :sswitch_3
        0x50000 -> :sswitch_3
        0x60000 -> :sswitch_3
        0x70000 -> :sswitch_3
        0x80000 -> :sswitch_1
        0x90000 -> :sswitch_2
    .end sparse-switch
.end method

.method public utils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method
