.class Lcom/android/settings/DreamSettings$1;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DreamSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DreamSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DreamSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/settings/DreamSettings$1;->this$0:Lcom/android/settings/DreamSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x0

    .line 106
    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/android/settings/DreamSettings$1;->this$0:Lcom/android/settings/DreamSettings;

    #getter for: Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settings/DreamBackend;
    invoke-static {v1}, Lcom/android/settings/DreamSettings;->access$100(Lcom/android/settings/DreamSettings;)Lcom/android/settings/DreamBackend;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/DreamBackend;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 107
    iget-object v1, p0, Lcom/android/settings/DreamSettings$1;->this$0:Lcom/android/settings/DreamSettings;

    invoke-virtual {v1}, Lcom/android/settings/DreamSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 109
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/DreamSettings$1;->this$0:Lcom/android/settings/DreamSettings;

    #getter for: Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/DreamSettings;->access$200(Lcom/android/settings/DreamSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 110
    .local v0, mAlertBuilder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f09057e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 111
    const v1, 0x7f090ba4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 112
    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/DreamSettings$1$1;

    invoke-direct {v2, p0}, Lcom/android/settings/DreamSettings$1$1;-><init>(Lcom/android/settings/DreamSettings$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 123
    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings/DreamSettings$1$2;

    invoke-direct {v2, p0}, Lcom/android/settings/DreamSettings$1$2;-><init>(Lcom/android/settings/DreamSettings$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 130
    new-instance v1, Lcom/android/settings/DreamSettings$1$3;

    invoke-direct {v1, p0}, Lcom/android/settings/DreamSettings$1$3;-><init>(Lcom/android/settings/DreamSettings$1;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 139
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 140
    iget-object v1, p0, Lcom/android/settings/DreamSettings$1;->this$0:Lcom/android/settings/DreamSettings;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/DreamSettings;->mAlertDialog:Landroid/app/AlertDialog;

    .line 141
    iget-object v1, p0, Lcom/android/settings/DreamSettings$1;->this$0:Lcom/android/settings/DreamSettings;

    iget-object v1, v1, Lcom/android/settings/DreamSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 158
    .end local v0           #mAlertBuilder:Landroid/app/AlertDialog$Builder;
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/android/settings/DreamSettings$1;->this$0:Lcom/android/settings/DreamSettings;

    invoke-virtual {v1}, Lcom/android/settings/DreamSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "desk_home_screen_display"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 146
    iget-object v1, p0, Lcom/android/settings/DreamSettings$1;->this$0:Lcom/android/settings/DreamSettings;

    #getter for: Lcom/android/settings/DreamSettings;->mRefreshing:Z
    invoke-static {v1}, Lcom/android/settings/DreamSettings;->access$300(Lcom/android/settings/DreamSettings;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 147
    iget-object v1, p0, Lcom/android/settings/DreamSettings$1;->this$0:Lcom/android/settings/DreamSettings;

    #getter for: Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settings/DreamBackend;
    invoke-static {v1}, Lcom/android/settings/DreamSettings;->access$100(Lcom/android/settings/DreamSettings;)Lcom/android/settings/DreamBackend;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/DreamBackend;->setEnabled(Z)V

    .line 148
    iget-object v1, p0, Lcom/android/settings/DreamSettings$1;->this$0:Lcom/android/settings/DreamSettings;

    #calls: Lcom/android/settings/DreamSettings;->refreshFromBackend()V
    invoke-static {v1}, Lcom/android/settings/DreamSettings;->access$400(Lcom/android/settings/DreamSettings;)V

    .line 154
    :cond_2
    iget-object v1, p0, Lcom/android/settings/DreamSettings$1;->this$0:Lcom/android/settings/DreamSettings;

    #getter for: Lcom/android/settings/DreamSettings;->mRefreshing:Z
    invoke-static {v1}, Lcom/android/settings/DreamSettings;->access$300(Lcom/android/settings/DreamSettings;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/android/settings/DreamSettings$1;->this$0:Lcom/android/settings/DreamSettings;

    #getter for: Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settings/DreamBackend;
    invoke-static {v1}, Lcom/android/settings/DreamSettings;->access$100(Lcom/android/settings/DreamSettings;)Lcom/android/settings/DreamBackend;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/settings/DreamBackend;->setEnabled(Z)V

    .line 156
    iget-object v1, p0, Lcom/android/settings/DreamSettings$1;->this$0:Lcom/android/settings/DreamSettings;

    #calls: Lcom/android/settings/DreamSettings;->refreshFromBackend()V
    invoke-static {v1}, Lcom/android/settings/DreamSettings;->access$400(Lcom/android/settings/DreamSettings;)V

    goto :goto_0
.end method
