.class public Lcom/android/settings/nfc/SBeam;
.super Landroid/app/Fragment;
.source "SBeam.java"


# instance fields
.field private mActionSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mEnabler:Lcom/android/settings/nfc/SBeamEnabler;

.field private mExplainImageView:Landroid/widget/ImageView;

.field private mExplainTextView:Landroid/widget/TextView;

.field private mHelpCtrl:Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;

.field private mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

.field private mbShowingHelp:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 69
    iput-object v0, p0, Lcom/android/settings/nfc/SBeam;->mEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    .line 71
    iput-object v0, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    .line 73
    iput-object v0, p0, Lcom/android/settings/nfc/SBeam;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 75
    iput-object v0, p0, Lcom/android/settings/nfc/SBeam;->mHelpCtrl:Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/nfc/SBeam;->mbShowingHelp:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/nfc/SBeam;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/settings/nfc/SBeam;->mbShowingHelp:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/nfc/SBeam;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/settings/nfc/SBeam;->mbShowingHelp:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/nfc/SBeam;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings/nfc/SBeam;->createHelpDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/nfc/SBeam;)Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/nfc/SBeam;Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;)Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/settings/nfc/SBeam;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    return-object p1
.end method

.method private createHelpDialog()V
    .locals 4

    .prologue
    .line 259
    new-instance v1, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    iget-object v2, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/nfc/SBeam;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 262
    invoke-virtual {p0}, Lcom/android/settings/nfc/SBeam;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400a0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 264
    .local v0, v:Landroid/view/View;
    iget-object v1, p0, Lcom/android/settings/nfc/SBeam;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1, v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setContentView(Landroid/view/View;)V

    .line 265
    iget-object v1, p0, Lcom/android/settings/nfc/SBeam;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    sget-object v2, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 266
    iget-object v1, p0, Lcom/android/settings/nfc/SBeam;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setShowWrongInputToast(Z)V

    .line 267
    iget-object v1, p0, Lcom/android/settings/nfc/SBeam;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    iget-object v2, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 268
    return-void
.end method


# virtual methods
.method public isHelp()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 273
    iget-object v6, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 274
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "easy_mode_switch"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_1

    move v3, v5

    .line 276
    .local v3, mState:Z
    :goto_0
    if-eqz v3, :cond_2

    .line 290
    :cond_0
    :goto_1
    return v4

    .end local v3           #mState:Z
    :cond_1
    move v3, v4

    .line 274
    goto :goto_0

    .line 282
    .restart local v3       #mState:Z
    :cond_2
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.samsung.helphub"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 283
    .local v2, info:Landroid/content/pm/PackageInfo;
    iget v6, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    move v4, v5

    .line 284
    goto :goto_1

    .line 286
    .end local v2           #info:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 287
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 188
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 190
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    .line 193
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/16 v7, 0x10

    const/4 v10, -0x2

    const/4 v9, 0x0

    .line 87
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/nfc/SBeam;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    .line 90
    iget-object v5, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 92
    .local v1, context:Landroid/content/Context;
    new-instance v5, Landroid/widget/Switch;

    iget-object v6, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/nfc/SBeam;->mActionSwitch:Landroid/widget/Switch;

    .line 94
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/nfc/SBeam;->isHelp()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 97
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/settings/nfc/SBeam;->setHasOptionsMenu(Z)V

    .line 101
    :cond_0
    iget-object v5, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    instance-of v5, v5, Landroid/preference/PreferenceActivity;

    if-eqz v5, :cond_2

    .line 102
    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    check-cast v4, Landroid/preference/PreferenceActivity;

    .line 104
    .local v4, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v5

    if-nez v5, :cond_2

    .line 106
    :cond_1
    iget-object v5, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f001b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 108
    .local v3, padding:I
    iget-object v5, p0, Lcom/android/settings/nfc/SBeam;->mActionSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v9, v9, v3, v9}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 109
    iget-object v5, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 111
    iget-object v5, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/nfc/SBeam;->mActionSwitch:Landroid/widget/Switch;

    new-instance v7, Landroid/app/ActionBar$LayoutParams;

    const/16 v8, 0x15

    invoke-direct {v7, v10, v10, v8}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v6, v7}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 116
    iget-object v5, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    const v6, 0x7f0902b1

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setTitle(I)V

    .line 120
    .end local v3           #padding:I
    .end local v4           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_2
    iget-object v5, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 121
    .local v2, intent:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 123
    .local v0, bHelpMode:Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 125
    if-eqz v2, :cond_3

    .line 126
    const-string v5, "fromHelp"

    invoke-virtual {v2, v5, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 127
    if-eqz v0, :cond_3

    .line 128
    new-instance v5, Lcom/android/settings/nfc/SBeam$1;

    invoke-direct {v5, p0}, Lcom/android/settings/nfc/SBeam$1;-><init>(Lcom/android/settings/nfc/SBeam;)V

    iput-object v5, p0, Lcom/android/settings/nfc/SBeam;->mHelpCtrl:Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;

    .line 145
    invoke-virtual {p0, v9}, Lcom/android/settings/nfc/SBeam;->setHasOptionsMenu(Z)V

    .line 150
    :cond_3
    new-instance v5, Lcom/android/settings/nfc/SBeamEnabler;

    iget-object v6, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/android/settings/nfc/SBeam;->mActionSwitch:Landroid/widget/Switch;

    iget-object v8, p0, Lcom/android/settings/nfc/SBeam;->mHelpCtrl:Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;

    invoke-direct {v5, v6, v7, v8}, Lcom/android/settings/nfc/SBeamEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;)V

    iput-object v5, p0, Lcom/android/settings/nfc/SBeam;->mEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    .line 151
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 219
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/nfc/SBeam;->isHelp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    const/4 v0, 0x1

    const v1, 0x7f090b11

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200d3

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 226
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 155
    const v4, 0x7f04015b

    invoke-virtual {p1, v4, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 157
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.sec.android.app.snotebook"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 159
    .local v2, i:Landroid/content/Intent;
    if-nez v2, :cond_0

    .line 160
    const v4, 0x7f0b03b8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/nfc/SBeam;->mExplainTextView:Landroid/widget/TextView;

    .line 161
    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mExplainTextView:Landroid/widget/TextView;

    const v5, 0x7f0902b7

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 164
    :cond_0
    const v4, 0x7f0b03b9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/settings/nfc/SBeam;->mExplainImageView:Landroid/widget/ImageView;

    .line 165
    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mExplainImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mExplainImageView:Landroid/widget/ImageView;

    const v5, 0x7f050009

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 168
    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mExplainImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 169
    .local v1, frameAnim:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 171
    if-eqz p3, :cond_1

    .line 172
    const-string v4, "FOCUS"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, focusPosition:Ljava/lang/String;
    const-string v4, "IMG"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mExplainImageView:Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    .line 174
    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mExplainImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->requestFocus()Z

    .line 181
    .end local v0           #focusPosition:Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual {v3, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 182
    return-object v3

    .line 175
    .restart local v0       #focusPosition:Ljava/lang/String;
    :cond_2
    const-string v4, "TEXT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mExplainTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    .line 176
    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mExplainTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->requestFocus()Z

    goto :goto_0

    .line 177
    :cond_3
    const-string v4, "SWITCH"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mActionSwitch:Landroid/widget/Switch;

    if-eqz v4, :cond_1

    .line 178
    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mActionSwitch:Landroid/widget/Switch;

    invoke-virtual {v4}, Landroid/widget/Switch;->requestFocus()Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 209
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 215
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 230
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 242
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 232
    :pswitch_0
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/nfc/SBeam;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.samsung.helpplugin"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 234
    const-string v2, "default"

    invoke-virtual {p0}, Lcom/android/settings/nfc/SBeam;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 237
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.helphub.HELP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 238
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "helphub:section"

    const-string v3, "nfc"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/SBeam;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 203
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 204
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/SBeamEnabler;->procOnPause()V

    .line 205
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 197
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 198
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/SBeamEnabler;->procOnResume()V

    .line 199
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 249
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 250
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mExplainImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mExplainImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    const-string v0, "FOCUS"

    const-string v1, "IMG"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mExplainTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mExplainTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 253
    const-string v0, "FOCUS"

    const-string v1, "TEXT"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 254
    :cond_2
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mActionSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mActionSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    const-string v0, "FOCUS"

    const-string v1, "SWITCH"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
