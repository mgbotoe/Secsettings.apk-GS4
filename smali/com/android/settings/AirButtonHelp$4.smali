.class Lcom/android/settings/AirButtonHelp$4;
.super Ljava/lang/Object;
.source "AirButtonHelp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AirButtonHelp;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AirButtonHelp;


# direct methods
.method constructor <init>(Lcom/android/settings/AirButtonHelp;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/settings/AirButtonHelp$4;->this$0:Lcom/android/settings/AirButtonHelp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const v9, 0x7f090e40

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 224
    iget-object v5, p0, Lcom/android/settings/AirButtonHelp$4;->this$0:Lcom/android/settings/AirButtonHelp;

    invoke-virtual {v5}, Lcom/android/settings/AirButtonHelp;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 225
    iget-object v5, p0, Lcom/android/settings/AirButtonHelp$4;->this$0:Lcom/android/settings/AirButtonHelp;

    invoke-virtual {v5}, Lcom/android/settings/AirButtonHelp;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "air_button_onoff"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    move v2, v3

    .line 227
    .local v2, isAirButtonEnabled:Z
    :goto_0
    if-nez v2, :cond_2

    .line 229
    iget-object v5, p0, Lcom/android/settings/AirButtonHelp$4;->this$0:Lcom/android/settings/AirButtonHelp;

    const v6, 0x7f090e6a

    new-array v7, v3, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/settings/AirButtonHelp$4;->this$0:Lcom/android/settings/AirButtonHelp;

    invoke-virtual {v8, v9}, Lcom/android/settings/AirButtonHelp;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v5, v6, v7}, Lcom/android/settings/AirButtonHelp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, dialogTitle:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/AirButtonHelp$4;->this$0:Lcom/android/settings/AirButtonHelp;

    const v6, 0x7f090e6b

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/settings/AirButtonHelp$4;->this$0:Lcom/android/settings/AirButtonHelp;

    invoke-virtual {v8, v9}, Lcom/android/settings/AirButtonHelp;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    iget-object v4, p0, Lcom/android/settings/AirButtonHelp$4;->this$0:Lcom/android/settings/AirButtonHelp;

    const v8, 0x7f090e5b

    invoke-virtual {v4, v8}, Lcom/android/settings/AirButtonHelp;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v3

    invoke-virtual {v5, v6, v7}, Lcom/android/settings/AirButtonHelp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, dialogSummary:Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/settings/AirButtonHelp$4;->this$0:Lcom/android/settings/AirButtonHelp;

    invoke-virtual {v4}, Lcom/android/settings/AirButtonHelp;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0914e3

    new-instance v5, Lcom/android/settings/AirButtonHelp$4$2;

    invoke-direct {v5, p0}, Lcom/android/settings/AirButtonHelp$4$2;-><init>(Lcom/android/settings/AirButtonHelp$4;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090173

    new-instance v5, Lcom/android/settings/AirButtonHelp$4$1;

    invoke-direct {v5, p0}, Lcom/android/settings/AirButtonHelp$4$1;-><init>(Lcom/android/settings/AirButtonHelp$4;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 252
    .end local v0           #dialogSummary:Ljava/lang/String;
    .end local v1           #dialogTitle:Ljava/lang/String;
    .end local v2           #isAirButtonEnabled:Z
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v4

    .line 225
    goto :goto_0

    .line 247
    .restart local v2       #isAirButtonEnabled:Z
    :cond_2
    iget-object v3, p0, Lcom/android/settings/AirButtonHelp$4;->this$0:Lcom/android/settings/AirButtonHelp;

    invoke-virtual {v3}, Lcom/android/settings/AirButtonHelp;->startTutorialInsertingContent()V

    goto :goto_1
.end method
