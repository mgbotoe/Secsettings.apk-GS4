.class public final Lcom/android/settings/motion2013/AirMotionEnabler;
.super Ljava/lang/Object;
.source "AirMotionEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/motion2013/AirMotionEnabler$MotionSettingObserver;
    }
.end annotation


# static fields
.field private static mMotionSettingObserver:Lcom/android/settings/motion2013/AirMotionEnabler$MotionSettingObserver;


# instance fields
.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private final mContext:Landroid/content/Context;

.field private mHeader:Landroid/preference/PreferenceActivity$Header;

.field private mMotionUnlockDialog:Landroid/app/AlertDialog;

.field private mPosition:I

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .parameter "context"
    .parameter "switch_"

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mSwitch:Landroid/widget/Switch;

    .line 44
    iput-object v1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mPosition:I

    .line 48
    iput-object v1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    .line 50
    iput-object v1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 55
    iput-object p1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mSwitch:Landroid/widget/Switch;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/motion2013/AirMotionEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/motion2013/AirMotionEnabler;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/motion2013/AirMotionEnabler;->broadcastMotionChanged(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/motion2013/AirMotionEnabler;)Landroid/preference/PreferenceActivity$Header;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/motion2013/AirMotionEnabler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mPosition:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/motion2013/AirMotionEnabler;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method private broadcastMotionChanged(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 215
    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 216
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    .local v0, motion_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 218
    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 219
    return-void
.end method

.method private dismissAllDialog()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 255
    :cond_0
    return-void
.end method

.method private showAllOptionDisabledDialog()V
    .locals 3

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/settings/motion2013/AirMotionEnabler;->dismissAllDialog()V

    .line 151
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;

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

    new-instance v2, Lcom/android/settings/motion2013/AirMotionEnabler$1;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2013/AirMotionEnabler$1;-><init>(Lcom/android/settings/motion2013/AirMotionEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 176
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 177
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

    .line 119
    if-nez p2, :cond_2

    .line 121
    iget-object v4, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "air_motion_engine"

    if-eqz p2, :cond_1

    :goto_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 123
    invoke-direct {p0, p2}, Lcom/android/settings/motion2013/AirMotionEnabler;->broadcastMotionChanged(Z)V

    .line 147
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v3

    .line 121
    goto :goto_0

    .line 125
    :cond_2
    iget-object v4, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isCurrentAirmotionAllItemDisabled(Landroid/content/ContentResolver;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 126
    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/preference/PreferenceActivity;

    .line 128
    .local v1, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v4

    if-nez v4, :cond_4

    .line 130
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/motion2013/AirMotionEnabler;->showAllOptionDisabledDialog()V

    goto :goto_1

    .line 134
    :cond_4
    iget-object v4, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "air_motion_engine"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_5

    move v0, v2

    .line 136
    .local v0, airMotionState:Z
    :goto_2
    if-nez v0, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/android/settings/motion2013/AirMotionEnabler;->showAllOptionDisabledDialog()V

    goto :goto_1

    .end local v0           #airMotionState:Z
    :cond_5
    move v0, v3

    .line 134
    goto :goto_2

    .line 142
    .end local v1           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_6
    iget-object v4, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "air_motion_engine"

    if-eqz p2, :cond_7

    :goto_3
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 144
    invoke-direct {p0, p2}, Lcom/android/settings/motion2013/AirMotionEnabler;->broadcastMotionChanged(Z)V

    goto :goto_1

    :cond_7
    move v2, v3

    .line 142
    goto :goto_3
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Lcom/android/settings/motion2013/AirMotionEnabler;->dismissAllDialog()V

    .line 75
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 77
    sget-object v0, Lcom/android/settings/motion2013/AirMotionEnabler;->mMotionSettingObserver:Lcom/android/settings/motion2013/AirMotionEnabler$MotionSettingObserver;

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lcom/android/settings/motion2013/AirMotionEnabler;->mMotionSettingObserver:Lcom/android/settings/motion2013/AirMotionEnabler$MotionSettingObserver;

    invoke-virtual {v0}, Lcom/android/settings/motion2013/AirMotionEnabler$MotionSettingObserver;->stopObserving()V

    .line 79
    sput-object v1, Lcom/android/settings/motion2013/AirMotionEnabler;->mMotionSettingObserver:Lcom/android/settings/motion2013/AirMotionEnabler$MotionSettingObserver;

    .line 81
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 67
    sget-object v0, Lcom/android/settings/motion2013/AirMotionEnabler;->mMotionSettingObserver:Lcom/android/settings/motion2013/AirMotionEnabler$MotionSettingObserver;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/android/settings/motion2013/AirMotionEnabler$MotionSettingObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/motion2013/AirMotionEnabler$MotionSettingObserver;-><init>(Lcom/android/settings/motion2013/AirMotionEnabler;Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/motion2013/AirMotionEnabler;->mMotionSettingObserver:Lcom/android/settings/motion2013/AirMotionEnabler$MotionSettingObserver;

    .line 69
    sget-object v0, Lcom/android/settings/motion2013/AirMotionEnabler;->mMotionSettingObserver:Lcom/android/settings/motion2013/AirMotionEnabler$MotionSettingObserver;

    invoke-virtual {v0}, Lcom/android/settings/motion2013/AirMotionEnabler$MotionSettingObserver;->startObserving()V

    .line 71
    :cond_0
    return-void
.end method

.method public setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 0
    .parameter "header"
    .parameter "position"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 61
    iput p2, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mPosition:I

    .line 62
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 5
    .parameter "switch_"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 84
    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v1, p1, :cond_0

    .line 101
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 88
    iput-object p1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mSwitch:Landroid/widget/Switch;

    .line 90
    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "air_motion_engine"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 93
    .local v0, motionState:I
    if-ne v0, v4, :cond_1

    .line 94
    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 99
    :goto_1
    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1
.end method

.method public updateSwitch()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 105
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_motion_engine"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 106
    .local v1, motionEngine:I
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    .line 108
    .local v0, isChecked:Z
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    if-ne v1, v5, :cond_1

    .line 110
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method
