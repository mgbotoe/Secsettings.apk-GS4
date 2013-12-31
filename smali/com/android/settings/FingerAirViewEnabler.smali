.class public final Lcom/android/settings/FingerAirViewEnabler;
.super Ljava/lang/Object;
.source "FingerAirViewEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private final mContext:Landroid/content/Context;

.field private mFingerAirViewObserver:Landroid/database/ContentObserver;

.field private mHeader:Landroid/preference/PreferenceActivity$Header;

.field private mIsTablet:Z

.field private mPosition:I

.field private mSwitch:Landroid/widget/Switch;

.field private mTalkbackDisableDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 3
    .parameter "context"
    .parameter "switch_"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v2, p0, Lcom/android/settings/FingerAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    .line 46
    iput-boolean v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mIsTablet:Z

    .line 47
    iput-object v2, p0, Lcom/android/settings/FingerAirViewEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 48
    iput v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mPosition:I

    .line 50
    iput-object v2, p0, Lcom/android/settings/FingerAirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 51
    iput-object v2, p0, Lcom/android/settings/FingerAirViewEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 53
    new-instance v0, Lcom/android/settings/FingerAirViewEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/FingerAirViewEnabler$1;-><init>(Lcom/android/settings/FingerAirViewEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mFingerAirViewObserver:Landroid/database/ContentObserver;

    .line 61
    iput-object p1, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/android/settings/FingerAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    .line 63
    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mIsTablet:Z

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/FingerAirViewEnabler;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/FingerAirViewEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/FingerAirViewEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/FingerAirViewEnabler;->showAllOptionDisabledDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/FingerAirViewEnabler;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings/FingerAirViewEnabler;->broadcastFingerAirViewChanged(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/FingerAirViewEnabler;)Landroid/preference/PreferenceActivity$Header;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/FingerAirViewEnabler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mPosition:I

    return v0
.end method

.method private broadcastFingerAirViewChanged(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 263
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 264
    .local v0, finger_air_view_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 265
    iget-object v1, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 266
    return-void
.end method

.method private makeTalkBackDisablePopup()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 149
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/android/settings/FingerAirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/android/settings/FingerAirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 154
    iput-object v2, p0, Lcom/android/settings/FingerAirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/android/settings/FingerAirViewEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    .line 158
    iget-object v1, p0, Lcom/android/settings/FingerAirViewEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 159
    iput-object v2, p0, Lcom/android/settings/FingerAirViewEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 162
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f090ea9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f090eaa

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f09081c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, message:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f090cbc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/FingerAirViewEnabler$3;

    invoke-direct {v3, p0}, Lcom/android/settings/FingerAirViewEnabler$3;-><init>(Lcom/android/settings/FingerAirViewEnabler;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/android/settings/FingerAirViewEnabler$2;

    invoke-direct {v3, p0}, Lcom/android/settings/FingerAirViewEnabler$2;-><init>(Lcom/android/settings/FingerAirViewEnabler;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/FingerAirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 196
    iget-object v1, p0, Lcom/android/settings/FingerAirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 198
    iget-object v1, p0, Lcom/android/settings/FingerAirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/settings/FingerAirViewEnabler$4;

    invoke-direct {v2, p0}, Lcom/android/settings/FingerAirViewEnabler$4;-><init>(Lcom/android/settings/FingerAirViewEnabler;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0
.end method

.method private showAllOptionDisabledDialog()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 209
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 214
    iput-object v1, p0, Lcom/android/settings/FingerAirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 219
    iput-object v1, p0, Lcom/android/settings/FingerAirViewEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 222
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090e7c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090e7b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/FingerAirViewEnabler$5;

    invoke-direct {v2, p0}, Lcom/android/settings/FingerAirViewEnabler$5;-><init>(Lcom/android/settings/FingerAirViewEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 244
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method public isAllOptionDisabled()Z
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 249
    iget-object v9, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "finger_air_view_magnifier"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 250
    .local v2, magnifier:I
    iget-object v9, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "finger_air_view_show_up_indicator"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 251
    .local v5, showUpIndicator:I
    iget-object v9, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "finger_air_view_information_preview"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 252
    .local v1, informationPreview:I
    iget-object v9, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "finger_air_view_full_text"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 254
    .local v0, fullText:I
    iget-object v9, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "finger_air_view_pointer"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 255
    .local v3, pointer:I
    iget-object v9, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "finger_air_view_pregress_bar_preview"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 256
    .local v4, progressBarPreview:I
    iget-object v9, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "finger_air_view_speed_dial_tip"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 258
    .local v6, speedDialTip:I
    or-int v9, v2, v5

    or-int/2addr v9, v1

    or-int/2addr v9, v0

    or-int/2addr v9, v3

    or-int/2addr v9, v4

    or-int/2addr v9, v6

    if-ge v9, v7, :cond_0

    :goto_0
    return v7

    :cond_0
    move v7, v8

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 105
    if-eqz p2, :cond_3

    .line 106
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 107
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/FingerAirViewEnabler;->makeTalkBackDisablePopup()V

    .line 126
    :goto_0
    return-void

    .line 108
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewEnabler;->isAllOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    invoke-direct {p0}, Lcom/android/settings/FingerAirViewEnabler;->showAllOptionDisabledDialog()V

    goto :goto_0

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 112
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view_highlight"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 114
    invoke-direct {p0, p2}, Lcom/android/settings/FingerAirViewEnabler;->broadcastFingerAirViewChanged(Z)V

    .line 115
    const-string v0, "FingerAirViewEnabler"

    const-string v1, "switch is on"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 118
    :cond_3
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 119
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view_highlight"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 121
    invoke-direct {p0, p2}, Lcom/android/settings/FingerAirViewEnabler;->broadcastFingerAirViewChanged(Z)V

    .line 122
    const-string v0, "FingerAirViewEnabler"

    const-string v1, "switch is off"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 78
    const-string v0, "DCM"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "KDI"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 81
    iput-object v2, p0, Lcom/android/settings/FingerAirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 85
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 86
    iput-object v2, p0, Lcom/android/settings/FingerAirViewEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/FingerAirViewEnabler;->mFingerAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 90
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 91
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewEnabler;->updateSwitch()V

    .line 73
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 74
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/FingerAirViewEnabler;->mFingerAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 75
    return-void
.end method

.method public setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 0
    .parameter "header"
    .parameter "position"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/settings/FingerAirViewEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 68
    iput p2, p0, Lcom/android/settings/FingerAirViewEnabler;->mPosition:I

    .line 69
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 2
    .parameter "switch_"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v0, p1, :cond_0

    .line 101
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 98
    iput-object p1, p0, Lcom/android/settings/FingerAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewEnabler;->updateSwitch()V

    .line 100
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public updateSwitch()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 129
    iget-object v3, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 130
    .local v0, state:I
    iget-object v3, p0, Lcom/android/settings/FingerAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v0, v1, :cond_0

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 145
    return-void

    :cond_0
    move v1, v2

    .line 130
    goto :goto_0
.end method
