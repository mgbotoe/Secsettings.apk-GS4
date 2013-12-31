.class public Lcom/android/settings/nearby/RejectListPreference;
.super Landroid/preference/MultiSelectListPreference;
.source "RejectListPreference.java"


# static fields
.field private static final HANDLE_REDRAW_POPUP:I = 0xbb9

.field public static final TAGClass:Ljava/lang/String; = "RejectListPreference"


# instance fields
.field private context:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field mEnabler:Lcom/android/settings/nearby/NearbyEnabler;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/preference/MultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    iput-object v0, p0, Lcom/android/settings/nearby/RejectListPreference;->context:Landroid/content/Context;

    .line 24
    iput-object v0, p0, Lcom/android/settings/nearby/RejectListPreference;->mDialog:Landroid/app/AlertDialog;

    .line 34
    iput-object v0, p0, Lcom/android/settings/nearby/RejectListPreference;->mEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    .line 105
    new-instance v0, Lcom/android/settings/nearby/RejectListPreference$2;

    invoke-direct {v0, p0}, Lcom/android/settings/nearby/RejectListPreference$2;-><init>(Lcom/android/settings/nearby/RejectListPreference;)V

    iput-object v0, p0, Lcom/android/settings/nearby/RejectListPreference;->mHandler:Landroid/os/Handler;

    .line 29
    iput-object p1, p0, Lcom/android/settings/nearby/RejectListPreference;->context:Landroid/content/Context;

    .line 30
    const v0, 0x7f090f70

    invoke-virtual {p0, v0}, Lcom/android/settings/nearby/RejectListPreference;->setPositiveButtonText(I)V

    .line 31
    const v0, 0x7f090f69

    invoke-virtual {p0, v0}, Lcom/android/settings/nearby/RejectListPreference;->setNegativeButtonText(I)V

    .line 32
    return-void
.end method

.method private getRejectList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/nearby/RejectListPreference;->mEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/android/settings/nearby/RejectListPreference;->mEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nearby/NearbyEnabler;->getRejectList()[Ljava/lang/String;

    move-result-object v0

    .line 44
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getRejectListValue()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/nearby/RejectListPreference;->mEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/settings/nearby/RejectListPreference;->mEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nearby/NearbyEnabler;->getRejectListValue()[Ljava/lang/String;

    move-result-object v0

    .line 51
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 3
    .parameter "builder"

    .prologue
    .line 56
    const-string v0, "RejectListPreference"

    const-string v1, "onPrepareDialogBuilder"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-super {p0, p1}, Landroid/preference/MultiSelectListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 58
    return-void
.end method

.method public setEnabler(Lcom/android/settings/nearby/NearbyEnabler;)V
    .locals 0
    .parameter "enabler"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/settings/nearby/RejectListPreference;->mEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    .line 38
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 7
    .parameter "state"

    .prologue
    const/4 v6, 0x1

    .line 62
    const-string v3, "RejectListPreference"

    const-string v4, "showDialog"

    const-string v5, ""

    invoke-static {v3, v4, v5}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0}, Lcom/android/settings/nearby/RejectListPreference;->getRejectList()[Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, entries:[Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings/nearby/RejectListPreference;->getRejectListValue()[Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, entryValues:[Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    array-length v3, v1

    if-lt v3, v6, :cond_0

    array-length v3, v2

    if-ge v3, v6, :cond_1

    .line 68
    :cond_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/settings/nearby/RejectListPreference;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/settings/nearby/RejectListPreference;->context:Landroid/content/Context;

    const v5, 0x7f090f7a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/nearby/RejectListPreference;->context:Landroid/content/Context;

    const v5, 0x7f090f78

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090f68

    new-instance v5, Lcom/android/settings/nearby/RejectListPreference$1;

    invoke-direct {v5, p0}, Lcom/android/settings/nearby/RejectListPreference$1;-><init>(Lcom/android/settings/nearby/RejectListPreference;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/nearby/RejectListPreference;->mDialog:Landroid/app/AlertDialog;

    .line 87
    :goto_0
    return-void

    .line 79
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/settings/nearby/RejectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {p0, v2}, Lcom/android/settings/nearby/RejectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 82
    invoke-super {p0, p1}, Landroid/preference/MultiSelectListPreference;->showDialog(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/nearby/RejectListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 85
    .local v0, dialog:Landroid/app/AlertDialog;
    iput-object v0, p0, Lcom/android/settings/nearby/RejectListPreference;->mDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public updateDialog()Z
    .locals 4

    .prologue
    .line 90
    const-string v0, "RejectListPreference"

    const-string v1, "updateDialog"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/android/settings/nearby/RejectListPreference;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/settings/nearby/RejectListPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const-string v0, "RejectListPreference"

    const-string v1, "updateDialog"

    const-string v2, "refresh popup"

    invoke-static {v0, v1, v2}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/android/settings/nearby/RejectListPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 97
    iget-object v0, p0, Lcom/android/settings/nearby/RejectListPreference;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xbb9

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 99
    const/4 v0, 0x1

    .line 102
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
