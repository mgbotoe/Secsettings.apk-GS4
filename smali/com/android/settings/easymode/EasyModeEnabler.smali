.class public Lcom/android/settings/easymode/EasyModeEnabler;
.super Ljava/lang/Object;
.source "EasyModeEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEasyModeObserver:Landroid/database/ContentObserver;

.field private mEnableEasyModeDialog:Landroid/app/AlertDialog;

.field private mHeader:Landroid/preference/PreferenceActivity$Header;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 3
    .parameter "context"
    .parameter "switch_"

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v2, p0, Lcom/android/settings/easymode/EasyModeEnabler;->mSwitch:Landroid/widget/Switch;

    .line 34
    iput-object v2, p0, Lcom/android/settings/easymode/EasyModeEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 36
    iput-object v2, p0, Lcom/android/settings/easymode/EasyModeEnabler;->mEnableEasyModeDialog:Landroid/app/AlertDialog;

    .line 38
    new-instance v0, Lcom/android/settings/easymode/EasyModeEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/easymode/EasyModeEnabler$1;-><init>(Lcom/android/settings/easymode/EasyModeEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeEnabler;->mEasyModeObserver:Landroid/database/ContentObserver;

    .line 47
    iput-object p1, p0, Lcom/android/settings/easymode/EasyModeEnabler;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/android/settings/easymode/EasyModeEnabler;->mSwitch:Landroid/widget/Switch;

    .line 49
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/easymode/EasyModeEnabler;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/easymode/EasyModeEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private dismissAllDialog()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeEnabler;->mEnableEasyModeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeEnabler;->mEnableEasyModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeEnabler;->mEnableEasyModeDialog:Landroid/app/AlertDialog;

    .line 156
    :cond_0
    return-void
.end method

.method private showEnableEasyModeDialog()V
    .locals 3

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/settings/easymode/EasyModeEnabler;->dismissAllDialog()V

    .line 88
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0911cf

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0911ce

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/easymode/EasyModeEnabler$4;

    invoke-direct {v1, p0}, Lcom/android/settings/easymode/EasyModeEnabler$4;-><init>(Lcom/android/settings/easymode/EasyModeEnabler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/easymode/EasyModeEnabler$3;

    invoke-direct {v2, p0}, Lcom/android/settings/easymode/EasyModeEnabler$3;-><init>(Lcom/android/settings/easymode/EasyModeEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings/easymode/EasyModeEnabler$2;

    invoke-direct {v2, p0}, Lcom/android/settings/easymode/EasyModeEnabler$2;-><init>(Lcom/android/settings/easymode/EasyModeEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeEnabler;->mEnableEasyModeDialog:Landroid/app/AlertDialog;

    .line 145
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeEnabler;->mEnableEasyModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 147
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 65
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "easy_mode_switch"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 67
    .local v1, state:I
    if-eqz p2, :cond_1

    if-ne v1, v5, :cond_1

    .line 69
    invoke-direct {p0}, Lcom/android/settings/easymode/EasyModeEnabler;->showEnableEasyModeDialog()V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    if-nez p2, :cond_0

    if-nez v1, :cond_0

    .line 72
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "easy_mode_switch"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 73
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "easymode"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 75
    const-string v2, "easymode_from"

    const-string v3, "settings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeEnabler;->mEasyModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 60
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 61
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeEnabler;->updateSwitch()V

    .line 54
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 55
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "easy_mode_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeEnabler;->mEasyModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 56
    return-void
.end method

.method public updateSwitch()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 81
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "easy_mode_switch"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 83
    .local v0, state:I
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeEnabler;->mSwitch:Landroid/widget/Switch;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 84
    return-void
.end method
