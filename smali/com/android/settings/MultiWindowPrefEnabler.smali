.class public Lcom/android/settings/MultiWindowPrefEnabler;
.super Ljava/lang/Object;
.source "MultiWindowPrefEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMultiWindowObserver:Landroid/database/ContentObserver;

.field private mSwitch:Landroid/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/settings/MultiWindowPrefEnabler;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V
    .locals 2
    .parameter "context"
    .parameter "switch_"

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/android/settings/MultiWindowPrefEnabler;->mContext:Landroid/content/Context;

    .line 29
    iput-object v0, p0, Lcom/android/settings/MultiWindowPrefEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    .line 35
    new-instance v0, Lcom/android/settings/MultiWindowPrefEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/MultiWindowPrefEnabler$1;-><init>(Lcom/android/settings/MultiWindowPrefEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/MultiWindowPrefEnabler;->mMultiWindowObserver:Landroid/database/ContentObserver;

    .line 44
    iput-object p1, p0, Lcom/android/settings/MultiWindowPrefEnabler;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/android/settings/MultiWindowPrefEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MultiWindowPrefEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/settings/MultiWindowPrefEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/MultiWindowPrefEnabler;)Landroid/preference/SwitchPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/settings/MultiWindowPrefEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/MultiWindowPrefEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/settings/MultiWindowPrefEnabler;->removeEnabledScreenReaderValue()V

    return-void
.end method

.method private isEnabledScreenReaderService()Z
    .locals 6

    .prologue
    .line 107
    iget-object v4, p0, Lcom/android/settings/MultiWindowPrefEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enabled_accessibility_services"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, enabledServicesSetting:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 111
    const-string v3, ""

    .line 114
    :cond_0
    sget-object v0, Lcom/android/settings/MultiWindowPrefEnabler;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 116
    .local v0, colonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v0, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 118
    :cond_1
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 119
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, componentNameString:Ljava/lang/String;
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 122
    .local v2, enabledService:Landroid/content/ComponentName;
    if-eqz v2, :cond_1

    .line 123
    const-string v4, "com.google.android.marvin.talkback"

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 124
    const/4 v4, 0x1

    .line 127
    .end local v1           #componentNameString:Ljava/lang/String;
    .end local v2           #enabledService:Landroid/content/ComponentName;
    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private removeEnabledScreenReaderValue()V
    .locals 7

    .prologue
    .line 169
    iget-object v4, p0, Lcom/android/settings/MultiWindowPrefEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enabled_accessibility_services"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, enabledServicesSetting:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 191
    :goto_0
    return-void

    .line 175
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .local v0, builder:Ljava/lang/StringBuilder;
    sget-object v1, Lcom/android/settings/MultiWindowPrefEnabler;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 177
    .local v1, colonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v1, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 179
    :cond_1
    :goto_1
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 180
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, componentNameString:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 183
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 186
    :cond_2
    if-eqz v2, :cond_1

    const-string v4, "com.google.android.marvin.talkback"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 187
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 190
    .end local v2           #componentNameString:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/settings/MultiWindowPrefEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enabled_accessibility_services"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private showTalkBackDisablePopup()V
    .locals 3

    .prologue
    .line 131
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/MultiWindowPrefEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090cbb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090cba

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/MultiWindowPrefEnabler$4;

    invoke-direct {v2, p0}, Lcom/android/settings/MultiWindowPrefEnabler$4;-><init>(Lcom/android/settings/MultiWindowPrefEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings/MultiWindowPrefEnabler$3;

    invoke-direct {v2, p0}, Lcom/android/settings/MultiWindowPrefEnabler$3;-><init>(Lcom/android/settings/MultiWindowPrefEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/MultiWindowPrefEnabler$2;

    invoke-direct {v1, p0}, Lcom/android/settings/MultiWindowPrefEnabler$2;-><init>(Lcom/android/settings/MultiWindowPrefEnabler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 166
    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v2, 0x1

    .line 73
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 75
    .local v0, desiredState:Z
    invoke-direct {p0}, Lcom/android/settings/MultiWindowPrefEnabler;->isEnabledScreenReaderService()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    if-eqz v0, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/android/settings/MultiWindowPrefEnabler;->showTalkBackDisablePopup()V

    .line 83
    :cond_0
    :goto_0
    return v2

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/android/settings/MultiWindowPrefEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "multi_window_enabled"

    if-ne v0, v2, :cond_2

    move v1, v2

    :goto_1
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/MultiWindowPrefEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MultiWindowPrefEnabler;->mMultiWindowObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 57
    iget-object v0, p0, Lcom/android/settings/MultiWindowPrefEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 58
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/settings/MultiWindowPrefEnabler;->updateSwitch()V

    .line 50
    iget-object v0, p0, Lcom/android/settings/MultiWindowPrefEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 51
    iget-object v0, p0, Lcom/android/settings/MultiWindowPrefEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "multi_window_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/MultiWindowPrefEnabler;->mMultiWindowObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 53
    return-void
.end method

.method public updateSwitch()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 87
    iget-object v5, p0, Lcom/android/settings/MultiWindowPrefEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "access_control_enabled"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_0

    move v0, v3

    .line 89
    .local v0, bAccessControlDisabled:Z
    :goto_0
    iget-object v5, p0, Lcom/android/settings/MultiWindowPrefEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "easy_mode_switch"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_1

    move v1, v3

    .line 92
    .local v1, bBasicMode:Z
    :goto_1
    iget-object v5, p0, Lcom/android/settings/MultiWindowPrefEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "multi_window_enabled"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 95
    .local v2, state:I
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 96
    iget-object v5, p0, Lcom/android/settings/MultiWindowPrefEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    if-ne v2, v3, :cond_2

    :goto_2
    invoke-virtual {v5, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 102
    :goto_3
    return-void

    .end local v0           #bAccessControlDisabled:Z
    .end local v1           #bBasicMode:Z
    .end local v2           #state:I
    :cond_0
    move v0, v4

    .line 87
    goto :goto_0

    .restart local v0       #bAccessControlDisabled:Z
    :cond_1
    move v1, v4

    .line 89
    goto :goto_1

    .restart local v1       #bBasicMode:Z
    .restart local v2       #state:I
    :cond_2
    move v3, v4

    .line 96
    goto :goto_2

    .line 98
    :cond_3
    iget-object v5, p0, Lcom/android/settings/MultiWindowPrefEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    if-ne v2, v3, :cond_4

    :goto_4
    invoke-virtual {v5, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 99
    iget-object v3, p0, Lcom/android/settings/MultiWindowPrefEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_3

    :cond_4
    move v3, v4

    .line 98
    goto :goto_4
.end method
