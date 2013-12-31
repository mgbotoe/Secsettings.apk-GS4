.class Lcom/android/settings/AccessibilitySettings$41;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AccessibilitySettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AccessibilitySettings;

.field final synthetic val$checkShortcut:[Z


# direct methods
.method constructor <init>(Lcom/android/settings/AccessibilitySettings;[Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2890
    iput-object p1, p0, Lcom/android/settings/AccessibilitySettings$41;->this$0:Lcom/android/settings/AccessibilitySettings;

    iput-object p2, p0, Lcom/android/settings/AccessibilitySettings$41;->val$checkShortcut:[Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2892
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$41;->this$0:Lcom/android/settings/AccessibilitySettings;

    invoke-virtual {v0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "power_key_hold"

    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$41;->val$checkShortcut:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2893
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$41;->this$0:Lcom/android/settings/AccessibilitySettings;

    invoke-virtual {v0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "talkback_power_key_hold"

    iget-object v4, p0, Lcom/android/settings/AccessibilitySettings$41;->val$checkShortcut:[Z

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_1

    :goto_1
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2894
    return-void

    :cond_0
    move v0, v2

    .line 2892
    goto :goto_0

    :cond_1
    move v1, v2

    .line 2893
    goto :goto_1
.end method
