.class Lcom/android/settings/DisplayAdvanceMenu$1;
.super Landroid/database/ContentObserver;
.source "DisplayAdvanceMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DisplayAdvanceMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DisplayAdvanceMenu;


# direct methods
.method constructor <init>(Lcom/android/settings/DisplayAdvanceMenu;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/settings/DisplayAdvanceMenu$1;->this$0:Lcom/android/settings/DisplayAdvanceMenu;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/4 v0, 0x0

    .line 67
    iget-object v1, p0, Lcom/android/settings/DisplayAdvanceMenu$1;->this$0:Lcom/android/settings/DisplayAdvanceMenu;

    #getter for: Lcom/android/settings/DisplayAdvanceMenu;->mReadingMode:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v1}, Lcom/android/settings/DisplayAdvanceMenu;->access$000(Lcom/android/settings/DisplayAdvanceMenu;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DisplayAdvanceMenu$1;->this$0:Lcom/android/settings/DisplayAdvanceMenu;

    invoke-virtual {v2}, Lcom/android/settings/DisplayAdvanceMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "e_reading_display_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 69
    return-void
.end method
