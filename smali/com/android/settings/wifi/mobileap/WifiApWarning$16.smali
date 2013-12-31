.class Lcom/android/settings/wifi/mobileap/WifiApWarning$16;
.super Ljava/lang/Object;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0
    .parameter

    .prologue
    .line 513
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$16;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$16;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    #calls: Lcom/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$1100(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    .line 516
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$16;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    .line 517
    return-void
.end method
