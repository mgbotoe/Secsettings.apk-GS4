.class public final Lcom/android/settings/motion2013/PalmMotionEnabler;
.super Ljava/lang/Object;
.source "PalmMotionEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private final mContext:Landroid/content/Context;

.field private mHeader:Landroid/preference/PreferenceActivity$Header;

.field private mMotionUnlockDialog:Landroid/app/AlertDialog;

.field private final mPalmMotionObserver:Landroid/database/ContentObserver;

.field private mPosition:I

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .parameter "context"
    .parameter "switch_"

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v1, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mSwitch:Landroid/widget/Switch;

    .line 42
    iput-object v1, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mPosition:I

    .line 44
    iput-object v1, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    .line 45
    iput-object v1, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 47
    new-instance v0, Lcom/android/settings/motion2013/PalmMotionEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/motion2013/PalmMotionEnabler$1;-><init>(Lcom/android/settings/motion2013/PalmMotionEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mPalmMotionObserver:Landroid/database/ContentObserver;

    .line 56
    iput-object p1, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mSwitch:Landroid/widget/Switch;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/motion2013/PalmMotionEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/motion2013/PalmMotionEnabler;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/motion2013/PalmMotionEnabler;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings/motion2013/PalmMotionEnabler;->broadcastMotionChanged(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/motion2013/PalmMotionEnabler;)Landroid/preference/PreferenceActivity$Header;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/motion2013/PalmMotionEnabler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mPosition:I

    return v0
.end method

.method private broadcastMotionChanged(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 191
    iget-object v1, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 192
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 193
    .local v0, motion_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 194
    iget-object v1, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 195
    return-void
.end method

.method private dismissAllDialog()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 202
    :cond_0
    return-void
.end method

.method private showAllOptionDisabledDialog()V
    .locals 3

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/settings/motion2013/PalmMotionEnabler;->dismissAllDialog()V

    .line 132
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f091405

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090e4c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/motion2013/PalmMotionEnabler$2;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2013/PalmMotionEnabler$2;-><init>(Lcom/android/settings/motion2013/PalmMotionEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 157
    iget-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 158
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 100
    if-nez p2, :cond_2

    .line 102
    iget-object v4, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "surface_motion_engine"

    if-eqz p2, :cond_1

    :goto_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 104
    invoke-direct {p0, p2}, Lcom/android/settings/motion2013/PalmMotionEnabler;->broadcastMotionChanged(Z)V

    .line 128
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v3

    .line 102
    goto :goto_0

    .line 106
    :cond_2
    iget-object v4, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isCurrentPalmMotionAllItemDisabled(Landroid/content/ContentResolver;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 107
    iget-object v1, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/preference/PreferenceActivity;

    .line 109
    .local v1, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v4

    if-nez v4, :cond_4

    .line 111
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/motion2013/PalmMotionEnabler;->showAllOptionDisabledDialog()V

    goto :goto_1

    .line 115
    :cond_4
    iget-object v4, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "surface_motion_engine"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_5

    move v0, v2

    .line 117
    .local v0, palmMotionState:Z
    :goto_2
    if-nez v0, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/android/settings/motion2013/PalmMotionEnabler;->showAllOptionDisabledDialog()V

    goto :goto_1

    .end local v0           #palmMotionState:Z
    :cond_5
    move v0, v3

    .line 115
    goto :goto_2

    .line 123
    .end local v1           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_6
    iget-object v4, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "surface_motion_engine"

    if-eqz p2, :cond_7

    :goto_3
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 125
    invoke-direct {p0, p2}, Lcom/android/settings/motion2013/PalmMotionEnabler;->broadcastMotionChanged(Z)V

    goto :goto_1

    :cond_7
    move v2, v3

    .line 123
    goto :goto_3
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mPalmMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 75
    invoke-direct {p0}, Lcom/android/settings/motion2013/PalmMotionEnabler;->dismissAllDialog()V

    .line 76
    iget-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 77
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "surface_motion_engine"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mPalmMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 69
    iget-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 70
    return-void
.end method

.method public setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 0
    .parameter "header"
    .parameter "position"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 62
    iput p2, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mPosition:I

    .line 63
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 5
    .parameter "switch_"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 80
    iget-object v1, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v1, p1, :cond_0

    .line 96
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 84
    iput-object p1, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mSwitch:Landroid/widget/Switch;

    .line 86
    iget-object v1, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "surface_motion_engine"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 89
    .local v0, motionState:I
    if-ne v0, v4, :cond_1

    .line 90
    iget-object v1, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 94
    :goto_1
    iget-object v1, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1
.end method
