.class public final Lcom/android/settings/PenAirViewEnabler;
.super Ljava/lang/Object;
.source "PenAirViewEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAirViewDisableDialog:Landroid/app/AlertDialog;

.field private final mContext:Landroid/content/Context;

.field private mHeader:Landroid/preference/PreferenceActivity$Header;

.field private mPenAirViewObserver:Landroid/database/ContentObserver;

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

    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v1, p0, Lcom/android/settings/PenAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    .line 49
    iput-object v1, p0, Lcom/android/settings/PenAirViewEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/PenAirViewEnabler;->mPosition:I

    .line 53
    iput-object v1, p0, Lcom/android/settings/PenAirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 55
    iput-object v1, p0, Lcom/android/settings/PenAirViewEnabler;->mAirViewDisableDialog:Landroid/app/AlertDialog;

    .line 57
    new-instance v0, Lcom/android/settings/PenAirViewEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/PenAirViewEnabler$1;-><init>(Lcom/android/settings/PenAirViewEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/PenAirViewEnabler;->mPenAirViewObserver:Landroid/database/ContentObserver;

    .line 67
    iput-object p1, p0, Lcom/android/settings/PenAirViewEnabler;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/android/settings/PenAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/PenAirViewEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/PenAirViewEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private dismissAllDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 195
    iget-object v0, p0, Lcom/android/settings/PenAirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/settings/PenAirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 197
    iput-object v1, p0, Lcom/android/settings/PenAirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/settings/PenAirViewEnabler;->mAirViewDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/android/settings/PenAirViewEnabler;->mAirViewDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 201
    iput-object v1, p0, Lcom/android/settings/PenAirViewEnabler;->mAirViewDisableDialog:Landroid/app/AlertDialog;

    .line 203
    :cond_1
    return-void
.end method

.method private showAirViewDisableDialog()V
    .locals 3

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/android/settings/PenAirViewEnabler;->dismissAllDialog()V

    .line 170
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/PenAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/PenAirViewEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f090e7a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PenAirViewEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f090e4c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/PenAirViewEnabler$6;

    invoke-direct {v2, p0}, Lcom/android/settings/PenAirViewEnabler$6;-><init>(Lcom/android/settings/PenAirViewEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings/PenAirViewEnabler$5;

    invoke-direct {v2, p0}, Lcom/android/settings/PenAirViewEnabler$5;-><init>(Lcom/android/settings/PenAirViewEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PenAirViewEnabler;->mAirViewDisableDialog:Landroid/app/AlertDialog;

    .line 184
    iget-object v0, p0, Lcom/android/settings/PenAirViewEnabler;->mAirViewDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 185
    iget-object v0, p0, Lcom/android/settings/PenAirViewEnabler;->mAirViewDisableDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/PenAirViewEnabler$7;

    invoke-direct {v1, p0}, Lcom/android/settings/PenAirViewEnabler$7;-><init>(Lcom/android/settings/PenAirViewEnabler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 192
    return-void
.end method

.method private showTalkBackDisableDialog()V
    .locals 4

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/android/settings/PenAirViewEnabler;->dismissAllDialog()V

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/PenAirViewEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f090ea9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/PenAirViewEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f090eaa

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/PenAirViewEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f09081c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, message:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/PenAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/PenAirViewEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f090cbc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/PenAirViewEnabler$3;

    invoke-direct {v3, p0}, Lcom/android/settings/PenAirViewEnabler$3;-><init>(Lcom/android/settings/PenAirViewEnabler;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/android/settings/PenAirViewEnabler$2;

    invoke-direct {v3, p0}, Lcom/android/settings/PenAirViewEnabler$2;-><init>(Lcom/android/settings/PenAirViewEnabler;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/PenAirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 158
    iget-object v1, p0, Lcom/android/settings/PenAirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 159
    iget-object v1, p0, Lcom/android/settings/PenAirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/settings/PenAirViewEnabler$4;

    invoke-direct {v2, p0}, Lcom/android/settings/PenAirViewEnabler$4;-><init>(Lcom/android/settings/PenAirViewEnabler;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 166
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

    .line 105
    if-eqz p2, :cond_2

    .line 106
    iget-object v2, p0, Lcom/android/settings/PenAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/PenAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_display_magnification_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 109
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/PenAirViewEnabler;->showTalkBackDisableDialog()V

    .line 123
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v1, p0, Lcom/android/settings/PenAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_hovering"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 112
    const-string v1, "PenAirViewEnabler"

    const-string v2, "Air view switch is on"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 115
    :cond_2
    iget-object v2, p0, Lcom/android/settings/PenAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_button_onoff"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_3

    .line 117
    .local v0, airCommandState:Z
    :goto_1
    if-eqz v0, :cond_4

    .line 118
    invoke-direct {p0}, Lcom/android/settings/PenAirViewEnabler;->showAirViewDisableDialog()V

    goto :goto_0

    .end local v0           #airCommandState:Z
    :cond_3
    move v0, v1

    .line 115
    goto :goto_1

    .line 120
    .restart local v0       #airCommandState:Z
    :cond_4
    iget-object v2, p0, Lcom/android/settings/PenAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_hovering"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings/PenAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PenAirViewEnabler;->mPenAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 85
    iget-object v0, p0, Lcom/android/settings/PenAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 86
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewEnabler;->updateSwitch()V

    .line 78
    iget-object v0, p0, Lcom/android/settings/PenAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/settings/PenAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/settings/PenAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_hovering"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/PenAirViewEnabler;->mPenAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 81
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 2
    .parameter "switch_"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/settings/PenAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v0, p1, :cond_0

    .line 101
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/settings/PenAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 98
    iput-object p1, p0, Lcom/android/settings/PenAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewEnabler;->updateSwitch()V

    .line 100
    iget-object v0, p0, Lcom/android/settings/PenAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/PenAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/settings/PenAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    .line 91
    :cond_0
    return-void
.end method

.method public updateSwitch()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 126
    iget-object v3, p0, Lcom/android/settings/PenAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 127
    .local v0, state:I
    iget-object v3, p0, Lcom/android/settings/PenAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 128
    iget-object v3, p0, Lcom/android/settings/PenAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v0, v1, :cond_0

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 129
    iget-object v1, p0, Lcom/android/settings/PenAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 130
    return-void

    :cond_0
    move v1, v2

    .line 128
    goto :goto_0
.end method
