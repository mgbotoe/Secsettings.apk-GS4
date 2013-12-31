.class public final Lcom/android/settings/AirViewEnabler;
.super Ljava/lang/Object;
.source "AirViewEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAirViewDisableDialog:Landroid/app/AlertDialog;

.field private mAirViewObserver:Landroid/database/ContentObserver;

.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private final mContext:Landroid/content/Context;

.field private mHeader:Landroid/preference/PreferenceActivity$Header;

.field private mPosition:I

.field private mSwitch:Landroid/widget/Switch;

.field private mTalkbackDisableDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .parameter "context"
    .parameter "switch_"

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v1, p0, Lcom/android/settings/AirViewEnabler;->mSwitch:Landroid/widget/Switch;

    .line 47
    iput-object v1, p0, Lcom/android/settings/AirViewEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/AirViewEnabler;->mPosition:I

    .line 51
    iput-object v1, p0, Lcom/android/settings/AirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 53
    iput-object v1, p0, Lcom/android/settings/AirViewEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 55
    iput-object v1, p0, Lcom/android/settings/AirViewEnabler;->mAirViewDisableDialog:Landroid/app/AlertDialog;

    .line 57
    new-instance v0, Lcom/android/settings/AirViewEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AirViewEnabler$1;-><init>(Lcom/android/settings/AirViewEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AirViewEnabler;->mAirViewObserver:Landroid/database/ContentObserver;

    .line 66
    iput-object p1, p0, Lcom/android/settings/AirViewEnabler;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/android/settings/AirViewEnabler;->mSwitch:Landroid/widget/Switch;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AirViewEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/AirViewEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/AirViewEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/AirViewEnabler;->showAllOptionDisabledDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/AirViewEnabler;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/AirViewEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/AirViewEnabler;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/settings/AirViewEnabler;->broadcastAirViewChanged(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/AirViewEnabler;)Landroid/preference/PreferenceActivity$Header;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/AirViewEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/AirViewEnabler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/android/settings/AirViewEnabler;->mPosition:I

    return v0
.end method

.method private broadcastAirViewChanged(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 244
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 245
    .local v0, air_view_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 246
    iget-object v1, p0, Lcom/android/settings/AirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 247
    return-void
.end method

.method private dismissAllDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 250
    iget-object v0, p0, Lcom/android/settings/AirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/settings/AirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 252
    iput-object v1, p0, Lcom/android/settings/AirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AirViewEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/android/settings/AirViewEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 256
    iput-object v1, p0, Lcom/android/settings/AirViewEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 258
    :cond_1
    return-void
.end method

.method private makeTalkBackDisablePopup()V
    .locals 4

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/settings/AirViewEnabler;->dismissAllDialog()V

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/AirViewEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f090ea9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/AirViewEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f090eaa

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/AirViewEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f09081c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, message:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/AirViewEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/AirViewEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f090cbc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/AirViewEnabler$3;

    invoke-direct {v3, p0}, Lcom/android/settings/AirViewEnabler$3;-><init>(Lcom/android/settings/AirViewEnabler;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/android/settings/AirViewEnabler$2;

    invoke-direct {v3, p0}, Lcom/android/settings/AirViewEnabler$2;-><init>(Lcom/android/settings/AirViewEnabler;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/AirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 175
    iget-object v1, p0, Lcom/android/settings/AirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 176
    iget-object v1, p0, Lcom/android/settings/AirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/settings/AirViewEnabler$4;

    invoke-direct {v2, p0}, Lcom/android/settings/AirViewEnabler$4;-><init>(Lcom/android/settings/AirViewEnabler;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 183
    return-void
.end method

.method private showAirViewDisableDialog()V
    .locals 3

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/settings/AirViewEnabler;->dismissAllDialog()V

    .line 217
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/AirViewEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/AirViewEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f090e7a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AirViewEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f090e4c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/AirViewEnabler$7;

    invoke-direct {v2, p0}, Lcom/android/settings/AirViewEnabler$7;-><init>(Lcom/android/settings/AirViewEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings/AirViewEnabler$6;

    invoke-direct {v2, p0}, Lcom/android/settings/AirViewEnabler$6;-><init>(Lcom/android/settings/AirViewEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AirViewEnabler;->mAirViewDisableDialog:Landroid/app/AlertDialog;

    .line 233
    iget-object v0, p0, Lcom/android/settings/AirViewEnabler;->mAirViewDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 234
    iget-object v0, p0, Lcom/android/settings/AirViewEnabler;->mAirViewDisableDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/AirViewEnabler$8;

    invoke-direct {v1, p0}, Lcom/android/settings/AirViewEnabler$8;-><init>(Lcom/android/settings/AirViewEnabler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 241
    return-void
.end method

.method private showAllOptionDisabledDialog()V
    .locals 3

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/android/settings/AirViewEnabler;->dismissAllDialog()V

    .line 187
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/AirViewEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090e3d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090e4c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/AirViewEnabler$5;

    invoke-direct {v2, p0}, Lcom/android/settings/AirViewEnabler$5;-><init>(Lcom/android/settings/AirViewEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AirViewEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 211
    iget-object v0, p0, Lcom/android/settings/AirViewEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 213
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 107
    if-eqz p2, :cond_3

    .line 108
    iget-object v2, p0, Lcom/android/settings/AirViewEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/AirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_display_magnification_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 111
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/AirViewEnabler;->makeTalkBackDisablePopup()V

    .line 129
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-object v1, p0, Lcom/android/settings/AirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isCurrentAirviewAllItemDisabled(Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    invoke-direct {p0}, Lcom/android/settings/AirViewEnabler;->showAllOptionDisabledDialog()V

    goto :goto_0

    .line 115
    :cond_2
    iget-object v1, p0, Lcom/android/settings/AirViewEnabler;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/Utils;->MASTER_AIR_VIEW_ON:I

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->SetAirViewMasterValue(Landroid/content/Context;I)V

    .line 116
    invoke-direct {p0, p2}, Lcom/android/settings/AirViewEnabler;->broadcastAirViewChanged(Z)V

    .line 117
    const-string v1, "AirViewEnabler"

    const-string v2, "Air view switch is on"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 120
    :cond_3
    iget-object v2, p0, Lcom/android/settings/AirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_button_onoff"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_4

    .line 122
    .local v0, airCommandState:Z
    :goto_1
    if-eqz v0, :cond_5

    .line 123
    invoke-direct {p0}, Lcom/android/settings/AirViewEnabler;->showAirViewDisableDialog()V

    goto :goto_0

    .end local v0           #airCommandState:Z
    :cond_4
    move v0, v1

    .line 120
    goto :goto_1

    .line 125
    .restart local v0       #airCommandState:Z
    :cond_5
    iget-object v1, p0, Lcom/android/settings/AirViewEnabler;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/Utils;->MASTER_AIR_VIEW_OFF:I

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->SetAirViewMasterValue(Landroid/content/Context;I)V

    .line 126
    invoke-direct {p0, p2}, Lcom/android/settings/AirViewEnabler;->broadcastAirViewChanged(Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/settings/AirViewEnabler;->dismissAllDialog()V

    .line 90
    iget-object v0, p0, Lcom/android/settings/AirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AirViewEnabler;->mAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 91
    iget-object v0, p0, Lcom/android/settings/AirViewEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 92
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/AirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isCurrentAirviewAllItemDisabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/settings/AirViewEnabler;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/Utils;->MASTER_AIR_VIEW_OFF:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->SetAirViewMasterValue(Landroid/content/Context;I)V

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/AirViewEnabler;->updateSwitch()V

    .line 83
    iget-object v0, p0, Lcom/android/settings/AirViewEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 84
    iget-object v0, p0, Lcom/android/settings/AirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_view_master_onoff"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/AirViewEnabler;->mAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 86
    return-void
.end method

.method public setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 0
    .parameter "header"
    .parameter "position"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/settings/AirViewEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 72
    iput p2, p0, Lcom/android/settings/AirViewEnabler;->mPosition:I

    .line 73
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 2
    .parameter "switch_"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings/AirViewEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v0, p1, :cond_0

    .line 103
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AirViewEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 99
    iput-object p1, p0, Lcom/android/settings/AirViewEnabler;->mSwitch:Landroid/widget/Switch;

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/AirViewEnabler;->updateSwitch()V

    .line 102
    iget-object v0, p0, Lcom/android/settings/AirViewEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public updateSwitch()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 132
    iget-object v3, p0, Lcom/android/settings/AirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_view_master_onoff"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 134
    .local v0, state:I
    iget-object v3, p0, Lcom/android/settings/AirViewEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 135
    iget-object v3, p0, Lcom/android/settings/AirViewEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v0, v1, :cond_0

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 136
    iget-object v1, p0, Lcom/android/settings/AirViewEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 137
    return-void

    :cond_0
    move v1, v2

    .line 135
    goto :goto_0
.end method
