.class Lcom/android/settings/DataUsageSummary$ConfirmBackgroundTraffic$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DataUsageSummary$ConfirmBackgroundTraffic;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary$ConfirmBackgroundTraffic;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary$ConfirmBackgroundTraffic;)V
    .locals 0
    .parameter

    .prologue
    .line 2882
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$ConfirmBackgroundTraffic$1;->this$0:Lcom/android/settings/DataUsageSummary$ConfirmBackgroundTraffic;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2885
    const-string v1, "DataUsage"

    const-string v2, "ConfirmBackgroundTraffic PositiveButton"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2886
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$ConfirmBackgroundTraffic$1;->this$0:Lcom/android/settings/DataUsageSummary$ConfirmBackgroundTraffic;

    invoke-virtual {v1}, Lcom/android/settings/DataUsageSummary$ConfirmBackgroundTraffic;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary;

    .line 2887
    .local v0, target:Lcom/android/settings/DataUsageSummary;
    if-eqz v0, :cond_0

    .line 2888
    #calls: Lcom/android/settings/DataUsageSummary;->setBackgroundTrafficOn()V
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$3900(Lcom/android/settings/DataUsageSummary;)V

    .line 2890
    :cond_0
    return-void
.end method
