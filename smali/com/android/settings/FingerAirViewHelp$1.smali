.class Lcom/android/settings/FingerAirViewHelp$1;
.super Ljava/lang/Object;
.source "FingerAirViewHelp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/FingerAirViewHelp;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FingerAirViewHelp;


# direct methods
.method constructor <init>(Lcom/android/settings/FingerAirViewHelp;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/settings/FingerAirViewHelp$1;->this$0:Lcom/android/settings/FingerAirViewHelp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/settings/FingerAirViewHelp$1;->this$0:Lcom/android/settings/FingerAirViewHelp;

    invoke-virtual {v0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/FingerAirViewHelp$1;->this$0:Lcom/android/settings/FingerAirViewHelp;

    #getter for: Lcom/android/settings/FingerAirViewHelp;->mDBItem:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/FingerAirViewHelp;->access$000(Lcom/android/settings/FingerAirViewHelp;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/settings/FingerAirViewHelp$1;->this$0:Lcom/android/settings/FingerAirViewHelp;

    const-string v1, "information_preview_splanner"

    #calls: Lcom/android/settings/FingerAirViewHelp;->showTurnOnDialog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/FingerAirViewHelp;->access$100(Lcom/android/settings/FingerAirViewHelp;Ljava/lang/String;)V

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/settings/FingerAirViewHelp$1;->this$0:Lcom/android/settings/FingerAirViewHelp;

    const-string v1, "information_preview_splanner"

    invoke-virtual {v0, v1}, Lcom/android/settings/FingerAirViewHelp;->startTryActually(Ljava/lang/String;)V

    goto :goto_0
.end method
