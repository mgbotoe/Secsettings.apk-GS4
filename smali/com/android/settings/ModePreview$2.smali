.class Lcom/android/settings/ModePreview$2;
.super Ljava/lang/Object;
.source "ModePreview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ModePreview;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ModePreview;


# direct methods
.method constructor <init>(Lcom/android/settings/ModePreview;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/settings/ModePreview$2;->this$0:Lcom/android/settings/ModePreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 111
    iget-object v0, p0, Lcom/android/settings/ModePreview$2;->this$0:Lcom/android/settings/ModePreview;

    invoke-virtual {v0}, Lcom/android/settings/ModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_mode_automatic_setting"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/settings/ModePreview$2;->this$0:Lcom/android/settings/ModePreview;

    #getter for: Lcom/android/settings/ModePreview;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/settings/ModePreview;->access$100(Lcom/android/settings/ModePreview;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 115
    :goto_0
    iget-object v0, p0, Lcom/android/settings/ModePreview$2;->this$0:Lcom/android/settings/ModePreview;

    invoke-virtual {v0}, Lcom/android/settings/ModePreview;->finish()V

    .line 116
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ModePreview$2;->this$0:Lcom/android/settings/ModePreview;

    invoke-virtual {v0}, Lcom/android/settings/ModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_mode_setting"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    goto :goto_0
.end method
