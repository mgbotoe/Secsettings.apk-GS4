.class Lcom/android/settings/premiumwatch/PremiumWatchEditSignature$1;
.super Ljava/lang/Object;
.source "PremiumWatchEditSignature.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;


# direct methods
.method constructor <init>(Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature$1;->this$0:Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 104
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 99
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v4, -0x1

    .line 89
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, text:Ljava/lang/String;
    const-string v1, ""

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature$1;->this$0:Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;

    #getter for: Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->access$000(Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature$1;->this$0:Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;

    #getter for: Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->access$000(Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
