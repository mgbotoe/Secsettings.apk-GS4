.class Lcom/android/settings/wifi/WifiSecSetupActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiSecSetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSecSetupActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSecSetupActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSecSetupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity$1;->this$0:Lcom/android/settings/wifi/WifiSecSetupActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity$1;->this$0:Lcom/android/settings/wifi/WifiSecSetupActivity;

    #calls: Lcom/android/settings/wifi/WifiSecSetupActivity;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, p1, p2}, Lcom/android/settings/wifi/WifiSecSetupActivity;->access$000(Lcom/android/settings/wifi/WifiSecSetupActivity;Landroid/content/Context;Landroid/content/Intent;)V

    .line 148
    return-void
.end method
