.class Lcom/android/settings/NotificationPanelMenu$6;
.super Ljava/lang/Object;
.source "NotificationPanelMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/NotificationPanelMenu;->refreshUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NotificationPanelMenu;


# direct methods
.method constructor <init>(Lcom/android/settings/NotificationPanelMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 696
    iput-object p1, p0, Lcom/android/settings/NotificationPanelMenu$6;->this$0:Lcom/android/settings/NotificationPanelMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu$6;->this$0:Lcom/android/settings/NotificationPanelMenu;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/NotificationPanelMenu$6;->this$0:Lcom/android/settings/NotificationPanelMenu;

    invoke-virtual {v2}, Lcom/android/settings/NotificationPanelMenu;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0914d8

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0914d9

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/NotificationPanelMenu$6$2;

    invoke-direct {v3, p0}, Lcom/android/settings/NotificationPanelMenu$6$2;-><init>(Lcom/android/settings/NotificationPanelMenu$6;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/android/settings/NotificationPanelMenu$6$1;

    invoke-direct {v3, p0}, Lcom/android/settings/NotificationPanelMenu$6$1;-><init>(Lcom/android/settings/NotificationPanelMenu$6;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    #setter for: Lcom/android/settings/NotificationPanelMenu;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/settings/NotificationPanelMenu;->access$1102(Lcom/android/settings/NotificationPanelMenu;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 718
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu$6;->this$0:Lcom/android/settings/NotificationPanelMenu;

    #getter for: Lcom/android/settings/NotificationPanelMenu;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings/NotificationPanelMenu;->access$1100(Lcom/android/settings/NotificationPanelMenu;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 719
    return-void
.end method
