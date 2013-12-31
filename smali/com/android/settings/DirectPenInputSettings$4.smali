.class Lcom/android/settings/DirectPenInputSettings$4;
.super Ljava/lang/Object;
.source "DirectPenInputSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DirectPenInputSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DirectPenInputSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DirectPenInputSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const v8, 0x7f090cd5

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 238
    iget-object v5, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    #getter for: Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/android/settings/DirectPenInputSettings;->access$100(Lcom/android/settings/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    #getter for: Lcom/android/settings/DirectPenInputSettings;->URI_PEN_WRITING_BUDDY:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings/DirectPenInputSettings;->access$200(Lcom/android/settings/DirectPenInputSettings;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    move v2, v3

    .line 239
    .local v2, writingBuddyOn:Z
    :goto_0
    iget-object v5, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    #getter for: Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/android/settings/DirectPenInputSettings;->access$100(Lcom/android/settings/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    #getter for: Lcom/android/settings/DirectPenInputSettings;->ACCESSIBILITY_MAGNIFICATION_ENABLED:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings/DirectPenInputSettings;->access$300(Lcom/android/settings/DirectPenInputSettings;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    move v0, v3

    .line 240
    .local v0, MagnificationResult:Z
    :goto_1
    if-nez v2, :cond_3

    iget-object v5, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    #getter for: Lcom/android/settings/DirectPenInputSettings;->isShowEnablePopup:Z
    invoke-static {v5}, Lcom/android/settings/DirectPenInputSettings;->access$400(Lcom/android/settings/DirectPenInputSettings;)Z

    move-result v5

    if-nez v5, :cond_3

    if-nez v0, :cond_0

    iget-object v5, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-virtual {v5}, Lcom/android/settings/DirectPenInputSettings;->isTalkBackEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 241
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    const v6, 0x7f090ce8

    invoke-virtual {v5, v6}, Lcom/android/settings/DirectPenInputSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    const v6, 0x7f090ce0

    invoke-virtual {v5, v6}, Lcom/android/settings/DirectPenInputSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    const v6, 0x7f090ce1

    invoke-virtual {v5, v6}, Lcom/android/settings/DirectPenInputSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, message:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-virtual {v4, v1, v3}, Lcom/android/settings/DirectPenInputSettings;->showEnableDialog(Ljava/lang/String;Z)V

    .line 252
    .end local v1           #message:Ljava/lang/String;
    :goto_2
    return-void

    .end local v0           #MagnificationResult:Z
    .end local v2           #writingBuddyOn:Z
    :cond_1
    move v2, v4

    .line 238
    goto :goto_0

    .restart local v2       #writingBuddyOn:Z
    :cond_2
    move v0, v4

    .line 239
    goto :goto_1

    .line 245
    .restart local v0       #MagnificationResult:Z
    :cond_3
    if-nez v2, :cond_4

    iget-object v5, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    #getter for: Lcom/android/settings/DirectPenInputSettings;->isShowEnablePopup:Z
    invoke-static {v5}, Lcom/android/settings/DirectPenInputSettings;->access$400(Lcom/android/settings/DirectPenInputSettings;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 246
    iget-object v5, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    const v6, 0x7f090cde

    invoke-virtual {v5, v6}, Lcom/android/settings/DirectPenInputSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-virtual {v7, v8}, Lcom/android/settings/DirectPenInputSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    iget-object v7, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-virtual {v7, v8}, Lcom/android/settings/DirectPenInputSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 248
    .restart local v1       #message:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-virtual {v3, v1, v4}, Lcom/android/settings/DirectPenInputSettings;->showEnableDialog(Ljava/lang/String;Z)V

    goto :goto_2

    .line 250
    .end local v1           #message:Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    #calls: Lcom/android/settings/DirectPenInputSettings;->startTryIt()V
    invoke-static {v3}, Lcom/android/settings/DirectPenInputSettings;->access$600(Lcom/android/settings/DirectPenInputSettings;)V

    goto :goto_2
.end method
