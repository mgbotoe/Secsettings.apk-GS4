.class Lcom/android/settings/DisplayAdvanceMenu$2;
.super Ljava/lang/Object;
.source "DisplayAdvanceMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DisplayAdvanceMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DisplayAdvanceMenu;


# direct methods
.method constructor <init>(Lcom/android/settings/DisplayAdvanceMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/settings/DisplayAdvanceMenu$2;->this$0:Lcom/android/settings/DisplayAdvanceMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/settings/DisplayAdvanceMenu$2;->this$0:Lcom/android/settings/DisplayAdvanceMenu;

    invoke-virtual {v0}, Lcom/android/settings/DisplayAdvanceMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "desk_home_screen_display"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 253
    new-instance v0, Lcom/android/settings/DreamBackend;

    iget-object v1, p0, Lcom/android/settings/DisplayAdvanceMenu$2;->this$0:Lcom/android/settings/DisplayAdvanceMenu;

    invoke-virtual {v1}, Lcom/android/settings/DisplayAdvanceMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/DreamBackend;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/DreamBackend;->setEnabled(Z)V

    .line 254
    iget-object v0, p0, Lcom/android/settings/DisplayAdvanceMenu$2;->this$0:Lcom/android/settings/DisplayAdvanceMenu;

    #calls: Lcom/android/settings/DisplayAdvanceMenu;->updateScreenSaverSummary()V
    invoke-static {v0}, Lcom/android/settings/DisplayAdvanceMenu;->access$100(Lcom/android/settings/DisplayAdvanceMenu;)V

    .line 255
    return-void
.end method
