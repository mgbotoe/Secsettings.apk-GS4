.class Lcom/android/settings/wifi/WifiCaptiveActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiCaptiveActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiCaptiveActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiCaptiveActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiCaptiveActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/settings/wifi/WifiCaptiveActivity$2;->this$0:Lcom/android/settings/wifi/WifiCaptiveActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/settings/wifi/WifiCaptiveActivity$2;->this$0:Lcom/android/settings/wifi/WifiCaptiveActivity;

    #calls: Lcom/android/settings/wifi/WifiCaptiveActivity;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, p1, p2}, Lcom/android/settings/wifi/WifiCaptiveActivity;->access$1200(Lcom/android/settings/wifi/WifiCaptiveActivity;Landroid/content/Context;Landroid/content/Intent;)V

    .line 201
    return-void
.end method
