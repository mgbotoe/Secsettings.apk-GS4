.class Lcom/android/settings/DataUsageSummary$DeniedBackgroundTraffic$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DataUsageSummary$DeniedBackgroundTraffic;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary$DeniedBackgroundTraffic;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary$DeniedBackgroundTraffic;)V
    .locals 0
    .parameter

    .prologue
    .line 2915
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$DeniedBackgroundTraffic$1;->this$0:Lcom/android/settings/DataUsageSummary$DeniedBackgroundTraffic;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2918
    const-string v1, "DataUsage"

    const-string v2, "ConfirmBackgroundTraffic PositiveButton"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2919
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$DeniedBackgroundTraffic$1;->this$0:Lcom/android/settings/DataUsageSummary$DeniedBackgroundTraffic;

    invoke-virtual {v1}, Lcom/android/settings/DataUsageSummary$DeniedBackgroundTraffic;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary;

    .line 2920
    .local v0, target:Lcom/android/settings/DataUsageSummary;
    if-eqz v0, :cond_0

    .line 2921
    #calls: Lcom/android/settings/DataUsageSummary;->setBackgroundTrafficOff()V
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$4000(Lcom/android/settings/DataUsageSummary;)V

    .line 2923
    :cond_0
    return-void
.end method
