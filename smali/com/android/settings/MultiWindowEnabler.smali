.class public Lcom/android/settings/MultiWindowEnabler;
.super Ljava/lang/Object;
.source "MultiWindowEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHeader:Landroid/preference/PreferenceActivity$Header;

.field private mMultiWindowObserver:Landroid/database/ContentObserver;

.field private mPosition:I

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/settings/MultiWindowEnabler;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .parameter "context"
    .parameter "switch_"

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/android/settings/MultiWindowEnabler;->mSwitch:Landroid/widget/Switch;

    .line 28
    iput-object v0, p0, Lcom/android/settings/MultiWindowEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/MultiWindowEnabler;->mPosition:I

    .line 36
    new-instance v0, Lcom/android/settings/MultiWindowEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/MultiWindowEnabler$1;-><init>(Lcom/android/settings/MultiWindowEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/MultiWindowEnabler;->mMultiWindowObserver:Landroid/database/ContentObserver;

    .line 45
    iput-object p1, p0, Lcom/android/settings/MultiWindowEnabler;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/android/settings/MultiWindowEnabler;->mSwitch:Landroid/widget/Switch;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MultiWindowEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/settings/MultiWindowEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/MultiWindowEnabler;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/settings/MultiWindowEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/MultiWindowEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/settings/MultiWindowEnabler;->removeEnabledScreenReaderValue()V

    return-void
.end method

.method private isEnabledScreenReaderService()Z
    .locals 6

    .prologue
    .line 110
    iget-object v4, p0, Lcom/android/settings/MultiWindowEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enabled_accessibility_services"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, enabledServicesSetting:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 114
    const-string v3, ""

    .line 117
    :cond_0
    sget-object v0, Lcom/android/settings/MultiWindowEnabler;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 119
    .local v0, colonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v0, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 121
    :cond_1
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 122
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, componentNameString:Ljava/lang/String;
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 125
    .local v2, enabledService:Landroid/content/ComponentName;
    if-eqz v2, :cond_1

    .line 126
    const-string v4, "com.google.android.marvin.talkback"

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 127
    const/4 v4, 0x1

    .line 130
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
    .line 172
    iget-object v4, p0, Lcom/android/settings/MultiWindowEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enabled_accessibility_services"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 175
    .local v3, enabledServicesSetting:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 194
    :goto_0
    return-void

    .line 178
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .local v0, builder:Ljava/lang/StringBuilder;
    sget-object v1, Lcom/android/settings/MultiWindowEnabler;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 180
    .local v1, colonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v1, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 182
    :cond_1
    :goto_1
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 183
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, componentNameString:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 186
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 189
    :cond_2
    if-eqz v2, :cond_1

    const-string v4, "com.google.android.marvin.talkback"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 190
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 193
    .end local v2           #componentNameString:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/settings/MultiWindowEnabler;->mContext:Landroid/content/Context;

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
    .line 134
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/MultiWindowEnabler;->mContext:Landroid/content/Context;

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

    new-instance v2, Lcom/android/settings/MultiWindowEnabler$4;

    invoke-direct {v2, p0}, Lcom/android/settings/MultiWindowEnabler$4;-><init>(Lcom/android/settings/MultiWindowEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings/MultiWindowEnabler$3;

    invoke-direct {v2, p0}, Lcom/android/settings/MultiWindowEnabler$3;-><init>(Lcom/android/settings/MultiWindowEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/MultiWindowEnabler$2;

    invoke-direct {v1, p0}, Lcom/android/settings/MultiWindowEnabler$2;-><init>(Lcom/android/settings/MultiWindowEnabler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 169
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    const/4 v0, 0x1

    .line 79
    invoke-direct {p0}, Lcom/android/settings/MultiWindowEnabler;->isEnabledScreenReaderService()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    if-eqz p2, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/android/settings/MultiWindowEnabler;->showTalkBackDisablePopup()V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/android/settings/MultiWindowEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "multi_window_enabled"

    if-ne p2, v0, :cond_2

    :goto_1
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings/MultiWindowEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MultiWindowEnabler;->mMultiWindowObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 63
    iget-object v0, p0, Lcom/android/settings/MultiWindowEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 64
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/settings/MultiWindowEnabler;->updateSwitch()V

    .line 56
    iget-object v0, p0, Lcom/android/settings/MultiWindowEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 57
    iget-object v0, p0, Lcom/android/settings/MultiWindowEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "multi_window_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/MultiWindowEnabler;->mMultiWindowObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 59
    return-void
.end method

.method public setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 0
    .parameter "header"
    .parameter "position"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/settings/MultiWindowEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 51
    iput p2, p0, Lcom/android/settings/MultiWindowEnabler;->mPosition:I

    .line 52
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 2
    .parameter "switch_"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/MultiWindowEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v0, p1, :cond_0

    .line 75
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MultiWindowEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 71
    iput-object p1, p0, Lcom/android/settings/MultiWindowEnabler;->mSwitch:Landroid/widget/Switch;

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/MultiWindowEnabler;->updateSwitch()V

    .line 74
    iget-object v0, p0, Lcom/android/settings/MultiWindowEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public updateSwitch()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 90
    iget-object v5, p0, Lcom/android/settings/MultiWindowEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "access_control_enabled"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_0

    move v0, v3

    .line 92
    .local v0, bAccessControlDisabled:Z
    :goto_0
    iget-object v5, p0, Lcom/android/settings/MultiWindowEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "easy_mode_switch"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_1

    move v1, v3

    .line 95
    .local v1, bBasicMode:Z
    :goto_1
    iget-object v5, p0, Lcom/android/settings/MultiWindowEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "multi_window_enabled"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 98
    .local v2, state:I
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 99
    iget-object v5, p0, Lcom/android/settings/MultiWindowEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v2, v3, :cond_2

    :goto_2
    invoke-virtual {v5, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 105
    :goto_3
    return-void

    .end local v0           #bAccessControlDisabled:Z
    .end local v1           #bBasicMode:Z
    .end local v2           #state:I
    :cond_0
    move v0, v4

    .line 90
    goto :goto_0

    .restart local v0       #bAccessControlDisabled:Z
    :cond_1
    move v1, v4

    .line 92
    goto :goto_1

    .restart local v1       #bBasicMode:Z
    .restart local v2       #state:I
    :cond_2
    move v3, v4

    .line 99
    goto :goto_2

    .line 101
    :cond_3
    iget-object v5, p0, Lcom/android/settings/MultiWindowEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v2, v3, :cond_4

    :goto_4
    invoke-virtual {v5, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 102
    iget-object v3, p0, Lcom/android/settings/MultiWindowEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_3

    :cond_4
    move v3, v4

    .line 101
    goto :goto_4
.end method
