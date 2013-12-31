.class public Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;
.super Landroid/app/Fragment;
.source "PersonalPageConfirmLockPassword.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLockPasswordFragment"
.end annotation


# instance fields
.field private mContinueButton:Landroid/widget/Button;

.field private mDialog:Landroid/app/ProgressDialog;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOrientation:I

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mRequestedQuality:I

.field private mforLockPatternBackupPin:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mHandler:Landroid/os/Handler;

    .line 85
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mforLockPatternBackupPin:Ljava/lang/Boolean;

    .line 88
    iput v1, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mOrientation:I

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method private handleNext()V
    .locals 5

    .prologue
    .line 224
    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, pin:Ljava/lang/String;
    const/4 v2, 0x0

    .line 229
    .local v2, status:Z
    iget v3, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mRequestedQuality:I

    const v4, 0x9000

    if-ne v3, v4, :cond_0

    .line 230
    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->checkSignatureBackupPin(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 231
    const/4 v2, 0x1

    .line 235
    :cond_0
    const-string v3, "PersonalPageConfirmLockPassword"

    const-string v4, "check"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget v3, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mRequestedQuality:I

    const/high16 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 239
    const-string v3, "PersonalPageConfirmLockPassword"

    const-string v4, "check PIN for PersonalPage"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mforLockPatternBackupPin:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 241
    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->checkPersonalModeLockBackupPin(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 242
    const/4 v2, 0x1

    .line 252
    :cond_1
    :goto_0
    iget v3, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mRequestedQuality:I

    const/high16 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 253
    const-string v3, "PersonalPageConfirmLockPassword"

    const-string v4, "check Password for PersonalPage"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->checkPersonalModeLockPassword(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 255
    const/4 v2, 0x1

    .line 259
    :cond_2
    if-eqz v2, :cond_4

    .line 260
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 261
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "password"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 271
    .end local v0           #intent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 245
    :cond_3
    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->checkPersonalModeLockPin(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 246
    const/4 v2, 0x1

    goto :goto_0

    .line 267
    :cond_4
    const v3, 0x7f0906eb

    invoke-direct {p0, v3}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->showError(I)V

    goto :goto_1
.end method

.method private showError(I)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 289
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment$1;-><init>(Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 297
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 323
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 324
    return-void

    .line 323
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 315
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 275
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 285
    :goto_0
    return-void

    .line 277
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->handleNext()V

    goto :goto_0

    .line 281
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 282
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 275
    :pswitch_data_0
    .packed-switch 0x7f0b007e
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-super {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "request_quality"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mRequestedQuality:I

    .line 100
    invoke-super {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "forLockPatternBackupPin"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 101
    .local v0, LockPatternBackupPin:Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 102
    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mforLockPatternBackupPin:Ljava/lang/Boolean;

    .line 105
    :cond_0
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 106
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->initializeCACAuthentication()V

    .line 107
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 112
    iget v5, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mRequestedQuality:I

    .line 113
    .local v5, storedQuality:I
    const v8, 0x7f04003f

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 116
    .local v7, view:Landroid/view/View;
    const v8, 0x7f0b007e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const v8, 0x7f0b007f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    .line 118
    iget-object v8, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v8, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 121
    const v8, 0x7f0b0097

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    .line 122
    iget-object v8, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 123
    iget-object v8, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 124
    iget-object v8, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/high16 v9, 0x200

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 126
    const v8, 0x7f0b0099

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v8, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    .line 127
    const v8, 0x7f0b007c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    .line 128
    const/high16 v8, 0x4

    if-eq v8, v5, :cond_0

    const/high16 v8, 0x5

    if-eq v8, v5, :cond_0

    const/high16 v8, 0x6

    if-ne v8, v5, :cond_5

    :cond_0
    const/4 v3, 0x1

    .line 133
    .local v3, isAlpha:Z
    :goto_0
    new-instance v8, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mDialog:Landroid/app/ProgressDialog;

    .line 135
    iget-object v9, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    if-eqz v3, :cond_6

    const v8, 0x7f0906dd

    :goto_1
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(I)V

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 139
    .local v0, activity:Landroid/app/Activity;
    new-instance v8, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v9, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iget-object v10, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v8, v0, v9, v10}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v8, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 141
    iget-object v9, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    if-eqz v3, :cond_7

    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v9, v8}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 144
    iget-object v8, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v8}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->requestFocus()Z

    .line 146
    iget-object v8, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    .line 147
    .local v1, currentType:I
    iget-object v8, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    if-eqz v3, :cond_8

    .end local v1           #currentType:I
    :goto_3
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 151
    instance-of v8, v0, Landroid/preference/PreferenceActivity;

    if-eqz v8, :cond_1

    move-object v4, v0

    .line 152
    check-cast v4, Landroid/preference/PreferenceActivity;

    .line 154
    .local v4, preferenceActivity:Landroid/preference/PreferenceActivity;
    iget-object v8, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->isCACPasswordEnabled()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 155
    const v2, 0x7f0901ff

    .line 163
    .local v2, id:I
    :goto_4
    invoke-virtual {p0, v2}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 164
    .local v6, title:Ljava/lang/CharSequence;
    invoke-virtual {v4, v6, v6}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 167
    .end local v2           #id:I
    .end local v4           #preferenceActivity:Landroid/preference/PreferenceActivity;
    .end local v6           #title:Ljava/lang/CharSequence;
    :cond_1
    if-nez p3, :cond_4

    .line 173
    iget v8, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mRequestedQuality:I

    const v9, 0x9000

    if-ne v8, v9, :cond_2

    .line 174
    iget-object v8, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->savedSignatureExists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/app/Activity;->setResult(I)V

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->finish()V

    .line 180
    :cond_2
    iget v8, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mRequestedQuality:I

    const/high16 v9, 0x2

    if-ne v8, v9, :cond_3

    .line 182
    iget-object v8, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mforLockPatternBackupPin:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 184
    iget-object v8, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->savedPersonalModeBackupPinExists()Z

    move-result v8

    if-nez v8, :cond_3

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/app/Activity;->setResult(I)V

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->finish()V

    .line 197
    :cond_3
    :goto_5
    iget v8, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mRequestedQuality:I

    const/high16 v9, 0x4

    if-ne v8, v9, :cond_4

    .line 198
    iget-object v8, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->savedPersonalModePasswordExists()Z

    move-result v8

    if-nez v8, :cond_4

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/app/Activity;->setResult(I)V

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->finish()V

    .line 206
    :cond_4
    return-object v7

    .line 128
    .end local v0           #activity:Landroid/app/Activity;
    .end local v3           #isAlpha:Z
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 135
    .restart local v3       #isAlpha:Z
    :cond_6
    const v8, 0x7f0906df

    goto/16 :goto_1

    .line 141
    .restart local v0       #activity:Landroid/app/Activity;
    :cond_7
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 147
    .restart local v1       #currentType:I
    :cond_8
    const/16 v1, 0x12

    goto/16 :goto_3

    .line 159
    .end local v1           #currentType:I
    .restart local v4       #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_9
    if-eqz v3, :cond_a

    const v2, 0x7f0906dd

    .restart local v2       #id:I
    :goto_6
    goto :goto_4

    .end local v2           #id:I
    :cond_a
    const v2, 0x7f0906df

    goto :goto_6

    .line 189
    .end local v4           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_b
    iget-object v8, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->savedPersonalModePinExists()Z

    move-result v8

    if-nez v8, :cond_3

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/app/Activity;->setResult(I)V

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->finish()V

    goto :goto_5
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 303
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 306
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->handleNext()V

    .line 307
    const/4 v0, 0x1

    .line 309
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 211
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 212
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->requestFocus()Z

    .line 213
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 218
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 219
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->requestFocus()Z

    .line 220
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 319
    return-void
.end method
