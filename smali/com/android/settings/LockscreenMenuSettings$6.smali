.class Lcom/android/settings/LockscreenMenuSettings$6;
.super Ljava/lang/Object;
.source "LockscreenMenuSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LockscreenMenuSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LockscreenMenuSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/LockscreenMenuSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1751
    iput-object p1, p0, Lcom/android/settings/LockscreenMenuSettings$6;->this$0:Lcom/android/settings/LockscreenMenuSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v0, 0x1

    .line 1754
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings$6;->this$0:Lcom/android/settings/LockscreenMenuSettings;

    #getter for: Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v1}, Lcom/android/settings/LockscreenMenuSettings;->access$100(Lcom/android/settings/LockscreenMenuSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings$6;->this$0:Lcom/android/settings/LockscreenMenuSettings;

    invoke-virtual {v2}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dualclock_menu_settings"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1755
    return-void

    .line 1754
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
