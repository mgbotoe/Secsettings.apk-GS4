.class public final Lcom/android/settings/VoiceInputControlEnabler;
.super Ljava/lang/Object;
.source "VoiceInputControlEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/VoiceInputControlEnabler$VoiceInputSettingObserver;
    }
.end annotation


# static fields
.field private static mVoiceInputSettingObserver:Lcom/android/settings/VoiceInputControlEnabler$VoiceInputSettingObserver;


# instance fields
.field private final KEY_TEMP_VOICE_INPUT_CONTROL:Ljava/lang/String;

.field private final KEY_VOICE_INPUT_CONTROL:Ljava/lang/String;

.field protected MESSAGE_DELAY:I

.field private final VOICEINPUTCONTROL_ALARM:Ljava/lang/String;

.field private final VOICEINPUTCONTROL_CAMERA:Ljava/lang/String;

.field private final VOICEINPUTCONTROL_CHATONV:Ljava/lang/String;

.field private final VOICEINPUTCONTROL_INCOMMING_CALL:Ljava/lang/String;

.field private final VOICEINPUTCONTROL_MUSIC:Ljava/lang/String;

.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private final mContext:Landroid/content/Context;

.field private mHeader:Landroid/preference/PreferenceActivity$Header;

.field private mPosition:I

.field private mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

.field private mSwitch:Landroid/widget/Switch;

.field protected mVoiceControlUncheckerHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 3
    .parameter "context"
    .parameter "switch_"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "voice_input_control"

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->KEY_VOICE_INPUT_CONTROL:Ljava/lang/String;

    .line 55
    const-string v0, "temp_voice_input_control"

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->KEY_TEMP_VOICE_INPUT_CONTROL:Ljava/lang/String;

    .line 56
    const-string v0, "voice_input_control_incomming_calls"

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->VOICEINPUTCONTROL_INCOMMING_CALL:Ljava/lang/String;

    .line 57
    const-string v0, "voice_input_control_chatonv"

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->VOICEINPUTCONTROL_CHATONV:Ljava/lang/String;

    .line 58
    const-string v0, "voice_input_control_alarm"

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->VOICEINPUTCONTROL_ALARM:Ljava/lang/String;

    .line 59
    const-string v0, "voice_input_control_camera"

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->VOICEINPUTCONTROL_CAMERA:Ljava/lang/String;

    .line 60
    const-string v0, "voice_input_control_music"

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->VOICEINPUTCONTROL_MUSIC:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 63
    iput v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mPosition:I

    .line 65
    iput v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->MESSAGE_DELAY:I

    .line 68
    iput-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    .line 73
    iput-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 255
    new-instance v0, Lcom/android/settings/VoiceInputControlEnabler$6;

    invoke-direct {v0, p0}, Lcom/android/settings/VoiceInputControlEnabler$6;-><init>(Lcom/android/settings/VoiceInputControlEnabler;)V

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mVoiceControlUncheckerHandler:Landroid/os/Handler;

    .line 76
    iput-object p1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    .line 79
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/VoiceInputControlEnabler;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/VoiceInputControlEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/VoiceInputControlEnabler;)Landroid/preference/PreferenceActivity$Header;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/VoiceInputControlEnabler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mPosition:I

    return v0
.end method

.method private showAllOptionDisabledDialog()V
    .locals 3

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 332
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 335
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090d29

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0910d9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/VoiceInputControlEnabler$7;

    invoke-direct {v2, p0}, Lcom/android/settings/VoiceInputControlEnabler$7;-><init>(Lcom/android/settings/VoiceInputControlEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 354
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 355
    return-void
.end method


# virtual methods
.method public isAllOptionDisabled()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 285
    iget-object v7, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 286
    .local v4, cr:Landroid/content/ContentResolver;
    const-string v7, "voice_input_control_incomming_calls"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 287
    .local v1, call:I
    const-string v7, "voice_input_control_alarm"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 288
    .local v0, alarm:I
    const-string v7, "voice_input_control_camera"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 289
    .local v2, camera:I
    const-string v7, "voice_input_control_music"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 290
    .local v5, music:I
    const-string v7, "voice_input_control_chatonv"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 292
    .local v3, chatonv:I
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    if-nez v5, :cond_0

    if-nez v3, :cond_0

    .line 293
    const/4 v6, 0x1

    .line 295
    :cond_0
    return v6
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 13
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v10, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 171
    iget-object v8, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "voiceinputcontrol_showNeverAgain"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 172
    .local v4, showNeverAgain:I
    iget-object v8, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "voice_input_control"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 173
    .local v7, voiceState:I
    invoke-static {}, Lcom/android/settings/VoiceInputControlSettings;->getInstance()Lcom/android/settings/VoiceInputControlSettings;

    move-result-object v6

    .line 176
    .local v6, voiceInputControl:Lcom/android/settings/VoiceInputControlSettings;
    iget-object v8, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v8, v11}, Landroid/sec/enterprise/RestrictionPolicy;->isSVoiceAllowed(Z)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v8, v11}, Landroid/sec/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z

    move-result v8

    if-nez v8, :cond_2

    .line 178
    :cond_0
    iget-object v8, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v8, v11}, Landroid/widget/Switch;->setChecked(Z)V

    .line 179
    iget-object v8, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v8, v11}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 180
    iget-object v8, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "voice_input_control"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 253
    :cond_1
    :goto_0
    return-void

    .line 183
    :cond_2
    iget-object v8, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v8, v12}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 187
    iget-object v8, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    const-string v9, "vibrator"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    .line 188
    .local v5, vibrator:Landroid/os/Vibrator;
    if-eqz p2, :cond_6

    if-nez v7, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlEnabler;->isAllOptionDisabled()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 189
    const-string v8, "VoiceInputControlEnabler"

    const-string v9, "VoiceControl changed ignored cause all sub options are disabled "

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {v10}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 191
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/VoiceInputControlEnabler;->showAllOptionDisabledDialog()V

    .line 246
    :cond_4
    :goto_1
    if-eqz p2, :cond_8

    if-nez v7, :cond_8

    .line 247
    iget-object v8, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v8, v12}, Landroid/widget/Switch;->setChecked(Z)V

    .line 248
    iget-object v8, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "voice_input_control"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 193
    :cond_5
    iget-object v8, p0, Lcom/android/settings/VoiceInputControlEnabler;->mVoiceControlUncheckerHandler:Landroid/os/Handler;

    iget v9, p0, Lcom/android/settings/VoiceInputControlEnabler;->MESSAGE_DELAY:I

    int-to-long v9, v9

    invoke-virtual {v8, v11, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 195
    :cond_6
    if-eqz p2, :cond_4

    if-nez v7, :cond_4

    if-nez v4, :cond_4

    invoke-virtual {v5}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 197
    iget-object v8, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 198
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v8, 0x7f040053

    invoke-virtual {v1, v8, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 199
    .local v2, layout:Landroid/view/View;
    const v8, 0x7f0b00ee

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 200
    .local v0, check:Landroid/widget/CheckBox;
    const v8, 0x7f0b00ed

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_7

    const v9, 0x7f0910da

    :goto_2
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 201
    new-instance v8, Lcom/android/settings/VoiceInputControlEnabler$1;

    invoke-direct {v8, p0}, Lcom/android/settings/VoiceInputControlEnabler$1;-><init>(Lcom/android/settings/VoiceInputControlEnabler;)V

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0910d9

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0910dc

    new-instance v10, Lcom/android/settings/VoiceInputControlEnabler$3;

    invoke-direct {v10, p0, v0, v6}, Lcom/android/settings/VoiceInputControlEnabler$3;-><init>(Lcom/android/settings/VoiceInputControlEnabler;Landroid/widget/CheckBox;Lcom/android/settings/VoiceInputControlSettings;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0910dd

    new-instance v10, Lcom/android/settings/VoiceInputControlEnabler$2;

    invoke-direct {v10, p0}, Lcom/android/settings/VoiceInputControlEnabler$2;-><init>(Lcom/android/settings/VoiceInputControlEnabler;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 227
    .local v3, mAutoHapticDialog:Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 228
    new-instance v8, Lcom/android/settings/VoiceInputControlEnabler$4;

    invoke-direct {v8, p0}, Lcom/android/settings/VoiceInputControlEnabler$4;-><init>(Lcom/android/settings/VoiceInputControlEnabler;)V

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 232
    new-instance v8, Lcom/android/settings/VoiceInputControlEnabler$5;

    invoke-direct {v8, p0}, Lcom/android/settings/VoiceInputControlEnabler$5;-><init>(Lcom/android/settings/VoiceInputControlEnabler;)V

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto/16 :goto_1

    .line 200
    .end local v3           #mAutoHapticDialog:Landroid/app/AlertDialog;
    :cond_7
    const v9, 0x7f0910db

    goto :goto_2

    .line 249
    .end local v0           #check:Landroid/widget/CheckBox;
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #layout:Landroid/view/View;
    :cond_8
    if-nez p2, :cond_1

    if-ne v7, v12, :cond_1

    .line 250
    iget-object v8, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v8, v11}, Landroid/widget/Switch;->setChecked(Z)V

    .line 251
    iget-object v8, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "voice_input_control"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method public pause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 120
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v2}, Landroid/sec/enterprise/RestrictionPolicy;->isSVoiceAllowed(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v2}, Landroid/sec/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 123
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 141
    :cond_1
    :goto_0
    return-void

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voice_input_control"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    .line 131
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 135
    :goto_1
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 137
    sget-object v0, Lcom/android/settings/VoiceInputControlEnabler;->mVoiceInputSettingObserver:Lcom/android/settings/VoiceInputControlEnabler$VoiceInputSettingObserver;

    if-eqz v0, :cond_1

    .line 138
    sget-object v0, Lcom/android/settings/VoiceInputControlEnabler;->mVoiceInputSettingObserver:Lcom/android/settings/VoiceInputControlEnabler$VoiceInputSettingObserver;

    invoke-virtual {v0}, Lcom/android/settings/VoiceInputControlEnabler$VoiceInputSettingObserver;->stopObserving()V

    .line 139
    sput-object v4, Lcom/android/settings/VoiceInputControlEnabler;->mVoiceInputSettingObserver:Lcom/android/settings/VoiceInputControlEnabler$VoiceInputSettingObserver;

    goto :goto_0

    .line 133
    :cond_3
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1
.end method

.method public resume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 90
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v1, v3}, Landroid/sec/enterprise/RestrictionPolicy;->isSVoiceAllowed(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v1, v3}, Landroid/sec/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_3

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 93
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 99
    :goto_0
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_input_control"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_4

    .line 100
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 105
    :goto_1
    invoke-static {}, Lcom/android/settings/VoiceInputControlSettings;->getInstance()Lcom/android/settings/VoiceInputControlSettings;

    move-result-object v0

    .line 106
    .local v0, voiceInputControl:Lcom/android/settings/VoiceInputControlSettings;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/settings/VoiceInputControlSettings;->isFromHelpApp()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    invoke-virtual {v0}, Lcom/android/settings/VoiceInputControlSettings;->getHelpHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 112
    sget-object v1, Lcom/android/settings/VoiceInputControlEnabler;->mVoiceInputSettingObserver:Lcom/android/settings/VoiceInputControlEnabler$VoiceInputSettingObserver;

    if-nez v1, :cond_2

    .line 113
    new-instance v1, Lcom/android/settings/VoiceInputControlEnabler$VoiceInputSettingObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iget-object v3, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/settings/VoiceInputControlEnabler$VoiceInputSettingObserver;-><init>(Lcom/android/settings/VoiceInputControlEnabler;Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v1, Lcom/android/settings/VoiceInputControlEnabler;->mVoiceInputSettingObserver:Lcom/android/settings/VoiceInputControlEnabler$VoiceInputSettingObserver;

    .line 114
    sget-object v1, Lcom/android/settings/VoiceInputControlEnabler;->mVoiceInputSettingObserver:Lcom/android/settings/VoiceInputControlEnabler$VoiceInputSettingObserver;

    invoke-virtual {v1}, Lcom/android/settings/VoiceInputControlEnabler$VoiceInputSettingObserver;->startObserving()V

    .line 116
    :cond_2
    return-void

    .line 95
    .end local v0           #voiceInputControl:Lcom/android/settings/VoiceInputControlSettings;
    :cond_3
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 102
    :cond_4
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1
.end method

.method public setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 0
    .parameter "header"
    .parameter "position"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 85
    iput p2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mPosition:I

    .line 86
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 5
    .parameter "switch_"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 145
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v1, p1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 149
    iput-object p1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    .line 151
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_input_control"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 153
    .local v0, voiceTalkState:I
    if-ne v0, v4, :cond_3

    .line 154
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 159
    :goto_1
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 162
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v1, v3}, Landroid/sec/enterprise/RestrictionPolicy;->isSVoiceAllowed(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v1, v3}, Landroid/sec/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    :cond_2
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 165
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 156
    :cond_3
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1
.end method

.method public updateSwitch()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 269
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_input_control"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 271
    .local v1, voiceInputControState:I
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    .line 273
    .local v0, isChecked:Z
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 274
    if-ne v1, v5, :cond_1

    .line 275
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 276
    const-string v2, "VoiceInputControlEnabler"

    const-string v3, "updateSwitch - mSwitch.setChecked(true)"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 279
    const-string v2, "VoiceInputControlEnabler"

    const-string v3, "updateSwitch - mSwitch.setChecked(false)"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateSwitch(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 327
    return-void
.end method
