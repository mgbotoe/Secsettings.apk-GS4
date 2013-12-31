.class Lcom/android/settings/AirButtonHelp$6;
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
    .line 292
    iput-object p1, p0, Lcom/android/settings/AirButtonHelp$6;->this$0:Lcom/android/settings/AirButtonHelp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const v10, 0x7f090e40

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 295
    iget-object v6, p0, Lcom/android/settings/AirButtonHelp$6;->this$0:Lcom/android/settings/AirButtonHelp;

    invoke-virtual {v6}, Lcom/android/settings/AirButtonHelp;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 296
    iget-object v6, p0, Lcom/android/settings/AirButtonHelp$6;->this$0:Lcom/android/settings/AirButtonHelp;

    invoke-virtual {v6}, Lcom/android/settings/AirButtonHelp;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "air_view_master_onoff"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_1

    move v3, v4

    .line 297
    .local v3, isAirViewEnabled:Z
    :goto_0
    iget-object v6, p0, Lcom/android/settings/AirButtonHelp$6;->this$0:Lcom/android/settings/AirButtonHelp;

    invoke-virtual {v6}, Lcom/android/settings/AirButtonHelp;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "air_button_onoff"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_2

    move v2, v4

    .line 299
    .local v2, isAirButtonEnabled:Z
    :goto_1
    if-nez v2, :cond_3

    .line 300
    iget-object v6, p0, Lcom/android/settings/AirButtonHelp$6;->this$0:Lcom/android/settings/AirButtonHelp;

    const v7, 0x7f090e6a

    new-array v8, v4, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/settings/AirButtonHelp$6;->this$0:Lcom/android/settings/AirButtonHelp;

    invoke-virtual {v9, v10}, Lcom/android/settings/AirButtonHelp;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-virtual {v6, v7, v8}, Lcom/android/settings/AirButtonHelp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, dialogTitle:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/AirButtonHelp$6;->this$0:Lcom/android/settings/AirButtonHelp;

    const v7, 0x7f090e6b

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/settings/AirButtonHelp$6;->this$0:Lcom/android/settings/AirButtonHelp;

    invoke-virtual {v9, v10}, Lcom/android/settings/AirButtonHelp;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    iget-object v5, p0, Lcom/android/settings/AirButtonHelp$6;->this$0:Lcom/android/settings/AirButtonHelp;

    const v9, 0x7f090e5f

    invoke-virtual {v5, v9}, Lcom/android/settings/AirButtonHelp;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    invoke-virtual {v6, v7, v8}, Lcom/android/settings/AirButtonHelp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, dialogSummary:Ljava/lang/String;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/settings/AirButtonHelp$6;->this$0:Lcom/android/settings/AirButtonHelp;

    invoke-virtual {v5}, Lcom/android/settings/AirButtonHelp;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0914e3

    new-instance v6, Lcom/android/settings/AirButtonHelp$6$2;

    invoke-direct {v6, p0}, Lcom/android/settings/AirButtonHelp$6$2;-><init>(Lcom/android/settings/AirButtonHelp$6;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090173

    new-instance v6, Lcom/android/settings/AirButtonHelp$6$1;

    invoke-direct {v6, p0}, Lcom/android/settings/AirButtonHelp$6$1;-><init>(Lcom/android/settings/AirButtonHelp$6;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 323
    .end local v0           #dialogSummary:Ljava/lang/String;
    .end local v1           #dialogTitle:Ljava/lang/String;
    .end local v2           #isAirButtonEnabled:Z
    .end local v3           #isAirViewEnabled:Z
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v3, v5

    .line 296
    goto :goto_0

    .restart local v3       #isAirViewEnabled:Z
    :cond_2
    move v2, v5

    .line 297
    goto :goto_1

    .line 318
    .restart local v2       #isAirButtonEnabled:Z
    :cond_3
    iget-object v4, p0, Lcom/android/settings/AirButtonHelp$6;->this$0:Lcom/android/settings/AirButtonHelp;

    invoke-virtual {v4}, Lcom/android/settings/AirButtonHelp;->startTutorialDisplayFuncionalMenu()V

    goto :goto_2
.end method
