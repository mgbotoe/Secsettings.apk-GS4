.class Lcom/android/settings/WirelessSettings$1;
.super Landroid/database/ContentObserver;
.source "WirelessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/WirelessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/WirelessSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/WirelessSettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 479
    iput-object p1, p0, Lcom/android/settings/WirelessSettings$1;->this$0:Lcom/android/settings/WirelessSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 482
    const-string v0, "WirelessSettings"

    const-string v1, "mSmartNetwork onChange() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v0, p0, Lcom/android/settings/WirelessSettings$1;->this$0:Lcom/android/settings/WirelessSettings;

    #getter for: Lcom/android/settings/WirelessSettings;->mButtonSmartNetworkEnabled:Lcom/android/settings/SmartNetworkPreference;
    invoke-static {v0}, Lcom/android/settings/WirelessSettings;->access$000(Lcom/android/settings/WirelessSettings;)Lcom/android/settings/SmartNetworkPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/WirelessSettings$1;->this$0:Lcom/android/settings/WirelessSettings;

    invoke-virtual {v1}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/SmartNetworkPreference;->updateSmartNetworkPreference(Landroid/content/Context;)V

    .line 484
    return-void
.end method
