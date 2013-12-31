.class Lcom/android/settings/AssistiveHapticSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AssistiveHapticSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AssistiveHapticSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/settings/AssistiveHapticSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/AssistiveHapticSettings;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "handler"
    .parameter "context"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/settings/AssistiveHapticSettings$SettingsObserver;->this$0:Lcom/android/settings/AssistiveHapticSettings;

    .line 137
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 138
    iput-object p3, p0, Lcom/android/settings/AssistiveHapticSettings$SettingsObserver;->mContext:Landroid/content/Context;

    .line 139
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/settings/AssistiveHapticSettings$SettingsObserver;->this$0:Lcom/android/settings/AssistiveHapticSettings;

    #calls: Lcom/android/settings/AssistiveHapticSettings;->updateState()V
    invoke-static {v0}, Lcom/android/settings/AssistiveHapticSettings;->access$000(Lcom/android/settings/AssistiveHapticSettings;)V

    .line 153
    return-void
.end method

.method startObserving()V
    .locals 3

    .prologue
    .line 142
    iget-object v1, p0, Lcom/android/settings/AssistiveHapticSettings$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 143
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "haptic_feedback_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 144
    return-void
.end method

.method stopObserving()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/settings/AssistiveHapticSettings$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 148
    return-void
.end method
