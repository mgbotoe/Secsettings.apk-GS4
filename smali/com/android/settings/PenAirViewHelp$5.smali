.class Lcom/android/settings/PenAirViewHelp$5;
.super Ljava/lang/Object;
.source "PenAirViewHelp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/PenAirViewHelp;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PenAirViewHelp;


# direct methods
.method constructor <init>(Lcom/android/settings/PenAirViewHelp;)V
    .locals 0
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/settings/PenAirViewHelp$5;->this$0:Lcom/android/settings/PenAirViewHelp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/settings/PenAirViewHelp$5;->this$0:Lcom/android/settings/PenAirViewHelp;

    invoke-virtual {v0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PenAirViewHelp$5;->this$0:Lcom/android/settings/PenAirViewHelp;

    #getter for: Lcom/android/settings/PenAirViewHelp;->mDBItem:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/PenAirViewHelp;->access$000(Lcom/android/settings/PenAirViewHelp;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/settings/PenAirViewHelp$5;->this$0:Lcom/android/settings/PenAirViewHelp;

    const-string v1, "list_scroll"

    #calls: Lcom/android/settings/PenAirViewHelp;->showTurnOnDialog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/PenAirViewHelp;->access$100(Lcom/android/settings/PenAirViewHelp;Ljava/lang/String;)V

    .line 223
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/android/settings/PenAirViewHelp$5;->this$0:Lcom/android/settings/PenAirViewHelp;

    const-string v1, "list_scroll"

    invoke-virtual {v0, v1}, Lcom/android/settings/PenAirViewHelp;->startTryActually(Ljava/lang/String;)V

    goto :goto_0
.end method
